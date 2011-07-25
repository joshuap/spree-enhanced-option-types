Product.class_eval do
  has_many :option_types, :through => :product_option_types, :order => "product_option_types.position ASC"

  def default_variant
    variants.first
  end
end
