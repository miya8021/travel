require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

#定数を設定
FIRST_PLAN_NUM = 101  # 変更可
LAST_PLAN_NUM = (FIRST_PLAN_NUM + plans.size) - 1  #変更不可
DISCOUNT_STANDARD_VALUE = 3  #変更可
DISCOUNT_RATE = 0.5 #変更可
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE  #変更不可

disp_plan(plans)
choose_plan = choose_plan(plans)
number_of_people = decide_number_of_people(choose_plan)
calculate_charges(choose_plan, number_of_people)



