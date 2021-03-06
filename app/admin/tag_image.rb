ActiveAdmin.register TagImage do
	menu false

	filter :created_at, label: "创建时间"
	filter :tag, label: "所属类别", as: :select	
	index do
		selectable_column
		column "序号" do |tag|
			link_to tag.id, edit_admin_tag_image_path(tag)
		end
		column "图片" do |tag|
			image_tag(tag.image_url(:small)) if tag.image?
		end
		column "所属类别" do |tag| 
			tag.tag.name
		end
	end

	form partial: 'form'

end
