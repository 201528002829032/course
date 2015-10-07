# When done, submit this entire file to the autograder.

# Part 1

def sum arr
		 i=0
		 sum=0
		 until i==arr.length do
		 	   sum+=arr[i]
		 	   i=i+1
		 end
		 return  sum
end

def max_2_sum arr
	  i=0
		sum=0
		 if arr.length==0
		 	  sum=0
		 elsif arr.length==1
		 	  sum=arr[0]
		 
		 elsif arr.length==2
		 	   sum=arr[0]+arr[1]	 	  
		 else
		 	   sum=arr.max
		 	   arr.delete(sum)
		 	   sum+=arr.max
	   end
	   return sum
end

def sum_to_n? arr, n
	   len=arr.length
	   if(len==0&&n==0) then return true end
	
	   i=0
	   while i<=len
	   	  j=i+1
	   	  while j<len
	   	  	if(arr[i]+arr[j]==n)  then  return true end
	   	  	j=j+1
	   	  end
	   	  i=i+1
	   end    
	    return false
end

# Part 2

def hello(name)
  return "Hello,"+name;
end

def starts_with_consonant? s
	  if s=~/[aeiou]/
		 	 return false          #以aeiou开始,返回false
		 elsif s=~/[AEIOU]/
		 	 return false          #以AEIOU开始,返回false
		 else                      
		 	 return true           #以辅音开始，返回true
		 end 	
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
   #构造函数
	  def initialize(i,p)    #异常处理
	    	raise ArgumentError,'price should be more than or equal zero' unless p>=0  
        raise ArgumentError,'ISBN should be a string' unless i.class==String
	  	  @isbn,@price=i,p
	  end
	  #访问器方法
	  def printIsbn
	  	  @isbn
	  end
	  def printPrice
	  	  @price
	  end
	  #设置器方法
	  def setIsbn=(value)
        @isbn=value
	  end
	  def setPrice=(value)
        @price=value
	  end
	  #实例方法
	  def price_as_string
      @price="$"+format("%0.2f",@price).to_s
	  end
end


arr1=[1,100,3,4,5]
puts sum arr1
puts max_2_sum arr1
puts sum_to_n? arr1,8
puts hello("yaopan")
puts starts_with_consonant? "dddda"