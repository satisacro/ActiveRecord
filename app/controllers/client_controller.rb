class ClientController < ApplicationController
def index
  @clients = Client.all

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @clients }
  end
end


end
