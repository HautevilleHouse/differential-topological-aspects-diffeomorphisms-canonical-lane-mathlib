import BridgeLemmas

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

def gateClosed (A : DiffeomorphismAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DiffeomorphismAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
