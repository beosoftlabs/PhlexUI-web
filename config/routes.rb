Rails.application.routes.draw do
  scope 'docs' do
    get 'accordion', to: 'docs#accordion', as: :docs_accordion
    get 'alert', to: 'docs#alert_component', as: :docs_alert # alert is a reserved word for controller action
    get 'button', to: 'docs#button', as: :docs_button
    get 'link', to: 'docs#link', as: :docs_link
    get 'typography', to: 'docs#typography', as: :docs_typography
  end
  root "pages#home"
end
