Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index' #to jest metoda, ktora odwoluje sie do metody index, jest przerabiane na odpowiednia klase, wszystko jest w dokumentacji railsow. To jest odwolanie do controllera

  get 'articles', to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end