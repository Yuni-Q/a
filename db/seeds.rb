# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 관리자 계정
admin_user = User.create(name: '관리자', email: 'zyro@gmail.com', password: 'asdasd',agreement: "true", information: "true", point: 1000, donation_point: 10000)#, confirmed_at: Time.now, confirmation_sent_at: Time.now)
admin_user.add_role :admin

# Post 유형
Classification.create!(category: '배송') #1
Post.create!(title: "배송", content: "배송문제", classification_id: 1)
Classification.create!(category: '주문/결제') #2
Post.create!(title: "주문/결제", content: "주문/결제문제", classification_id: 2)
Classification.create!(category: '취소/환불') #3
Post.create!(title: "취소/환불", content: "취소/환불문제", classification_id: 3)
Classification.create!(category: '회원정보') #4
Post.create!(title: "회원정보", content: "회원정보문제", classification_id: 4)
Classification.create!(category: '이용방법') #5
Post.create!(title: "이용방법", content: "이용방법문제", classification_id: 5)
Classification.create!(category: '기타') #6
Post.create!(title: "기타", content: "기타", classification_id: 6)

# 카테고리 분류
Categorie1.create!(content: '육류 (고기)')
Categorie2.create!(content: '돼지고기', categorie1_id: 1)
Categorie3.create!(content: '삼겹살', categorie2_id: 1) #1
Categorie3.create!(content: '등심', categorie2_id: 1) #2
Categorie3.create!(content: '갈매기살', categorie2_id: 1) #3

Categorie2.create!(content: '소고기', categorie1_id: 1)
Categorie3.create!(content: '-', categorie2_id: 2) #4

Categorie2.create!(content: '닭고기', categorie1_id: 1) 
Categorie3.create!(content: '생닭', categorie2_id: 3) #5
Categorie3.create!(content: '닭가슴살', categorie2_id: 3) #6
Categorie3.create!(content: '달다리살', categorie2_id: 3) #7
Categorie3.create!(content: '닭날개', categorie2_id: 3) #8
Categorie3.create!(content: '닭안심', categorie2_id: 3) #9

Categorie2.create!(content: '기타', categorie1_id: 1)
Categorie3.create!(content: '캥거루 장각살', categorie2_id: 4) #10
Categorie3.create!(content: '캥거루 꼬리', categorie2_id: 4) #11
Categorie3.create!(content: '캥거루 갈비', categorie2_id: 4) #12


Categorie1.create!(content: '곡류')
Categorie2.create!(content: '곡류', categorie1_id: 2) 
Categorie3.create!(content: '백미', categorie2_id: 5) #13
Categorie3.create!(content: '흑미', categorie2_id: 5) #14
Categorie3.create!(content: '찹살', categorie2_id: 5) #15
Categorie3.create!(content: '렌틸콩', categorie2_id: 5) #16
Categorie3.create!(content: '이집트콩', categorie2_id: 5) #17


Categorie1.create!(content: '채소/야채')
Categorie2.create!(content: '일반 채소', categorie1_id: 3)
Categorie3.create!(content: '감자', categorie2_id: 6) #18
Categorie3.create!(content: '당근', categorie2_id: 6) #19
Categorie3.create!(content: '양파', categorie2_id: 6) #20
Categorie3.create!(content: '대파', categorie2_id: 6) #21
Categorie3.create!(content: '버섯', categorie2_id: 6) #22
Categorie3.create!(content: '고추', categorie2_id: 6) #23
Categorie3.create!(content: '오이', categorie2_id: 6) #24
Categorie3.create!(content: '쪽파', categorie2_id: 6) #25
Categorie3.create!(content: '양배추', categorie2_id: 6) #26
Categorie3.create!(content: '시금치', categorie2_id: 6) #27
Categorie3.create!(content: '고구마', categorie2_id: 6) #28
Categorie3.create!(content: '콩나물', categorie2_id: 6) #29
Categorie3.create!(content: '콜라비', categorie2_id: 6) #30
Categorie3.create!(content: '애호박', categorie2_id: 6) #31
Categorie3.create!(content: '파프리카', categorie2_id: 6) #32

Categorie2.create!(content: '패키징', categorie1_id: 3)
Categorie3.create!(content: '찌개용 손질채소 팩', categorie2_id: 7) #33
Categorie3.create!(content: '큐브형 다진채소 팩', categorie2_id: 7) #34
Categorie3.create!(content: '모듬 쌈 채소 팩', categorie2_id: 7) #35
Categorie3.create!(content: '볶음용 손질채소 팩', categorie2_id: 7) #36
Categorie3.create!(content: '비빔밥 새싹 팩', categorie2_id: 7) #37
Categorie3.create!(content: '샐러리 스틱 팩', categorie2_id: 7) #38


Categorie1.create!(content: '면/가루/소스/장류')
Categorie2.create!(content: '면류', categorie1_id: 4)
Categorie3.create!(content: '파스타면', categorie2_id: 8) #39
Categorie3.create!(content: '국수면', categorie2_id: 8) #40
Categorie3.create!(content: '사리면', categorie2_id: 8) #41

Categorie2.create!(content: '가루믹스', categorie1_id: 4)
Categorie3.create!(content: '팬케이크', categorie2_id: 9) #42
Categorie3.create!(content: '부침가루', categorie2_id: 9) #43
Categorie3.create!(content: '튀김가루', categorie2_id: 9) #44
Categorie3.create!(content: '밀가루', categorie2_id: 9) #45

Categorie2.create!(content: '장류', categorie1_id: 4)
Categorie3.create!(content: '고추장', categorie2_id: 10) #46
Categorie3.create!(content: '된장', categorie2_id: 10) #47
Categorie3.create!(content: '쌈장', categorie2_id: 10) #48
Categorie3.create!(content: '초고추장', categorie2_id: 10) #49
Categorie3.create!(content: '간장', categorie2_id: 10) #50
Categorie3.create!(content: '비빔국수장', categorie2_id: 10) #51
Categorie3.create!(content: '식초', categorie2_id: 10) #52
Categorie3.create!(content: '케찹', categorie2_id: 10) #53
Categorie3.create!(content: '머스타드', categorie2_id: 10) #54

Categorie2.create!(content: '가루', categorie1_id: 4)
Categorie3.create!(content: '설탕', categorie2_id: 11) #55
Categorie3.create!(content: '소금', categorie2_id: 11) #56
Categorie3.create!(content: '후추', categorie2_id: 11) #57
Categorie3.create!(content: '고추가루', categorie2_id: 11) #58
Categorie3.create!(content: '카레가루', categorie2_id: 11) #59

Categorie2.create!(content: '오일류', categorie1_id: 4)
Categorie3.create!(content: '식용유', categorie2_id: 12) #60
Categorie3.create!(content: '올리브유', categorie2_id: 12) #61
Categorie3.create!(content: '카놀라유', categorie2_id: 12) #62
Categorie3.create!(content: '포도씨유', categorie2_id: 12) #63
Categorie3.create!(content: '참기름', categorie2_id: 12) #64

# # 제품
Product.create!(img: 'http://image.chosun.com/sitedata/image/201602/04/2016020402855_0.jpg', name: '1 상품', price: 4000, weight: 600, categorie1_id: 1, categorie2_id: 1, categorie3_id: 1, content: '아무말이나')
Product.create!(img: 'http://image.chosun.com/sitedata/image/201602/04/2016020402855_0.jpg', name: '2 상품', price: 5000, weight: 600, categorie1_id: 2, categorie2_id: 5, categorie3_id: 13, content: '아무말이나')
Product.create!(img: 'http://image.chosun.com/sitedata/image/201602/04/2016020402855_0.jpg', name: '4 상품', price: 6000, weight: 600, categorie1_id: 3, categorie2_id: 7, categorie3_id: 38, content: '아무말이나')
Product.create!(img: 'http://image.chosun.com/sitedata/image/201602/04/2016020402855_0.jpg', name: '3 상품', price: 6000, weight: 600, categorie1_id: 4, categorie2_id: 12, categorie3_id: 60, content: '아무말이나')

# 1000.times do |i|
# 	Product.create!(img: 'http://image.chosun.com/sitedata/image/201602/04/2016020402855_0.jpg', name: '1 상품', price: 4000, weight: 600, categorie1_id: 1, categorie2_id: 1, categorie3_id: 1, content: '아무말이나')
# end
