import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDensityFunctionParams where
  d1 : ℝ
  d2 : ℝ
  d1Pos : d1 > 0
  d2Pos : d2 > 0

structure FDensityFunction (p : FDensityFunctionParams) where
  domain : Set ℝ
  density : ℝ → ℝ
  densityNonneg : ∀ x, density x ≥ 0
  integralOne : ∫ x in domain, density x = 1
  form : ∀ x, density x = (Gamma ((p.d1 + p.d2)/2) / (Gamma (p.d1/2) * Gamma (p.d2/2))) * (p.d1/p.d2)^(p.d1/2) * x^(p.d1/2 - 1) * ((1 + (p.d1 * x)/p.d2)^(-(p.d1 + p.d2)/2))

def FDensityClosed {p : FDensityFunctionParams} (f : FDensityFunction p) : Prop :=
  f.densityNonneg ∧ f.integralOne

theorem f_density_closed_from_props {p : FDensityFunctionParams} (f : FDensityFunction p) : FDensityClosed f :=
  And.intro f.densityNonneg f.integralOne

end FDistributionCanonicalLaneLean
end HautevilleHouse