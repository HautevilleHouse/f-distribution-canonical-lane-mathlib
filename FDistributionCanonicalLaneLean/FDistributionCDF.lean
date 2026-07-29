import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionCDFParams (p : FDensityFunctionParams) where
  cdfDefined : ℝ → ℝ
  cdfContinuous : Prop
  cdfLimits : (cdfDefined 0 = 0) ∧ (cdfDefined atTop = 1)

structure FDistributionCDF {p : FDensityFunctionParams} (cdfp : FDistributionCDFParams p) where
  cdf : ℝ → ℝ
  cdfContinuous : cdfp.cdfContinuous
  cdfLimits : cdfp.cdfLimits
  cdfFromDensity : ∀ x, cdf x = ∫ t in Set.Ioo 0 x, (someDensity t) dt

def FDistributionCDFClosed {p : FDensityFunctionParams} {cdfp : FDistributionCDFParams p} (C : FDistributionCDF cdfp) : Prop :=
  C.cdfContinuous ∧ (C.cdfLimits.1 ∧ C.cdfLimits.2)

theorem f_distribution_cdf_closed {p : FDensityFunctionParams} {cdfp : FDistributionCDFParams p} (C : FDistributionCDF cdfp) : FDistributionCDFClosed C :=
  And.intro C.cdfContinuous (And.intro C.cdfLimits.1 C.cdfLimits.2)

end FDistributionCanonicalLaneLean
end HautevilleHouse