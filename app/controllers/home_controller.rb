class HomeController < ApplicationController
  def index
     @postsAll = Content.last.content.length # 모든 글자수 공백포함
     @wordAll =  Content.last.content.length -  Content.last.content.count(' ')# 모든 글자수 공백 미포함
     @word =      Content.last.content.split(' ').length # 단어수
     
  end
  def count
    
    new_post = Content.new 
    new_post.content = params[:content]   
     new_post.save
     redirect_to :back

  end
  
end
