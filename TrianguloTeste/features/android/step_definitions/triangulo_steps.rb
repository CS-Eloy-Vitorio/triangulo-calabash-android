require 'calabash-android/calabash_steps'

Dado(/^que o aplicativo está carregado$/) do
  @screen = page(TrianguloApp)
end

Quando(/^informar o lado "([^"]*)", o lado "([^"]*)", o lado "([^"]*)"$/) do |arg1, arg2, arg3|
  @screen.principal_screen.informarLados(arg1, arg2, arg3)
end

Quando(/^calcular suas dimensões$/) do
  @screen.principal_screen.acionarCalcular
end

Então(/^devo visualizar o nome "([^"]*)" como classificação$/) do |arg1|
  @resultado = @screen.principal_screen.pegarResultado
  unless @resultado.include? arg1
    fail "Esperado: #{arg1}. Atual foi: #{@resultado}."
  end
end
