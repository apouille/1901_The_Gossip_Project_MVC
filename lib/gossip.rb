Èclass Gossip
	attr_reader :author, :content

	def initialize(author, content)
		@content = content
		@author = author
	end 

	def save
		CSV.open("db/gossip.csv", "a+") do |csv|
			csv << [@author, @content]
		end
	end

	def self.all
		all_gossips = []
		
		CSV.foreach("db/gossip.csv") do |row|
			all_gossips << Gossip.new(row[0],row[1])
		end
		return all_gossips
	end

end
