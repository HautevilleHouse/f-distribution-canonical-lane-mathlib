import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionAdmittedObject where
  numeratorDF : Nat
  denominatorDF : Nat
  noncentralParameter : ℝ
  pdfClosedForm : Prop
  cdfClosedForm : Prop
  momentsExist : Prop
  conclusion : pdfClosedForm ∧ cdfClosedForm ∧ momentsExist

structure AdmissibleClass where
  object : FDistributionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.pdfClosedForm ∧ A.object.cdfClosedForm ∧ A.object.momentsExist) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FDistributionCanonicalLaneLean
end HautevilleHouse