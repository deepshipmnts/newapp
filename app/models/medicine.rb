class Medicine < ApplicationRecord
  belongs_to :user
  belongs_to :global_medicine

end
