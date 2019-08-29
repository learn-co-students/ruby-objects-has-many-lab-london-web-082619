class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post(post) #taken instance of post as an argument
        # assign post to instance author
        post.author = self
    end

    def add_post_by_title(title)
        # create new post 
        new_post = Post.new(title)
        # assign post to instance author
        new_post.author = self
    end

    def self.post_count
        Post.all.size
    end
     
end