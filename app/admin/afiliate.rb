ActiveAdmin.register Afiliate do

  index do
      column "Nombre", :name
      column "Apellido", :lastname
      column "CI", :ci
      column "Correo", :email
      column "Telefono", :phone
      column "Empresa", :business
      actions
  end
  filter :name
  filter :lastname
  filter :ci
  filter :email

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :afiliate, :name, :lastname, :ci, :email, :phone, :business
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
