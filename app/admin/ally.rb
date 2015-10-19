ActiveAdmin.register Ally do
  index do
    column "Image" do |img|
      image_tag img.image.url(:thumb)
    end
    column :name
    column ":url" do |a|
      if a.url.blank?
        content_tag :p, "No URL"
      else
        link_to a.url, a.url
      end
    end
    actions
  end

  form do |f|
    inputs 'Details', :multipart => true do
      input :name
      input :url, :as => :url
      f.input :image, :as => :file

    end
    actions
  end

  filter :name
   permit_params :list, :of, :attributes, :on, :mentor, :name, :url, :image
end
