class Import
    # Table-less model https://stackoverflow.com/a/33143196
    include ActiveModel::Model
    
    attr_accessor :file
    
    validates :file, presence: true
end
