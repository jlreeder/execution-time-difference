# Time complexity is quadratic O(n**2) since it loops twice through n
def my_min_quad(arr)
  arr.each do |el1|
    el1_smaller = true

    arr.each do |el2|
      next if el1 == el2
      el1_smaller = false unless el1 < el2
    end

    return el1 if el1_smaller
  end
end

# Time complexity is linear O(n) since it loops once through n
def my_min_linear(arr)
  min = 0
  arr.each { |el| min = el if el < min }
  min
end
