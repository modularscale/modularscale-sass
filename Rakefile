namespace :sass do

  desc "Converts the Sass to SCSS"
  task :convert do
    puts "*** Converting Sass to SCSS ***"
    system "sass-convert stylesheets/*.sass stylesheets/*.scss"
    system "sass-convert test/sass/*.sass test/sass/*.scss"
  end

end