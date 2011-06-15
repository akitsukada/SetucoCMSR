# -*- coding:UTF-8 -*-
class Admin::PagesController < AdminSharedController

  def index
    subtitle :name => "ページの編集・削除"
    @pages = Page.order('created_datetime desc').page(params[:page]).per(10)
    @categories = Category.all
    @accounts = Account.all
    add_js 'admin/page'
  end

  def new
    init_wysiwyg_editor
    subtitle :name => "ページの新規作成"
    @page = Page.new
    @categories = Category.all
    render 'edit_page'
  end

  def create
    begin
      Page.transaction do
        page = params[:admin_page]
        tags = page.delete(:tags).split(",")
        tagids = Tag.ids_by_name(tags)
        @page = Page.new(page)
        @page.published = params[:open] ? true : false
        @page.tag_ids = tagids
        @page.account_id = current_account.id
        @page.save!
      end
      redirect_to "/admin/pages/#{@page.id}/edit", :notice => t('page.submit.created')
    rescue => e
      redirect_to :new_admin_page, :alert => e.message
    end
  end

  def edit
    @page = Page.find(params[:id])
    init_wysiwyg_editor
    @section_title = "「#{@page.title}#{"（" + t('page.published.draft')+ "）" if !@page.published}」の編集"
    subtitle [
      { :name => "ページの編集・削除", :controller => 'pages', :action => 'index' },
      { :name => @section_title },
    ]
    @categories = Category.all
    render 'edit_page'
  end

  def update
    begin
      Page.transaction do
        page = params[:admin_page]
        tags = page.delete(:tags).split(",")
        tagids = Tag.ids_by_name(tags)
        @page = Page.find(params[:id])
        @page.attributes = page
        @page.published = params[:open] ? true : false
        @page.tag_ids = tagids
        @page.save!
      end
      redirect_to "/admin/pages/#{@page.id}/edit", :notice => t('page.submit.updated')
    rescue => e
      redirect_to "/admin/pages/#{@page.id}/edit", :alert => e.message
    end
  end

  def destroy
  end

  private
  def init_wysiwyg_editor
    add_js ['jquery.cleditor.js','admin/page.js']
    add_css 'jquery.cleditor.css'
  end


end
