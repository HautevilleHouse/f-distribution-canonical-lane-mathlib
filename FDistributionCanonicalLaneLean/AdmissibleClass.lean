import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionObject where
  d1 : Nat
  d2 : Nat
  noncentrality : ℝ

structure AdmissibleClass where
  object : FDistributionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FDistributionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FDistributionCanonicalLaneLean
end HautevilleHouse