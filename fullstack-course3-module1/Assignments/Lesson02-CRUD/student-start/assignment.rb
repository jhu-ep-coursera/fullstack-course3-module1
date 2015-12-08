require 'mongo'
require 'json'
require 'pp'
require 'byebug'
Mongo::Logger.logger.level = ::Logger::INFO
#Mongo::Logger.logger.level = ::Logger::DEBUG

class Solution
  MONGO_URL='mongodb://localhost:27017'
  MONGO_DATABASE='test'
  RACE_COLLECTION='race1'

  # helper function to obtain connection to server and set connection to use specific DB
  # set environment variables MONGO_URL and MONGO_DATABASE to alternate values if not
  # using the default.
  def self.mongo_client
    url=ENV['MONGO_URL'] ||= MONGO_URL
    database=ENV['MONGO_DATABASE'] ||= MONGO_DATABASE 
    db = Mongo::Client.new(url)
    @@db=db.use(database)
  end

  # helper method to obtain collection used to make race results. set environment
  # variable RACE_COLLECTION to alternate value if not using the default.
  def self.collection
    collection=ENV['RACE_COLLECTION'] ||= RACE_COLLECTION
    return mongo_client[collection]
  end
  
  # helper method that will load a file and return a parsed JSON document as a hash
  def self.load_hash(file_path) 
    file=File.read(file_path)
    JSON.parse(file)
  end

  # initialization method to get reference to the collection for instance methods to use
  def initialize
    @coll=self.class.collection
  end

  #
  # Lecture 1: Create
  #

  def clear_collection
    #place solution here
  end

  def load_collection(file_path) 
    #place solution here
  end

  def insert(race_result)
    #place solution here
  end

  #
  # Lecture 2: Find By Prototype
  #

  def all(prototype={})
    #place solution here
  end

  def find_by_name(fname, lname)
    #place solution here
  end

  #
  # Lecture 3: Paging
  #

  def find_group_results(group, offset, limit) 
    #place solution here
  end

  #
  # Lecture 4: Find By Criteria
  #

  def find_between(min, max) 
    #place solution here
  end

  def find_by_letter(letter, offset, limit) 
    #place solution here
  end

  #
  # Lecture 5: Updates
  #
  
  def update_racer(racer)
    #place solution here
  end

  def add_time(number, secs)
    #place solution here
  end

end

s=Solution.new
race1=Solution.collection
