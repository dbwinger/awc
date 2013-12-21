Spree::Core::Search::Base.class_eval do
  protected

  def get_base_scope
    base_scope = Spree::Product.active.ascend_by_name
    base_scope = base_scope.in_taxon(taxon) unless taxon.blank?
    base_scope = get_products_conditions_for(base_scope, keywords)
    base_scope = add_search_scopes(base_scope)
    base_scope
  end
end

