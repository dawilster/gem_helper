class GemHelper::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_files
    #rake file that generates the rails app
    copy_file "test.rake", "tasks/test.rake"

    #rails dependent gemfiles
    copy_file "rails40.gemfile", "gemfiles/rails40.gemfile"
    copy_file "rails32.gemfile", "gemfiles/rails32.gemfile"

    #rails template
    copy_file "rails_template.rb", "spec/support/rails_template.rb"


    #rspec files
    copy_file "spec_helper.rb", "spec/spec_helper.rb"
    copy_file ".rspec", ".rspec"

    #delete bin folder
    #remove_dir

    #delete Gemfile and Gemfile.lock
    #now rely on gemfiles under the gemfiles folder

    #alter engine.rb
    #to add rspec and factory_girl as defaults
    # config.generators do |g|
    #   g.test_framework      :rspec,        :fixture => false
    #   g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    #   g.assets false
    #   g.helper false
    # end

    #alter Rakefile
    #import rake tasks
    # FileList['tasks/**/*.rake'].each { |task| import task }

    #somehow add rspec-rails, factory and capybara as development depenencies

    puts "you can now run rspec spec"
  end
end
