within MultiPhaseMixture.PreDefined.Mixtures.NativeModelica.DryAir.EquationsOfState.Utilities.Polynomials;
function secondDerivativeValue
  "Value of 2nd derivative of polynomial at abscissa value u"

  input Real p[:]
    "Polynomial coefficients (p[1] is coefficient of highest power)";
  input Real u "Abscissa value";
  output Real y "Value of 2nd derivative of polynomial at u";
protected
  Integer n=size(p, 1);
algorithm
  y := p[1]*(n - 1)*(n - 2);
  for j in 2:size(p, 1) - 2 loop
    y := p[j]*(n - j)*(n - j - 1) + u*y;
  end for;
  annotation (Documentation(revisions="<html></html>"));
end secondDerivativeValue;
