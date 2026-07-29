import canonicalLaneMathlib.AdmissibleClass
import DiffeomorphismClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

def bridgeClosed (A : DiffeomorphismAdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object

theorem bridge_from_admissible_class (A : DiffeomorphismAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
