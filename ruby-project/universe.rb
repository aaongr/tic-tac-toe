class Universe
	def countAllStars(*galaxies)
		$totalStars = 0
		galaxies.each { |stars| 
			$totalStars = stars #fix me!
		}
		return $totalStars
	end
end