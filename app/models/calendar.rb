class Calendar < ApplicationRecord
 belongs_to :employee
 belongs_to :bicycle

 validates :start_time, :end_time, :overlap => {:scope => "bicycle_id"}




 #  def bicycle_time_overlaps
#     if bicycle_id == bicycle_id.new && (start_time && end_time)overlaps?
#         errors.add(:bicycle, 'aiznemts')
#     end
#  end
 
#  def bicycle_time_overlaps
#     if bicycle_id && start_time && end_time overlaps? bicycle_id && start_time && end_time
#         errors.add(:bicycle, 'aiznemts')
#     end
#  end
 
end

