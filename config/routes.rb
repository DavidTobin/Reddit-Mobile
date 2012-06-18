Reddit::Application.routes.draw do
  get "comments/index"

  get "home/index"

  match "/" => "home#index"
  match '/r/:subreddit/comments/:postid/:slug' => "comments#index"
end
