class Account < ActiveRecord::Base
  has_many :pages, :dependent => :nullify
end
