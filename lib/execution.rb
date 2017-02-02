def my_min(arr)
  arr.each do |el1|
    el1_smaller = true

    arr.each do |el2|
      next if el1 == el2
      el1_smaller = false unless el1 < el2
    end

    return el1 if el1_smaller
  end
end
