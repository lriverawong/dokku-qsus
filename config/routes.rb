Rails.application.routes.draw do
  # get 'contacts/new'
  #
  # get 'contacts/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'info#new'
  resources 'info', only: [:new, :create], path_names: { new: '' }
  #resources 'contacts', only: [:new, :create], path_names: { new: '' }
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # INFO
  # ['about_us', 'contact_us', 'our_team']
  # ['contact_us'].each do |page|
  #   get page, controller: 'info', action: page
  # end

end
