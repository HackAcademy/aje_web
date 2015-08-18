ActiveAdmin.register Ally do
index do
  column "Image" do |img|
    image_tag img.image.url(:thumb)
  end
    column :name
    actions
  end

  form do |f|
    inputs 'Details', :multipart => true do
      input :name
      f.input :image, :as => :file

    end
    actions
  end

  filter :name
   permit_params :list, :of, :attributes, :on, :mentor, :name, :image
end
