require "report_builder"
require "date"

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  @screen = DroidScreens.new
end

Before ("@logado") do
  user = "ext.wsouza"
  senha = "Iguatemi@2021"
  @screen.login.logon(user, senha)
end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")

  driver.quit_driver
end

at_exit do
  @infos = {
    "device" => "Android",
    "environment" => "HML",
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Crunchyroll Mangá"
    config.additional_info = @infos
    config.color = "Orange"
  end
  ReportBuilder.build_report
end
