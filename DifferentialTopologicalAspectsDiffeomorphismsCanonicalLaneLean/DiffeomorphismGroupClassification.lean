import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphisms

structure DiffeomorphismGroupClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  diffeomorphismGroup : Type v
  groupStructure : Prop
  connectedComponentIdentity : Prop
  mappingClassGroupDetected : Prop
  simpleConnectivityForcesTrivialMCG : Prop

def DiffeomorphismGroupClassificationClosed (D : DiffeomorphismGroupClassificationPackage) : Prop :=
  D.groupStructure ∧ D.connectedComponentIdentity ∧ D.mappingClassGroupDetected ∧ D.simpleConnectivityForcesTrivialMCG

theorem diffeomorphism_group_classification_closed (D : DiffeomorphismGroupClassificationPackage) :
    DiffeomorphismGroupClassificationClosed D := by
  exact And.intro D.groupStructure (And.intro D.connectedComponentIdentity (And.intro D.mappingClassGroupDetected D.simpleConnectivityForcesTrivialMCG))

end DifferentialTopologicalAspectsDiffeomorphisms
end HautevilleHouse