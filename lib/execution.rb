require 'byebug'

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

# Time complexity is O(n * n**2) ???
#  - Finding subarrays costs n**2 loops then n more for slicing
#  - Finding sums costs n then n more for inject
#  - Finding max of sums costs 1
def largest_contiguous_subsum(arr)
  sub_arrs = []

  # All subarrays
  arr.length.times do |i|
    arr.length.times do |j|
      slice = arr[i..j]
      sub_arrs << slice unless slice.empty?
    end
  end

  # Sums
  sums = sub_arrs.map { |sub| sub.inject(:+) }
  sums.max
end

def largest_contiguous_subsum2(arr)
  return arr.max if arr.all?(&:negative?)

  best_max = 0
  running_max = 0

  arr.each do |el|
    running_max += el

    if running_max < 0
      running_max = 0
      next
    end

    best_max = running_max if running_max > best_max
  end

  best_max
end
