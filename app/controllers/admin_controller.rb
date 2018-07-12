class AdminController < ApplicationController
    before_action :check_admin
    
    def users
        @users = User.all
    end
    
    def change
        # 해당하는 유저의 역할을 바꾼다.
       # 1. 만약에 관리자면 -> 양민
       # 2. 아니면 -> 관리자
       user = User.find(params[:id])
       if user.is_admin?
           user.update(
            is_admin?: false    
           )
       else
           user.update(
            is_admin?: true    
           )
       end
       redirect_to '/admin/users'
    end
    
    def check_admin
        unless current_user.is_admin?
            flash[:alert] ="양민은 들어올 수 없습니다."
            redirect_to '/'
        end
    end
end
