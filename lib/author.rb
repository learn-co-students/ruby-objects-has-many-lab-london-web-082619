class Author

    attr_accessor :name
    #why does the test for attr_accessor for :name pass if its placed under an attr_reader

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|posts|posts.author == self}
    end
    #this iterates over all the posts and selects all that equate to the author that == self
    #i.e. to the author instance that the method is called on. 

    def add_post(post)
        post.author = self 
    end
    #this method takes an argument of a post, and equates it via .author (calls on the author class)
    #to = self, i.e. the instance that the method is called on. 

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
    #here you are creating a new post via post = Post.new and passing it the 
    #title you specify. Next you are calling .author (a reference to the author class,
    #which requires you to put :author in the attr_acccessor of the Post class) and 
    #assigning author to = self, which as self is called in an instance method defined 
    #within the AUTHOR class, it will set it to whatever instance of AUTHOR it is called on.

    def self.post_count
        Post.all.count
    end
    #this class methos simply calls on the Post class, accesses the @@all array we built that gets
    #all posts added to it upon initialization, and then calls .count on it to return 
    #an integer of how many are in the array (rather than returning the array :))




end
