Monologue::Post.class_eval do
  before_validation :set_published_at, on: :create

  protected
  def set_published_at
    self.published_at ||= DateTime.now
  end
end

