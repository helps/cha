class User < ActiveRecord::Base
  attr_accessible :userid, :password, :name, :idcard, :sex, :birthday , :email, :address, :tel, :mobile
  set_table_name 'member'
end
