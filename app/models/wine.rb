class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies, dependent: :destroy
    accepts_nested_attributes_for :assemblies, reject_if: :all_blank, allow_destroy: true


    def assembly_percent
        
        assembly_array = []
        assembly_string = []

        self.assemblies.each do |assembly|
            assembly_array.push([assembly.strain.name , assembly.percent])
        end

        assembly_array.sort_by{ |strain| strain[0] }.map do |cepa|
            "#{cepa[0]} (#{cepa[1]}%)"
        end.join(', ')
        

    end
end
