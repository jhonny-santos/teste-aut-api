#encoding: utf-8
include Utils
Before do |scenario|
  @test_start = times_now
  date = Time.now.strftime('%Y%m%d')
  time = Time.now.strftime('%Hh%Mm%Ss%L')
  scenario_name = scenario.name.remover_acentos.titleize.gsub(/\W/, '')
  FOLDER_PATH = "reports/evidences/#{date}/#{time}_#{scenario_name}"
  FileUtils.mkdir_p(FOLDER_PATH) unless Dir.exist?(FOLDER_PATH)
end

After do
  puts "Início: #{@test_start}"
  puts "Término: #{times_now}"
end