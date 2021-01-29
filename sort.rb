
def mergesort(array)
  if array.count <= 1
    # Array of length 1 or less is always sorted
    return array
  end

  # Apply "Divide & Conquer" strategy

  # 1. Divide
  mid = array.count / 2
  part_a = mergesort array.slice(0, mid)
  part_b = mergesort array.slice(mid, array.count - mid)

  # 2. Conquer
  array = []
  offset_a = 0
  offset_b = 0
  while offset_a < part_a.count && offset_b < part_b.count
    a = part_a[offset_a]
    b = part_b[offset_b]

    # Take the smallest of the two, and push it on our array
    if a <= b
      array << a
      offset_a += 1
    else
      array << b
      offset_b += 1
    end
  end

  # There is at least one element left in either part_a or part_b (not both)
  while offset_a < part_a.count
    array << part_a[offset_a]
    offset_a += 1
  end

  while offset_b < part_b.count
    array << part_b[offset_b]
    offset_b += 1
  end

  return array
end

somearray = [1,3,6,2,6,234,6,25,293,59,2395,2,359,235,92,3,59,25,2,235,32,5923,59]
print mergesort(somearray)