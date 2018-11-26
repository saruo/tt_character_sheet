# coding: utf-8
=begin
キャラクターシートを管理する。

=end

class Dice
  def self.roll
    rand(6).to_i + 1
  end
end

class CharacterSheet
  # ひとまずこんなのがいるかな、というあたりをそろえていってる。
  def self.create
  end
  def self.load(file_name)
  end

  def roll
    result1 = Dice.roll
    result2 = Dice.roll
    result3 = Dice.roll
    total_result = result1 + result2 + result3
    if( result1 == result2 && result2 == result3 )
      #print "! " + [result1, result2, result3].join(", ")
      return (total_result + roll )
    else
      return total_result
    end
  end

  @@RACES = [:human, :dwarf, :elf, :fairy,
             :hob, # ホブ、ホビット
             :lep # レプラコーン
            ]

  attr_accessor :str, :con, :dex, :spd, :luk, :int, :wiz, :cha
  def initialize(name, race)
    @name = name
    @race = race
    @str = roll
    @con = roll
    @dex = roll
    @spd = roll
    @luk = roll
    @int = roll
    @wiz = roll
    @cha = roll

    apply_race_supplements
  end

  # 種族による補正
  def apply_race_supplements
  end
end

# ドワーフの特色を表す
def Dwarf
end

p CharacterSheet.new("亮", :human)

