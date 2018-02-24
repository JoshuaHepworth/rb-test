json.extract! item, :id, :item_number, :sap_number, :tr_number, :rb_number, :name, :machine, :material, :finish, :lead_time, :additional, :created_at, :updated_at
json.url item_url(item, format: :json)
