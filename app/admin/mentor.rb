ActiveAdmin.register Mentor do

 index do
    selectable_column
    column :name
    column :lastname
    column :age
    column :email
    column :description
    column :business
    actions
  end
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
   permit_params :list, :of, :attributes, :on, :mentor, :name, :lastname, :age, :description, :email, :business, :facebook, :twitter, :instagram

end
