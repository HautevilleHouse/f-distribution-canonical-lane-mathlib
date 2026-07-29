import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FDistributionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FDistributionCanonicalLaneLean
end HautevilleHouse