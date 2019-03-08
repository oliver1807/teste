require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

CONFIG = YAML.load_file("./features/support/config/dev.yml")


Before do |scenario|
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG["url"]
end

Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 8

@compra_site = ComprasPage.new
@pedido_site = PedidoPage.new
@avancar_pedido = CadastroPage.new
@shipping = ShippingPage.new
@order = Order.new
@order_payment = OrderPayment.new
@final_pedido = PedidoFinal.new
end
 
