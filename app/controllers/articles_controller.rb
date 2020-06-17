class ArticlesController < ApplicationController
  before_action :login_required, except: [:index, :show]

  # 記事一覧
  def index
    @articles = Article.order(released_at: :desc)
  end
end