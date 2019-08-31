class Author
  attr_accessor :name
  @@all = []
  def initialize(name)
      @name = name
      @posts = []
      @@all << name
  end

  def add_post(post)
      @posts << post
      post.author = self
  end

  def add_post_by_title(title)
      post = Post.new(title)
      post.author = self
      @posts << post
  end

  def posts
      @posts
  end

  def self.post_count
      Post.all.length
  end

end 