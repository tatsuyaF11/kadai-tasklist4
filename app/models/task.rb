class Task < ApplicationRecord
  validates :content, presence: true, length: { maxium: 10}
  validates :status, presence: true, length: { maximum: 10 }
end

<% if message.errors.any? %>

    <div id="error_explanation">
      <h2>
<%= pluralize(message.errors.count, "error") %>
 prohibited this message from being saved:</h2>

      <ul>
        
<% message.errors.full_messages.each do |message| %>

          <li>
<%= message %>
</li>
        
<% end %>

      </ul>
    </div>
  
<% end %>