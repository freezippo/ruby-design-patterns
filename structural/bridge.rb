#!/usr/bin/env ruby

# interface
class Material 
	def make
	end
end

class MyMaterial1 < Material
	def make 
		p "make: my material 1"
	end
end

class MyMaterial2 < Material
	def make 
		p "make: my material 2"
	end
end

class Product
	def taste
	end
end


class MyProduct < Product
	def initialize(material)
		@material = material
	end
	def taste
		@material.make
	end
end


material1 = MyMaterial1.new

product1 = MyProduct.new(MyMaterial1.new)
product2 = MyProduct.new(MyMaterial2.new)

product1.taste
product2.taste