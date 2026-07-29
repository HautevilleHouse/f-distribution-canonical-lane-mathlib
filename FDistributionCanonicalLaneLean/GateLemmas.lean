import FDistributionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end FDistributionCanonicalLaneLean
end HautevilleHouse