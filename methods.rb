#プランを表示する
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(FIRST_PLAN_NUM) do |plan, i|
    puts "#{i}.#{plan[:place]} (#{plan[:price]}円)"
  end
end

#プランを選択する
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (FIRST_PLAN_NUM..LAST_PLAN_NUM).include?(select_plan_num)
    puts "#{FIRST_PLAN_NUM}~#{LAST_PLAN_NUM}の番号を入力して下さい。"
  end
  choose_plan_index = select_plan_num - FIRST_PLAN_NUM
  plans[choose_plan_index]
end

#人数を決定する
def decide_number_of_people(choose_plan)
  puts <<~TEXT
    #{choose_plan[:place]}旅行ですね。
    何名で予約されますか？
    TEXT
    while true
      print "人数を入力 > " 
      number_of_people = gets.to_i
      break if number_of_people >= 1
      puts "1以上入力して下さい。"
    end
  number_of_people
end

#合計料金を計算する
def calculate_charges(choose_plan, number_of_people)
  puts "#{number_of_people}名ですね。"
  total_price = choose_plan[:price] * number_of_people
  if number_of_people >= DISCOUNT_STANDARD_VALUE
    puts "#{DISCOUNT_STANDARD_VALUE}人以上ですので#{(DISCOUNT_RATE*100).floor}%割引となります"
    total_price *= AFTER_DISCOUNT_RATE
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
