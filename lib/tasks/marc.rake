require 'marc'

desc 'export the records into a marc file'
task :export, [:type] => [:environment] do |t, args|
	args.with_defaults(:type => "DigitalImage")
    
    images = args[:type].constantize.all

	# creating a record 
	record = MARC::Record.new()
	images.each_with_index do |image, i|
		info = image.attributes.map{|k,v| [k.to_s[0], v.to_s]}
		info.each_with_index do |r,j|
			record.append(MARC::DataField.new((i+100).to_s,j.to_s,'',r))
		end
	end

	# writing a record
	writer = MARC::Writer.new('marc.dat')
	writer.write(record)
	writer.close()
end

desc 'test reading the marc file'
task :read_marc => [:environment] do
	# reading records from a batch file
	reader = MARC::Reader.new('marc.dat')
	puts reader.inspect
	reader.each do |r|
		puts r.inspect
	end
end