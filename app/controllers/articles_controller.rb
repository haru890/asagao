class ArticlesController < ApplicationController
  before_action :login_required, except: [:index, :show]

  # 記事一覧
  def index
    @articles = Article.order(released_at: :desc)
  end

  # 記事詳細
  def show
    @article = articles.find(params[:id])
  end

  # 新規登録フォーム
  def new
    @article = Article.new
  end

  # 編集フォーム
  def edit
    @article = Article.find(params[:id])
  end

end
