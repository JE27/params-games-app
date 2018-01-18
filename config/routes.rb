Rails.application.routes.draw do
  get '/namecaps_url' => 'games#namecaps_method'
  get '/name_url' => 'games#name_method'
  get '/guess_url' => 'games#guess_method'
  get '/guess_seg_url/:this_is_a_guess' => 'games#guess_seg_method'
end
