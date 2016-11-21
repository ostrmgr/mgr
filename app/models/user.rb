class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable,  :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  
  acts_as_messageable
  
  def mailboxer_name
    self.id
  end
  
  def mailboxer_email(object)
    self.email
  end
  
end
