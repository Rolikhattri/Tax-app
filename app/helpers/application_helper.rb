module ApplicationHelper
    def profile_created(user)
        if (user.name.nil?) && (user.pan.nil?) && (user.contact.nil?) && (user.tax_status_id.nil?) 
            return false
        else
            return true
        end
    end
end
