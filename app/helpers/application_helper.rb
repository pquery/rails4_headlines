module ApplicationHelper
  module ApplicationHelper
    def envelope(json, status, errors, notes)
        json.status status
        json.data do
            yield if block_given?
        end
        json.errors errors
        json.notes notes
    end
end

end
