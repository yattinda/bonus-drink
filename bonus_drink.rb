class BonusDrink
  def self.full_bottle_cal(num)
    #3本飲んで加えられたものと3本セットにならなかったジュース
    return (num % 3) + (num / 3)
  end

  def self.total_count_for(amount)
    #full_bottle_remainよりfull_bottle_remainのほうが分かりやすい
    full_bottle_remain = amount
    total_bottle = 0
    while full_bottle_remain >= 3 do
      #飲んだ本数
      total_bottle = total_bottle + (full_bottle_remain / 3) * 3
      #飲んでない本数
      full_bottle_remain = full_bottle_cal(full_bottle_remain)
    end
    return total_bottle + full_bottle_remain
  end
end

for i in 1..100 do
  puts BonusDrink.total_count_for(i)
end
