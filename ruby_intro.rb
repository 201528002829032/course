=begin
   姓名:姚攀
   学号：201528002829032
   学院：计算机与控制学院
   单位：新疆理技术研究所
=end 

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
		 	   max_index=arr.index(sum)
		 	   arr.delete_at(max_index)
		 	   sum+=arr.max
	   end
	   return sum
end

def sum_to_n? arr, n
	   len=arr.length
	   if(len==0&&n==0) then return false end
	
	   i=0
	   while i<len
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
    return "Hello, "+name 
end

def starts_with_consonant? s
	if s.empty? then return false end
	  if (s[0,1]=~/^[aeiou]/||s[0,1]=~/^[AEIOU]/) then return false;		           
		end
    if !(s[0,1]=~/[a-zA-Z]/)
    	return false
    end
		return true; 	
end

def binary_multiple_of_4? s
    if  s=~/^[01]0*1*/ then  
	     s="0b"+s                         #二进制字符串加上0b   
	     s=Integer(s)                     #字符串转为整数
	     if s%4==0 then return true end
	       #是4的倍数返回true  
    end
    return false
end

# Part 3

class BookInStock
=begin
   #构造函数
	  def initialize(i,p)    #异常处理
	    	raise ArgumentError,'price should be more than or equal zero' unless p>=0  
        raise ArgumentError,'ISBN should be a string' unless i.class==String
	  	  @ISBN=i
	  	  @price=p
	  end

	  #设置器方法
	  def setIsbn=(value)
        @ISBN=value
	  end
	  def setPrice=(value)
        @price=value
	  end
	  #访问器方法
	  def printIsbn
	  	  @ISBN
	  end
	  def printPrice
	  	  @price
	  end
	
	  #实例方法
	  def price_as_string
      @price="$"+format("%0.2f",@price).to_s
	  end
=end
 def initialize(isbn,price)
		raise ArgumentError if isbn.empty? || price <= 0	
		@isbn=isbn
		@price=price
	end#初始化方法结束
	
	def price_as_string
		format("$%.2f",@price)
	end#方法结束
	
	attr_accessor:isbn
	attr_accessor:price
end




