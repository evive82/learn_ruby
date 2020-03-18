#write your code here
def add x, y 
  return x + y 
end

def subtract x, y
  return x - y
end

def sum array
  if array.length < 1
    return 0
  elsif array.length < 2
    return array[0]
  else
    sum = 0
    array.each do |i|
      sum += i
    end
    return sum
  end
end

def multiply x, y
  num1 = x
  num2 = y
  if num1.is_a?(Array)
    prev_num = 1
    num1.each do |i|
      prev_num *= i
    end
    num1 = prev_num
  end
  if num2.is_a?(Array)
    prev_num = 1
    num2.each do |i|
      prev_num *= i
    end
    num2 = prev_num
  end
  return num1 * num2
end

def power x, y
  return x ** y
end

def factorial x
  if x < 2
    return 1
  else
    step = x - 1
    product = x
    while step > 0
      product *= step
      step -= 1
    end
    return product
  end
end