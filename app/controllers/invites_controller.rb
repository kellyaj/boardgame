class InvitesController < ApplicationController
  def new
  	@invite = Invite.new
  end

  def create
  	@invite = Invite.new
  	@group = params[:group_id].to_i

  	invited_user = params[:new_invite]
    make_new_invite(invited_user)

    respond_to do |format|
      format.html {
        if @invite.save
        	redirect_to groups_url, notice: "Invite sent"
        	#will want to redirect to dashboard/group#show
        else
      		redirect_to groups_url, notice: "You've already invited that person"
      		#will want to redirect to dashboard/group#show
      	end }
      format.js
    end
  end

  def make_new_invite(invited_user)
    unless invited_user.empty?
      invitee = User.find_by_email(invited_user)
      if invitee.nil?
        #send an email to join the site
      end
      @invite = Invite.create(:user_id => invitee.id, :group_id => @group)
      @invite.save
    end
  end

end
