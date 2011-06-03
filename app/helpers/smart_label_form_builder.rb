# -*- coding: utf-8 -*-
class SmartLabelFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, content_or_options_with_block = nil, options = {}, &block)
    if !block_given?
      super(method, content_or_options_with_block, options)
    else
      options = content_or_options_with_block.is_a?(Hash) ? content_or_options_with_block.stringify_keys : {}
      @template.content_tag(:label, options, &block)
    end
  end
end
