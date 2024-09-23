require 'irb'

# Create the history file if it doesn't exist.
history_dir = "#{ENV['XDG_DATA_HOME']}/irb"
Dir.mkdir(history_dir) unless Dir.exist?(history_dir)
IRB.conf[:HISTORY_FILE] = "#{history_dir}/irb_history"
