
class Author
@@all = []
    attr_accessor :name, :posts

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def posts
        Post.all 
    end 

    def self.all
        @@all 
    end 

    def add_post(post)
        post.author = self

    end 
    
    def add_post_by_title(title_name)
        post = Post.new(title_name)
        post.author= self
    end 

    def self.post_count 
        Post.all.length 
    end 


end 
