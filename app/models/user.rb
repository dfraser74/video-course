class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook, :twitter]

	has_many :lesson_progressions

def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  	user.provider = auth.provider
  	user.uid = auth.uid
    user.nickname = auth.info.name   # assuming the user model has a name
    user.email = auth.info.email
  end
end

def self.new_with_session(params, session)
	if session["devise.user_attributes"]
		new(session["devise.user_attributes"], without_protection: true) do |user|
			user.attributes = params
			user.valid?
		end
	else
		super
	end
end

def password_required?
	super && provider.blank?
end

end