class Default::IndexController < DefaultParentController
  def index

  end

  private
  def set_subtitle(subtitle)
    @subtitle = subtitle + " | "
  end
end
