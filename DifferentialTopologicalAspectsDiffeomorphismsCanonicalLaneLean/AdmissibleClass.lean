import DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiffeomorphismAdmittedObject where
  manifold : Type
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  diffeomorphismGroup : Type
  classificationResult : Prop
  conclusion : classificationResult

structure AdmissibleClass where
  object : DiffeomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse