require 'rails/generators/active_record'

class GemHelper::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_files
    #rake file that generates the rails app
    template "test.rake", "tasks/test.rake"

    #rails dependent gemfiles
    template "rails40.gemfile", "gemfiles/rails40.gemfile"
    template "rails32.gemfile", "gemfiles/rails32.gemfile"
    
    #rails template
    template "rails_template.rb", "spec/support/rails_template.rb"

  end

end
