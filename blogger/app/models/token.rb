class Token < ActiveRecord::Base
	before_create :set_token

	def set_token
		self.access = SecureRandom.base64(15).tr('+/=lIO0', 'abc123')
		self.secret = SecureRandom.base64(20)
	end

	def self.validate(access, secret)
		where(:access => access, :secret => secret).first.present?
	end

end
