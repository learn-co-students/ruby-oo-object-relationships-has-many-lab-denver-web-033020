class Author
    attr_accessor :name, :posts
    @@authors = []

    def initialize(name)
        @name = name
        @posts = []
        @@authors << self
    end

    def add_post(post)
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        @posts << post
    end

    def self.post_count
        count = 0
        @@authors.each do |author|
            author.posts.each do |post|
                count += 1
            end
        end
        count
    end

end