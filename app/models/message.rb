class Message < ActiveRecord::Base
  validates_presence_of :name, :email, :body
  validates_email_format_of :email
end
