# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'

class User

    attr_reader :name
    # attr_accessor :photos

    def initialize(name_arg)
        @name = name_arg
    end

    def photos
        Photo.all.select do |each_photo|
            each_photo.user == self



#########working process###############

        end
    end

end

class Photo
    attr_accessor :user
@@all = []
    def initialize
        @user = nil
        @@all<<self
    end

    def self.all
        @@all
    end

end



class Comment
end


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"


sophie.photos
#=> [#<Photo:0x00007fae2880b370>]
binding.pry
0

# sandwich_photo.comments
# # => []

# sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# sandwich_photo.comments
# # => [#<Comment:0x00007fae28043700>]

# Comment.all
# #=> [#<Comment:0x00007fae28043700>]
