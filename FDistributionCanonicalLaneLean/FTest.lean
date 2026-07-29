import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FTestParams where
  alpha : ℝ
  alpha01 : 0 < alpha ∧ alpha < 1
  df1 : ℕ
  df2 : ℕ

structure FTest (p : FTestParams) where
  nullHypothesis : Prop
  testStatistic : ℝ
  criticalValue : ℝ
  rejectNull : Prop
  testStatisticFormula : testStatistic = (variance1 / df1) / (variance2 / df2)
  criticalValueFromFDist : criticalValue = FQuantile (1 - p.alpha) p.df1 p.df2

def FTestClosed (p : FTestParams) (t : FTest p) : Prop :=
  t.testStatisticFormula ∧ t.criticalValueFromFDist

theorem f_test_closed (p : FTestParams) (t : FTest p) : FTestClosed p t :=
  And.intro t.testStatisticFormula t.criticalValueFromFDist

end FDistributionCanonicalLaneLean
end HautevilleHouse