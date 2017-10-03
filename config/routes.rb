Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'info#home'

  # INFO
  # ['about_us', 'contact_us', 'our_team']
  ['contact_us'].each do |page|
    get page, controller: 'info', action: page
  end

end
