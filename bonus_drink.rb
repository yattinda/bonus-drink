class BonusDrink
  def self.full_bottle_cal(num)
    #3本飲んで加えられた飲んでいないジュースとと3本セットにならなかった飲んでいないジュース
    return (num % 3) + (num / 3)
  end

  def self.total_count_for(amount)
    #amountよりfull_bottle_remainのほうが分かりやすい
    full_bottle_remain = amount
    total_bottle = 0
    while full_bottle_remain >= 3 do
      #3本セットで飲んだ本数(余り分は飲まない)
      total_bottle = total_bottle + (full_bottle_remain / 3) * 3
      #飲んでない本数
      full_bottle_remain = full_bottle_cal(full_bottle_remain)
    end
    return total_bottle + full_bottle_remain
  end
end
