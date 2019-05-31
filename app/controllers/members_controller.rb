class MembersController < ApplicationController
  def index
    @members = Member.all.order(created_at: :desc)
  end

  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to root_path }
      else
        render "new"
      end
    end
  end

  def edit
    @member = find_member
  end

  def update
    @member = find_member
    
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to root_path }
      else
        render "edit"
      end
    end
  end

  def destroy
    @member = find_member
    @member.destroy
    respond_to do |format|
      format.js
    end
  end

  private
  def member_params
    params.require(:member).permit(:name, :birth_date, :mobile)
  end

  def find_member
    Member.find(params[:id])
  end
end
