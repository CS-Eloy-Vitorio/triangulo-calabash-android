class PrincipalScreen < AndroidScreenBase

  trait(:trait)           { "* id:'#{labelLado1}'" }
  element(:labelLado1)    { 'labelLado1' }
  element(:textlado1)     { 'txtLado1' }
  element(:labelLado2)    { 'labelLado2' }
  element(:textlado2)     { 'txtLado2' }
  element(:labelLado3)    { 'labelLado3' }
  element(:textlado3)     { 'txtLado3' }
  element(:calcular)      { 'btnCalcular' }
  element(:resultado)     { 'txtResultado'}

  def informarLados(v1, v2, v3)
   wait_for(timeout:5) {element_exists "* id:'#{textlado1}'"}
   enter(v1,textlado1)
   enter(v2,textlado2)
   enter(v3,textlado3)
  end

  def acionarCalcular
    touch_screen_element(calcular)
  end

  def pegarResultado
    wait_for(timeout:5) {element_exists "* id:'#{resultado}'"}
    return query("* id:'#{resultado}'",:getText)
  end

end
