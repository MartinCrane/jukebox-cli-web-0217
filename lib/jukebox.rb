songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(array)
  array.each_with_index {|song, index_no| puts "#{index_no}. #{song}"}
end

def play(array)
  puts "Please enter a song name or number:"
  song_number = gets.chomp
  if array.include?(song_number)
    puts "Playing #{song_number}"
  else
    if song_number.to_i > 0 && song_number.to_i <= array.size
      puts "Playing " + array[song_number.to_i - 1]
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
    while user_input != "exit"
      if user_input == "play"
        play(array)
      elsif user_input == "help"
        help
      elsif user_input == "list"
        list(array)
      else
      end
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  exit_jukebox
end
