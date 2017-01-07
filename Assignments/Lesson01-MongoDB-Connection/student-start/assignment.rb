require 'pp'

class Solution
  @@db = nil
  
  #Implement a class method in the `Solution` class called `mongo_client` that will 
  def self.mongo_client
    #create a `Mongo::Client` connection to the server using a URL (.e.g., 'mongodb://localhost:27017')
    #configure the client to use the `test` database
    #assign the client to @@db class variable and return that client
    
  end

  #Implement a class method in the `Solution` class called `collection` that will
  def self.collection
    #return the `zips` collection
    
  end

  #Implement an instance method in the `Solution` class called `sample` that will
  def sample
    #return a single document from the `zips` collection from the database. 
    #This does not have to be random. It can be first, last, or any other document in the collection.

  end
end

#byebug
db=Solution.mongo_client
p db
zips=Solution.collection
p zips
s=Solution.new
pp s.sample
