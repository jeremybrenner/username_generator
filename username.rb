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



def check_privilege (level=0)
	priv_level = ["user", "seller", "manager", "admin"]
	priv_level[level]
end

def generate_username4(first, last, year, priv=0)
	user = generate_username3(first,last,year)
	if priv == 0 then return user end
	check_privilege(priv) + "-" + user
end


def createAlias(user, id)
	return user + "_" + id.to_s
end

def generate_username5(first, last, year)
	users = []
	id = 0
	user = generate_username4(first, last, year)

	unless users.include?(user) 
		then users << user
		return user
	end
end
