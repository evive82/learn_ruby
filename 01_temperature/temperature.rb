#write your code here
def ftoc temp
  f = temp.to_f
  c = (f - 32) / 1.8
  return c.round(1)
end

def ctof temp
  c = temp.to_f
  f = (c * 1.8) + 32
  return f.round(1)
end