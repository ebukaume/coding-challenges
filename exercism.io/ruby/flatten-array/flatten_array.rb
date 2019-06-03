module FlattenArray
  def self.flatten(list)
    list.each_with_object([]) do |item, flat|
      next if item.nil?
      if item.is_a?(Array)
        flat.concat(self.flatten(item))
      else
        flat << item 
      end
    end
  end

end
