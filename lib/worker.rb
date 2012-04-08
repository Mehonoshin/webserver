class Worker
  
  def initialize(request)
    @request = request
  end

  def prepare_body
    @path = @request.gsub(/GET\ \//, '').gsub(/\ HTTP.*/, '').chomp
    get_file_contents(@path)
  end

  def get_file_contents(path)
    "This is contents of #{path}"
  end

end
