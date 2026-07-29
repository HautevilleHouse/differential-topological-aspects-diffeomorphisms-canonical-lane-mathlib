import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DiffeomorphismAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  diffeomorphismExists : Prop
  conclusion : diffeomorphismExists

structure DiffeomorphismAdmissibleClass where
  object : DiffeomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def diffeomorphismAdmittedClosure (A : DiffeomorphismAdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
