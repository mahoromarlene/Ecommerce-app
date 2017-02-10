CartedProduct.create!([
  {product_id: nil, order_id: 7, quantity: 9},
  {product_id: 10, order_id: 7, quantity: 4},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 16, order_id: 7, quantity: 5},
  {product_id: 16, order_id: 7, quantity: 4},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 10, order_id: 7, quantity: 8},
  {product_id: 10, order_id: 7, quantity: 8}
])
Category.create!([
  {name: "Laptop"},
  {name: "Cheap"}
])
CategoryProduct.create!([
  {category_id: 1, product_id: 3},
  {category_id: 1, product_id: 16},
  {category_id: 1, product_id: 10},
  {category_id: 2, product_id: 10}
])
Image.create!([
  {url: "http://cdn.mos.cms.futurecdn.net/3b3b891538167be626ae9fcad18f918f.jpg", product_id: 16},
  {url: "https://d2t66p9ub1hqfk.cloudfront.net/media/CACHE/images/products/incase-hardshell-case-for-macbook-pro-13-dots-clear-2/422499fbd5522c41194bab5367ddef68.jpg", product_id: 16},
  {url: "http://www.lenovo.com/images/gallery/main/lenovo-laptop-thinkpad-x1-carbon-touch-Side-13.jpg", product_id: 3},
  {url: "http://www.lenovo.com/images/gallery/main/lenovo-laptop-essential-g580-metal-brown-back-2L.jpg", product_id: 3},
  {url: "http://i.ebayimg.com/00/z/rzYAAOxyZwpSVl7u/$(KGrHqRHJ!4FJR,Zm1BcBSVl7uWVcQ~~_32.JPG", product_id: 10},
  {url: "http://www.nvidia.com/docs/IO/73927/Dell-Studio-14z_large.jpg", product_id: 10}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: nil},
  {user_id: 1, subtotal: "2100.0", tax: "189.0", total: "2289.0", completed: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: false}
])
Product.create!([
  {name: "DELL", price: "300.0", description: "Dell family of laptops, namely, Inspiron, XPS and Alienware, which cater to your home, office and gaming needs, empower you to do smart work", status: nil, supplier_id: 3},
  {name: "Black Lenovo laptop", price: "350.0", description: "Lenovo is among the most popular laptop", status: nil, supplier_id: 2},
  {name: "MacBook", price: "1500.0", description: "The thinest laptop", status: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Apple Wholesaler", email: "applews@gmail.com", phone: "0788568956"},
  {name: "Lenovo Wholesaler", email: "lenovows@gmail.com", phone: "0785124578"},
  {name: "DELL Wholesaler", email: "dellws@gmail.com", phone: "0786435987"}
])
User.create!([
  {name: "Marlene Uwamahoro", email: "uwamahoromarlene@gmail.com", password_digest: "$2a$10$OGVlRkXoxr1GuK4MMSjKkelFuR6REcNiXtmUGJhCaxtVbf9STlcWy"}
])
