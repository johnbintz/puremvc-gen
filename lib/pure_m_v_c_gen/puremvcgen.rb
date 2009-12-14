class PureMVCGen
  def PureMVCGen.filter(template_file, target_file, properties)
    if File.exists?(template_file)
      ofh = File.new(target_file, 'w')
      File.readlines(tempalte_file).each do |line|
        properties.each { |p,v| line.gsub!("@#{p}@", v) }
        ofh.puts line
      end
      ofh.close
    end
  end

  def PureMVCGen.read_properties

  end
end