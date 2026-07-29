import canonicalLaneMathlib.AdmissibleClass
import FDistributionCanonicalLaneLean.FDistributionBridge

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

def ConstrainedFDistributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_f_distribution_endgame (A : AdmissibleClass) : ConstrainedFDistributionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FDistributionCanonicalLaneLean
end HautevilleHouse