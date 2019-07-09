
class Helpers
<<<<<<< HEAD
  def self.current_user(session)
    @user = User.find_by_id(session[:user_id])
  end

  def self.is_logged_in?(session)
    !!session[:user_id] # integer or nil

    # # !! Double bang will ask the question is_it_truthy?
    # is_it_truthy?(nil) # True
    # !!2 # True
    # !!nil # False
=======
  def current_user
  end

  def is_logged_in?
>>>>>>> 72d210918cf53bc449700ea511e81894d3228733
  end
end
