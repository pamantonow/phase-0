#Psedocode
#-define a method
#-Create a hash
#-add an item with a quantity to the list
#-add bread with a quantity of 2
#-define another method
#-remove that item from the list
#-change the qiantity of bread to 4
#-print the with some flare
#Def method to change quantity


#Actual code
$list={}
def groceries(grocery,quantity)
  $list[grocery] = quantity
end

def rmgroc(grocery)
	if $list.has_key?(grocery) == false
		puts " item not in list"
	else 
		$list.delete(grocery)
	end
end
 
def change(grocery,quantity)
	$list[grocery] = quantity
end

def show
	print $list
end

groceries("lemonade",2)
groceries("tomatoes",3)
groceries("onions",1)
groceries("icecream",4)
show
rmgroc("lemonade")
show
change("icecream",1)
show
