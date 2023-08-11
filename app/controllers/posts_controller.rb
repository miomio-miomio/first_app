# class PostsController < ApplicationController

#   def index  # indexアクションを定義した
#     @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
#   end
 
#  end


# class PostsController < ApplicationController
#   def index
#     @posts = Post.all  # すべてのレコードを@postsに代入
#   end
# end



class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
