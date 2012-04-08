class Worker
  
  def initialize(request)
    @request = request
  end

  # Parsing request and getting requested file
  def prepare_body
    @path = @request.gsub(/GET\ \//, '').gsub(/\ HTTP.*/, '').chomp
    get_file_contents(@path)
  end

  def get_file_contents(path)
    # Using default file, if recieved GET /
    path = DEFAULT_FILE if path == ''
    begin
      File.open("#{HOME_DIR}/#{path}", "r") { |file| file.read }
    rescue
      "File not found"
    end
  end

end
