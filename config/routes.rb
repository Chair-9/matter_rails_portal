Rails.application.routes.draw do

  resources :dashboards, only: :show

  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "admin/dashboards#show", as: :admin_root
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: "dashboards#show", as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "marketing#index"
  end
end
