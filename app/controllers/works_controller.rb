class WorksController < ApplicationController
  def index
    #모든작품을보여준다.
    @works = Work.all
  end

  def new
    @makers = Maker.all
  end

  def create
    # Work 데이터베이스에 만들겠다.
    work = Work.new(
      title: params[:title],
      desc: params[:desc],
      image: params[:image],
      maker_id: params[:maker_id]
    )
    work.save
    redirect_to "/works/#{work.id}"
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    @work.update(
      title: params[:title],
      desc: params[:desc],
      image: params[:image],
      maker_id: params[:maker_id]
    )
    redirect_to "/works/#{@work.id}"
  end

  def destroy
    # 지우고자 하는 글을 지운다.
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end
end
