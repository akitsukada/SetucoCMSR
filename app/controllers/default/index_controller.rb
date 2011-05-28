class Default::IndexController < DefaultParentController

  private
  def set_subtitle(subtitle)
    @subtitle = subtitle + " | "
  end
end
