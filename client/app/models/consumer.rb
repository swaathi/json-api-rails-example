class Consumer < ActiveRecord::Base

	def self.source
		YAML.load_file("#{Rails.root}/config/blogs.yml")
	end

	def self.options
		options = {
	      body: {
	        	access: Consumer.source["access"],
	        	secret: Consumer.source["secret"]
	        }
	    }
	end

	def self.authenticated?
		Consumer.source["access"] != "UNASSIGNED" && Consumer.source["secret"] != "UNASSIGNED"
	end

    def self.fetch
	    if Consumer.authenticated?
	    	HTTParty.get("http://localhost:3000/blogs.json", Consumer.options)
	    else
	    	nil.to_a
	    end
    end

    def self.fetch_blog(id)
    	if Consumer.authenticated?
    		HTTParty.get("http://localhost:3000/blogs/#{id}.json", Consumer.options)
    	else
    		nil.to_a
    	end
    end
end
