class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_post(post)
        #associates that post with the author by telling the 
        #post that it belongs to that author
        post.author = self
    end

    def add_post_by_title(title)
        #creates a new post with it and associates the post and author
        post = Post.new(title)
        add_post(post) 
    end

    def posts
        Post.all.select{ |post| post.author == self }
    end

    def self.post_count
        #returns total number of posts asoociated with all authors
        Post.all.length
    end

end