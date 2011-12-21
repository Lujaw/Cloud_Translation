class HomeController < ApplicationController
  def index
    @works = current_requestor.tasks

    respond_to do |format|
      format.html # index.html.erb
    end

  end

  def select_login
    if requestor_signed_in?
      redirect_to root_url+'/requestor/'+requestor_client.id.to_s+'/tasks/'
    elsif worker_signed_in?
      redirect_to root_url+'/workers/'+current_client.id.to_s+'/tasks/'
    else
      redirect to root_path
    end
  end
end
