ActiveAdmin.register Picture, as: 'ProductPicture' do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :image, :imageable_id, :imageable_type
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :imageable_id, :imageable_type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form partial: 'form'

  show do
    attributes_table do
      row :imageable
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end

end
