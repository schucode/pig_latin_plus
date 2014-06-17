require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/translate' do #recieve get request 
  erb :translate
end

post '/translate' do # receive post request
  puts params
  @word = params[:word]
  @translation = PigLatin.translate(@word)
  erb :result
end






# Have a form with a text box that takes the word to be 
# translated 

# Send a POST request with the inputted word back to our server

# In the server's POST request handler, your code should convert 
# the submitted word into Pig Latin and then display it in a new 
# view.

# Early in the lesson, we set up our first view: translate.erb, 
# that consisted of a simple form with a single input: the word 
# to be translated into Pig Latin.

# We also set up result.erb which we just filled in with placeholder 
# text. Now that we've completed our PigLatinConverter class, it's 
# time to make things actually work.

# Open up app.rb, and add require 'pig_latin' to the top of the file 
# so we can access our PigLatin module from our gem.

# Inside your post '/translate' route, use your PigLatin gem to 
# translate the user's submitted word into pig latin and store it 
# in an instance variable.

# Lastly, display the value of the instance variable you just 
# made in your browser.