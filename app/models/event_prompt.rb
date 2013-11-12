class EventPrompt < ActiveRecord::Base
  attr_accessible :completed, :event_id, :passed, :prompt_id, :user_event_id

  belongs_to :prompts
  belongs_to :event
  belongs_to :event_user


end