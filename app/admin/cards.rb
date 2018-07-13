ActiveAdmin.register Card do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form do |f|
		f.inputs do
    	# f.input :character, :as => :select, :member_label => :first_name
		f.input :character, :as => :select, collection: Character.all.map { |a| [a.first_name, a.id] }
		# collection: Author.all.map { |a| [a.name, a.id] }
    	end
    	f.actions
	end

end
