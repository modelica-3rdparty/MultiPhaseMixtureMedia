within MultiPhaseMixture.Templates.ExternalTwoPhaseMixture.Auxilary.Wrapper_phX;
function liquidComposition_phX
  input Modelica.SIunits.AbsolutePressure p "pressure";
  input Modelica.SIunits.SpecificEnthalpy h "specific enthalpy";
  input Modelica.SIunits.MassFraction X[nC]=
     reference_X "Mass fraction";
  input Properties state;
  output Real Y[nC];
algorithm
  Y:=Wrapper.liquidComposition(state);
 annotation(Inline = false,LateInline=true);
end liquidComposition_phX;
