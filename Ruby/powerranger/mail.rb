module Send

	def deliver
		puts "Message sent"
	end
	def return
		puts "Message not sent"
	end

	def send_mail
		puts "Message sent successfully"
	end

	def sent_date
	date = Time.new.strftime("%A: %Y-%m-%d")
  time = Time.now
  puts "Your message was sent on #{date} at #{time}"
	end	
end

class Email
	include Send

	def initialize(recipient_name, recipient_address, subject, message)
		@recipient_name = recipient_name
		@recipient_address = recipient_address
		@subject = subject
		@message = message

	end
end

class PreferredEmail < Email
	include Send
end

class SnailMail < Email
	end

class SMS < Email
	include Send
end

preferred = PreferredEmail.new("Abiola", "me@maadan.com", "Holla", "Just want to say hi")
puts preferred.sent_date
snail = SnailMail.new("Blexter", "218 MD 23489", "Goodday", "Hope you are doing great! Just want to say hi")
puts snail.send_mail
