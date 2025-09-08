# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i
  chosen_index = order_number - 1
  puts "#{menus[chosen_index][:name]}(#{menus[chosen_index][:price]}円)ですね。"
  chosen_index
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
ordered_drinks = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
ordered_foods = take_order(FOODS)

total = DRINKS[ordered_drinks][:price].to_i + FOODS[ordered_foods][:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"
