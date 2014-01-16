Spree::Admin::TaxonsController.class_eval do
  before_filter :taxon_permit_parameters, only: [:update]

  private
  def taxon_permit_parameters
    permit_attrs = Spree::Taxon.translated_attribute_names.map{ 
      |name| SpreeMultiLingual.attr_languages.map {|lang| "#{name}_#{lang}".to_sym}}.flatten
    Spree::PermittedAttributes.taxon_attributes.concat(permit_attrs).uniq unless
      permit_attrs.all? {|k| Spree::PermittedAttributes.taxon_attributes.include?(k) }
  end

  def taxon_params
    if params[:taxon] && !params[:taxon].empty?
      params.require(:taxon).permit(permitted_taxon_attributes)
    else
      {}
    end
  end
end
