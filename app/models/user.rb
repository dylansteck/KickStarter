class User < ActiveRecord::Base
	has_one :project
end