import FDistributionCanonicalLaneLean.FDistributionAdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionANOVAPackage where
  totalSumSquares : ℝ
  betweenGroupSS : ℝ
  withinGroupSS : ℝ
  fStatistic : ℝ
  degreesOfFreedom1 : ℕ
  degreesOfFreedom2 : ℕ
  anovaTableClosed : Prop
  fTestValid : Prop

structure FDistributionANOVAEvidence (A : FDistributionANOVAPackage) where
  anovaTableClosedClosed : A.anovaTableClosed
  fTestValidClosed : A.fTestValid

def FDistributionANOVAClosed (A : FDistributionANOVAPackage) : Prop :=
  A.anovaTableClosed ∧ A.fTestValid

theorem f_distribution_anova_closed_from_evidence (A : FDistributionANOVAPackage) (E : FDistributionANOVAEvidence A) : FDistributionANOVAClosed A :=
  And.intro E.anovaTableClosedClosed E.fTestValidClosed

end FDistributionCanonicalLaneLean
end HautevilleHouse