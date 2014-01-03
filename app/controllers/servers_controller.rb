class ServersController < ApplicationController
	before_filter :find_id, only: [:show, :edit, :update, :destroy]

	def index
		@servers = Server.order("updated_at desc").paginate(page: params[:page], per_page: 12)
	end

	def show
	end

	def edit
	end

	def new
		@server = Server.new
	end

	def create
		@server = Server.new(params[:server])
		if @server.save
			redirect_to servers_path, notice: "#{@server.title}创建成功！"
		else
			render 'new'
		end
	end

	def update
		if @sever.update_attributes(params[:server])
			redirect_to server_path, notice: "#{@server.title}更新成功！"
		else
			render 'edit'
		end
	end

	def destroy
		@server.destroy
		redirect_to servers_path
	end

	protected

	def find_id
		@server = Server.find(params[:id])
	end
end