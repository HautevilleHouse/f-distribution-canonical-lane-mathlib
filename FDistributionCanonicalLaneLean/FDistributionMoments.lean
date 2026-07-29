import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionMomentsParams (p : FDensityFunctionParams) where
  meanExists : p.d2 > 2
  varianceExists : p.d2 > 4
  mean : ℝ
  variance : ℝ

structure FDistributionMoments (p : FDensityFunctionParams) (m : FDistributionMomentsParams p) where
  meanDefined : m.meanExists → mean = m.mean
  varianceDefined : m.varianceExists → variance = m.variance
  meanFormula : m.mean = p.d2 / (p.d2 - 2)
  varianceFormula : m.variance = 2 * p.d2 ^ 2 * (p.d1 + p.d2 - 2) / (p.d1 * (p.d2 - 2) ^ 2 * (p.d2 - 4))

def FDistributionMomentsClosed {p : FDensityFunctionParams} {m : FDistributionMomentsParams p} (M : FDistributionMoments p m) : Prop :=
  M.meanFormula ∧ M.varianceFormula

theorem f_distribution_moments_closed {p : FDensityFunctionParams} {m : FDistributionMomentsParams p} (M : FDistributionMoments p m) : FDistributionMomentsClosed M :=
  And.intro M.meanFormula M.varianceFormula

end FDistributionCanonicalLaneLean
end HautevilleHouse