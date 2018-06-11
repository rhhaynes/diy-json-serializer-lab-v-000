class ProductSerializer
  def self.serialize(product)
    json_str = '{'
    json_str += '"id": '           + "#{product.id}"        +  ', '
    json_str += '"name": "'        + product.name           + '", '
    json_str += '"description": "' + product.description    + '", '
    json_str += '"price": "'       + "#{product.price}"     + '", '
    json_str += '"inventory": '    + "#{product.inventory}"
    json_str += '}'
  end
end
