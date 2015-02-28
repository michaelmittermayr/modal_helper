module ModalHelper

  def modal_tag(options = {})
     content_tag :div, class: "modal", tabIndex: "-1", role: "dialog", "aria-hidden": true do
       concat(content_tag(:div, class: "modal-dialog") do
         concat(content_tag(:div, class: "modal-content") do
           yield
         end)
       end)
     end
   end

   def modal_header
     content_tag(:div, class: "modal-header") do
       concat(content_tag("button", "&times;".html_safe, class: "close", "data-dismiss" => "modal", "aria-hidden" => "false") do
         yield
       end)
     end
   end

   def modal_body
     content_tag("div", class: "modal-body") do
       yield
     end
   end
   
end