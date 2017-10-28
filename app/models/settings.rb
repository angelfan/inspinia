class Settings < Settingslogic
  source Rails.root.join('config/application', 'application.yml')
  namespace Rails.env
end
