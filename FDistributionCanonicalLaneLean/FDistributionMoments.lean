import FDistributionCanonicalLaneLean.FDistributionAdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionMomentsPackage where
  meanFormula : ℝ
  varianceFormula : ℝ
  skewnessFormula : ℝ
  kurtosisFormula : ℝ
  meanExists : Prop
  varianceExists : Prop
  skewnessExists : Prop
  kurtosisExists : Prop

structure FDistributionMomentsEvidence (M : FDistributionMomentsPackage) where
  meanExistsClosed : M.meanExists
  varianceExistsClosed : M.varianceExists
  skewnessExistsClosed : M.skewnessExists
  kurtosisExistsClosed : M.kurtosisExists

def FDistributionMomentsClosed (M : FDistributionMomentsPackage) : Prop :=
  M.meanExists ∧ M.varianceExists ∧ M.skewnessExists ∧ M.kurtosisExists

theorem f_distribution_moments_closed_from_evidence (M : FDistributionMomentsPackage) (E : FDistributionMomentsEvidence M) : FDistributionMomentsClosed M :=
  And.intro E.meanExistsClosed (And.intro E.varianceExistsClosed (And.intro E.skewnessExistsClosed E.kurtosisExistsClosed))

end FDistributionCanonicalLaneLean
end HautevilleHouse