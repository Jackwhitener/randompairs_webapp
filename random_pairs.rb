def pair(options,func)
	paircount = 0
	pairs = []
	deeppair = []
	count = 0
	half = options.length/2
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
		puts "Pairs: #{pairs}"
		if func == 0
			return paircount
		elsif func == 1
			return options
		elsif func == 2
			return pairs
		else
			return "No."
		end
	end
end
