Rails.application.routes.draw do
   namespace 'api' do
		namespace 'v1' do
			namespace 'v2' do
				namespace 'v3' do
					resources :fathers,  module: :fathers do
						resources :children
					end
				end
			end
		end
	end

  resources :fathers
end
