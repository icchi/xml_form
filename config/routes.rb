XmlForm::Application.routes.draw do
  root :to=>"xml_form#index"
  get "xml_form/index"
  post "xml_form/forming_xml"
end
