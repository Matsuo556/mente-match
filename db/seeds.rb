User.create(nickname: 'サンプル１', email: 'sample1@sample1', password: 'sample1', last_name: '山田', first_name: '太郎', last_name_kana: 'ヤマダ', first_name_kana: 'タロウ', phone_number: '09012345678')
User.create(nickname: 'サンプル２', email: 'sample2@sample2', password: 'sample2', last_name: '鈴木', first_name: '一郎', last_name_kana: 'スズキ', first_name_kana: 'イチロウ', phone_number: '08098765432')
User.create(nickname: 'サンプル３', email: 'sample3@sample3', password: 'sample3', last_name: '佐藤', first_name: '二郎', last_name_kana: 'サトウ', first_name_kana: 'ジロウ', phone_number: '07023456789')


BizUser.create(name: '栃木自動車', email: 'biz@biz', password: 'tochigi', postal_code: '123-4567', prefecture: '栃木県', city: '宇都宮市', address: '川向町1-1-1', building: '宇都宮駅ビル', phone_number: '09000000000')
BizUser.create(name: '茨城自動車', email: 'biz1@biz1', password: 'ibaraki', postal_code: '234-5678', prefecture: '茨城県', city: '水戸市', address: '水戸町1-1-1', building: '水戸駅ビル', phone_number: '08012345678')
BizUser.create(name: '群馬自動車', email: 'biz2@biz2', password: 'gunma1', postal_code: '345-6789', prefecture: '群馬県', city: '前橋市', address: '前橋町1-1-1', building: '前橋駅ビル', phone_number: '09098765432')

#  BizUser.find_or_create_by(id: 1) do |biz_user|
#   biz_user.email = "example@example.com"
#   biz_user.password = "example"
#  end


# UserPost.create(requested_at: '2022-04-05 10:00', menu_id: 2, comment: 'タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着', user_id: 1)
# UserPost.create(requested_at: '2022-05-10 12:00', menu_id: 7, comment: 'バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換', user_id: 1)
# UserPost.create(requested_at: '2022-06-15 15:00', menu_id: 9, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-07-15 15:00', menu_id: 3, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
# UserPost.create(requested_at: '2022-08-15 15:00', menu_id: 4, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 1)
# UserPost.create(requested_at: '2022-09-15 15:00', menu_id: 5, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-10-15 15:00', menu_id: 6, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
# UserPost.create(requested_at: '2022-11-15 15:00', menu_id: 7, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 1)
# UserPost.create(requested_at: '2022-12-15 15:00', menu_id: 8, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-01-15 15:00', menu_id: 9, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
# UserPost.create(requested_at: '2022-02-05 10:00', menu_id: 2, comment: 'タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着タイヤ脱着', user_id: 1)
# UserPost.create(requested_at: '2022-03-10 12:00', menu_id: 7, comment: 'バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換バッテリー交換', user_id: 1)
# UserPost.create(requested_at: '2022-04-15 15:00', menu_id: 9, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-05-15 15:00', menu_id: 3, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
# UserPost.create(requested_at: '2022-06-15 15:00', menu_id: 4, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 1)
# UserPost.create(requested_at: '2022-07-15 15:00', menu_id: 5, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-08-15 15:00', menu_id: 6, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
# UserPost.create(requested_at: '2022-09-15 15:00', menu_id: 7, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 1)
# UserPost.create(requested_at: '2022-10-15 15:00', menu_id: 8, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 2)
# UserPost.create(requested_at: '2022-11-15 15:00', menu_id: 9, comment: '車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検車検', user_id: 3)
