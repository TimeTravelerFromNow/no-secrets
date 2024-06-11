module SavedSecretsHelper
  def colorize(secret)
    secret.first(3) + secret.last(3)
  end

  def first_and_last(secret)
    secret.first(3) << '...' << secret.last(3)
  end
end
