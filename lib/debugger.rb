class Debugger
  def self.log(text, dst = "stdio")
    if dst == "stdio"
      puts "#{Time.now} #{text}"
    end
  end
end
