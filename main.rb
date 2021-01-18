#character
class Character
  attr_accessor :name, :hp, :offense, :defense
  def initialize(name:, hp:, offense:, defense:)
    @name = name 
    @hp = hp
    @offense = offense
    @defense = defense
  end
end  

#勇者
class Brave < Character
  def attack(monster)
    puts "#{monster.name}があらわれた！"
    puts "#{name}の攻撃！"
    damege = (offense - monster.defense) / 2
    monster.hp = (monster.hp - damege)
    puts "#{monster.name}に#{damege}のダメージを与えた！"
  end
end

#モンスター
class Monster < Character
  def attack(brave)
    puts "#{name}の攻撃！"
    damege = (offense - brave.defense) / 2
    brave.hp = (brave.hp - damege)
    puts "#{brave.name}は#{damege}のダメージを受けた!"
  end
end

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
brave.attack(monster)
monster.attack(brave)

#ループ処理
while monster.hp > 0
  puts "#{monster.name}に、#{brave.damege}を与えた！"
  monster.hp -= brave.damege
end
puts "#{monster.name}を倒した"

