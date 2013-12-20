Spree::Variant.class_eval do
  after_create :set_weight_and_price_from_option_values

  protected

  def set_weight_and_price_from_option_values
    option_values.each do |ov|
      self.weight = ov.weight if ov.weight
      self.price = eval("#{self.price} #{ov.price_modifier}") unless (price.nil? || ov.price_modifier.nil?)
      self.price = self.price.round if ov.round_price
    end
    save
  end
end

