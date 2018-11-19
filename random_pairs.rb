def pair(options)
	paircount = 0
	pairs = []
	deeppair = []
	count = 0
	half = options.length/2
	str = ""
	paircounter = 0
	if options.class != Array
		return "No."
	else
		half.times do
		while deeppair.length < 2 && options.length > 0
			picked = options.sample
			deeppair << picked
			options.delete(picked)
		end
			pairs << deeppair
			deeppair = []
			paircount += 1
		end
		if options != []
			pairs.sample << options[0]
			options.delete_at(0)
		end
		pairs.each do |item|
			paircounter += 1
			str << "Pair #{paircounter}: #{item.to_s}. "
		end
		puts "Pairs: #{pairs}"
		return str

	end
end
