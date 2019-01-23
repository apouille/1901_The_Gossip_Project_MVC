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
end