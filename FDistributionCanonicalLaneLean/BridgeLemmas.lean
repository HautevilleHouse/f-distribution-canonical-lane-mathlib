import FDistributionCanonicalLaneLean.FDistributionAdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.pdfClosedForm ∧ A.object.cdfClosedForm ∧ A.object.momentsExist

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end FDistributionCanonicalLaneLean
end HautevilleHouse