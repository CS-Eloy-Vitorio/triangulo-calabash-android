class TrianguloApp < AndroidScreenBase

  def principal_screen
   @principal_screen ||= page(PrincipalScreen)
  end

end
