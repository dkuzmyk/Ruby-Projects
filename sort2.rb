def sort(arr)
  mid = arr.length/2
  firstPart = sort(arr.slice(0, mid))
  secondPart = sort(arr.slice(mid, arr.length))
  #print firstPart
  #print secondPart
end

somearray = [1,3,6,2,6,234,6,25,293,59,2395,2,359,235,92,3,59,25,2,23,5,32,59,23,59]
print sort(somearray)
