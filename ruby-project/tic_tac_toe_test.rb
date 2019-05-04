require_relative 'universe'

def success(success)
	puts "TECHIO> success #{success}"
end

def msg(channel, msg)
	puts "TECHIO> message --channel \"#{channel}\" \"#{msg}\""
end

def existsInFile(str)
	return File.foreach("universe.rb").any?{ |l| l[str] }
end

universe = Universe.new
if universe.countAllStars(150,600,27) == 777
	success(true)
	if existsInFile("galaxies.sum")
		msg("My personal Yoda, you are. 🙏", "* ● ¸ .　¸. :° ☾ ° 　¸. ● ¸ .　　¸.　:. • ");
		msg("My personal Yoda, you are. 🙏", "           　★ °  ☆ ¸. ¸ 　★　 :.　 .   ");
		msg("My personal Yoda, you are. 🙏", "__.-._     ° . .　　　　.　☾ ° 　. *   ¸ .");
		msg("My personal Yoda, you are. 🙏", "'-._\\7'      .　　° ☾  ° 　¸.☆  ● .　　　");
		msg("My personal Yoda, you are. 🙏", " /'.-c    　   * ●  ¸.　　°     ° 　¸.    ");
		msg("My personal Yoda, you are. 🙏", " |  /T      　　°     ° 　¸.     ¸ .　　  ");
		msg("My personal Yoda, you are. 🙏", "_)_/LI");
	else
		msg("Kudos 🌟", "Did you know that since Ruby2.4 is out you can use the sum function? Try it!");
		msg("Kudos 🌟", "");
		msg("Kudos 🌟", "$totalStars = galaxies.sum");
	end

else
	success(false)
	msg("Oops! 🐞", "Did you properly accumulate all stars into '$totalStars'? 🤔")
end