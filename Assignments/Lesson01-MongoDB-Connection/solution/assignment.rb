require 'mongo'
require 'pp'
require 'byebug'
#Mongo::Logger.logger.level = ::Logger::INFO
#Mongo::Logger.logger.level = ::Logger::DEBUG

class Solution

  def self.mongo_client
    db=Mongo::Client.new('mongodb://localhost:27017')
    @@db=db.use('test')
  end

  # implement an instance method that returns a reference to the Mongo Collection object
  def self.collection
    return @@db[:zips]
  end

  def sample
    self.class.collection.find.first
  end
end


#byebug
db=Solution.mongo_client
#p db
zips=Solution.collection
#p zips
s=Solution.new
pp s.sample



