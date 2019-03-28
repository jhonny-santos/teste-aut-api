module Utils
  include HTTParty

  def times_now
    Time.now.strftime('%d/%m/%Y %H:%M:%S.%L - GMT %z')
  end

  def format_json(json)
    JSON.parse(json)
  rescue JSON::ParserError
    JSON.parse(json.to_json)
  end

  def generate_evidence(response)
    response_time = times_now
    evidence_folder = $FOLDER_PATH
    verb = response.request.http_method::METHOD
    evidence_file = "#{evidence_folder}/#{Time.now.strftime('%Hh%Mm%Ss%L')}_#{verb}.txt"

    File.open(evidence_file, 'w:ASCII-8BIT') do |f|
      f.puts "=================================================\n"
      f.puts "#                     REQUEST                   #\n"
      f.puts "=================================================\n"
      f.puts "\n>>>> ENDPOINT <<<<\n#{response.request.last_uri}\n"
      f.puts "\n>>>> REQUEST BODY <<<<\n#{(response.request.options[:body])}\n" unless verb.eql?('GET')
      f.puts "=================================================\n"
      f.puts "=================================================\n\n"

      f.puts "\n=================================================\n"
      f.puts "#                   RESPONSE                    #\n"
      f.puts "=================================================\n"
      f.puts "\n>>>> RESPONSE HEADERS <<<<\n"
      response.header.each {|key, value| f.puts "#{key}: #{value}\n" unless key.eql?('authorization')}
      f.puts "\n>>>> RESPONSE BODY <<<<\n#{JSON.pretty_generate(format_json(response.body))}\n"
      f.puts "\n>>>> RESPOSTA DA REQUISIÇÃO <<<<\n#{response_time}\n\n"
      f.puts "=================================================\n"
      f.puts '================================================='
    end
  end

end