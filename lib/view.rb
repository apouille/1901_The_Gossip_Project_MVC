class View

	def create_gossip
		puts "Qui es tu ?"
		print "> "
		content = gets.chomp
		puts "Balance ton gossip"
		print "> "
		author = gets.chomp
		#return params = { content: content, author: author }
		return params = [content, author]
	end

	def index_gossips(gossips)
		puts ""
		puts "------------- "
		puts ""
		
		gossips.each do |gossip|
			puts gossip.content + "  >>  signé par " + gossip.author
		end
		
		puts ""
		puts "------------- "
		puts ""
	end

	def delete_gossips(gossips)
		i = 0
		
		puts ""
		puts "------------- "
		puts ""
		
		gossips.each do |gossip|
			i += 1
			puts "#gossip #{i} >> " + gossip.author + " : " + gossip.content 
			puts ""
		end
		
		puts ""
		puts "------------- "
		puts ""
		
		puts "Donne-moi le numéro du gossip à supprimer"
		puts ""
		print "> "
		
		num = gets.chomp.to_i 
		num -= 1
		gossips.delete_at(num)
		
		return gossips

	end

end