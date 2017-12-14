50.times do |i| # 100回繰り返す
  Product.seed_once(:id) do |product|
    product.id = i + 1 # idがずれていくように指定する
    product.title = "#{i + 1}番目の野菜"
    product.price = (i + 1) * 100
    product.description = "#{i + 1}は、おすすめです。"
    product.image = Rails.root.join("public/images/tomato.jpg").open
    product.is_available = ((i + 1) % 7 != 0)
    product.category_id =rand(1..4)	
 end
end