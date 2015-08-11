require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing..."
		@client = JumpstartAuth.twitter
	end

	def tweet(message)

		if message.length < 141
			@client.update(message)
		else
			puts "Too long, must be 140 characters or less"
		end

	end

	def dm(target, message)
		screen_names = followers_list
		puts "Trying to send #{target} this direct message:"
		puts message

		if screen_names.include? target
			message = "d @#{target} #{message}"
			tweet(message)
		else
			puts "Sorry you can only DM people who follow you"
		end
	end

	def followers_list
		screen_names = @client.followers.collect { |follower| @client.user(follower).screen_name }
		return screen_names
	end

	def spam_my_followers (message)
		followers = followers_list

		followers.length.times do |i|
			dm(followers[i], message)				
		end
	end

	def everyones_last_tweet
		friends = @client.friends
		friends.each do |friend|
			last_tweet = @client.user(friend).status.text.to_s
			person = @client.user(friend).name.to_s
			puts "#{person}'s last tweet was"
			puts "#{last_tweet}"
			#puts @client.user(friend).screen_name
			#puts @client.user(friend).status.text
			puts ""
		end
	end


	def run
		puts "Welcome to the JSL Twitter Client!"
		command = ""
		while command != "q"
			printf "enter command: "
			input = gets.chomp
			parts = input.split(" ")
			command = parts[0]

			case command
				when 'q' then puts "Goodbye!"
				when 't' then tweet(parts[1..-1].join(" "))
				when 'dm' then dm(parts[1], parts[2..-1].join(" "))
				when 'spam' then spam_my_followers(parts[1..-1].join(" "))
				when 'elt' then everyones_last_tweet
				else
					puts "Sorry, I don't know how to #{command}" 
			end

		end
	end

end

blogger = MicroBlogger.new
blogger.run