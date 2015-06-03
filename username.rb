def generate_username1 (firstName)
	firstName[0].downcase
end

def generate_username2 (first,last)
     if first.empty? || last.empty? then return nil end
     first = first.split("").select{|char| char.match(/[aA-zZ]/)}.join
     last = last.split("").select{|char| char.match(/[aA-zZ]/)}.join
     result = first.downcase[0] + last.downcase
end

# takes three arguments, firstname, lastname, year
def generate_username3 (*allArgs)
	year = allArgs[2].to_s
	if year.length != 4 then return nil end
	alphaName = generate_username2(allArgs[0],allArgs[1])
	return alphaName + year[-2..-1]
end

priv_level = ["user", "seller", "manager", "admin"]

def generate_username4(userName, privlage = 0)
	privlage = Hash.new 
end


