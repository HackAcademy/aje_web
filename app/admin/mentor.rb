ActiveAdmin.register Mentor do

 index do
    column "Image" do |img|
      image_tag img.avatar.url(:thumb)
    end
    column :name
    column :lastname
    column :age
    column :email
    column :business
    actions
  end

  form do |f|
    inputs 'Details', :multipart => true do
      input :name
      input :lastname
      input :age, :as => :number
      input :email, :as => :email
      input :description
      input :business
      input :facebook, :as => :url
      input :twitter, :as => :url
      input :instagram, :as => :url

      f.input :avatar, :as => :file

    end
    actions
  end

  filter :name
  filter :lastname
  filter :email
  filter :business
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
   permit_params :list, :of, :attributes, :on, :mentor, :name, :lastname, :age, :description, :email, :business, :facebook, :twitter, :instagram, :avatar

end
