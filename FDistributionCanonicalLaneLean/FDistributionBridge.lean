import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FDensityClosed (someDensity A) ∧ FDistributionMomentsClosed (someMoments A) ∧ FDistributionCDFClosed (someCDF A) ∧ FTestClosed (someTestParams A) (someTest A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end FDistributionCanonicalLaneLean
end HautevilleHouse