require 'marc'

desc 'export the records into a marc file'
task :export, [:type] => [:environment] do |t, args|
	args.with_defaults(:type => "DigitalImage")
    
    images = args[:type].constantize.all

	# creating a record 
	record = MARC::Record.new()
	images.each do |image|
		info = image.attributes.map{|k,v| "'#{v.to_s}'"}
		record.append(MARC::DataField.new(info.join(',')))
	end

	# writing a record
	writer = MARC::Writer.new('marc.dat')
	writer.write(record)
	writer.close()
end