
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
      def after_sign_in_path_for(resource)
         if resource.is_a?(User)
          if User.count == 1
            resource.add_role 'admin'
           end
          resource
        end
         root_path
    end



   def after_sign_in_path_for(resource)
         if resource.is_a?(User)
          if User.count == 2
            resource.add_role 'user'
           end
           resource
         end
        root_path
   end
end  