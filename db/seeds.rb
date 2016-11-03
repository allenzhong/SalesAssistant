# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.new
admin.email = 'zhong.allen@gmail.com'
admin.password = 'v8PGHyYca7imK7sj'
admin.password_confirmation = 'v8PGHyYca7imK7sj'
admin.save!

Product.create!([
  {
    user: admin,
    name: "Healtheries 贺寿利高钙牛奶片 香蕉味210g",
    price: "1.99",
    weight: "260",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/0/1/01191981.jpg",
    description: "保质期到2016年12月"
  },
  {
    user: admin,
    name: "Nordic Naturals挪威小鱼 宝宝DHA 60ml",
    price: "29.90",
    weight: "185",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/0/1/01181807.jpg",
    description: ""
  },
  {
    user: admin,
    name: "Nutralife纽乐脂溶性维生素C 500mg 120粒",
    price: "22.99",
    weight: "300",
    image_url: "",
    description: "富含酯化C 取自天然草本 促进细胞吸收 提高维C在人体内的吸收率及持有率"
  },
  {
    user: admin,
    name: "Nutralife纽乐藤黄果体重管理胶囊60粒",
    price: "20.5",
    weight: "200",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/g/a/garcinia-cambogia-2700-831_copy.jpg",
    description: "纯天然提取物，抑制脂肪的合成，促进脂肪酸的燃烧"
  },
  {
    user: admin,
    name: "Nutralife纽乐叶绿素+姜黄素30粒",
    price: "18",
    weight: "150",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/n/u/nutra-life-turmeric-meriva-curcumin-550-nltur_1.jpg",
    description: "纯天然提取 抗氧化 抗衰老"
  },
  {
    user: admin,
    name: "Healtheries 贺寿利香浓高钙奶片 草莓味50片",
    price: "10",
    weight: "300",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/o/r/original_cw_7.jpg",
    description: "奶味香醇，高钙含量，口感浓郁"
  },
  {
    user: admin,
    name: "Healtheries 贺寿利香浓高钙奶片 香草味50片",
    price: "10",
    weight: "300",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/o/r/original_cw_1__3.jpg",
    description: "奶味香醇，高钙含量，口感浓郁"
  },
  {
    user: admin,
    name: "Nutralife纽乐高含量关节灵胶囊一天一粒 60粒",
    price: "20.99",
    weight: "300",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/0/1/01030394.jpg",
    description: "关节灵适用于骨关节炎和风湿性关节炎，风湿，青少年关节炎，复合关节炎，单纯关节炎。葡萄糖胺及软骨素可帮助恢复及加强结缔组织结构像韧带，软骨，腱，关节并可能作为天然止痛剂适用。腱损伤，韧带损伤，运动损伤。粘液囊炎，关节炎症和肿胀，脂肪团（胶原质损伤），胶原质退化。葡萄糖胺及软骨素可形成构筑胶原质及接替组织的基本元素"
  },
  {
    user: admin,
    name: "Nutralife纽乐高钙奶片60片",
    price: "18.99",
    weight: "300",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/0/1/01030389.jpg",
    description: "奶味香醇，高钙含量，口感浓郁"
  },
  {
    user: admin,
    name: "GO healthy高之源维生素E+辅酶Q10胶囊130粒",
    price: "25.90",
    weight: "160",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/p/r/product_thumb_3.jpg",
    description: "天然维生素E和辅酶Q10为你维持健康、充满活力的皮肤、指甲和头发"
  },
  {
    user: admin,
    name: "Healtheries 贺寿利山羊奶粉 450g*6(包邮)",
    price: "216",
    weight: "6000",
    image_url: "http://healthkiwi.co.nz/media/catalog/product/cache/4/image/265x265/ec914e8240177d12976524b78d5bf563/0/4/04074701.jpg",
    description: "含有丰富的营养 更好吸收"
  }
])

