import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphisms

structure ImmersionSubmersionStabilityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  immersionFamily : Type w
  submersionFamily : Type x
  stabilityUnderSmallPerturbation : Prop
  transversalityCondition : Prop
  localDiffeomorphismApproximation : Prop
  endpointRegularity : Prop

def ImmersionSubmersionStabilityClosed (I : ImmersionSubmersionStabilityPackage) : Prop :=
  I.stabilityUnderSmallPerturbation ∧ I.transversalityCondition ∧ I.localDiffeomorphismApproximation ∧ I.endpointRegularity

theorem immersion_submersion_stability_closed (I : ImmersionSubmersionStabilityPackage) :
    ImmersionSubmersionStabilityClosed I := by
  exact And.intro I.stabilityUnderSmallPerturbation (And.intro I.transversalityCondition (And.intro I.localDiffeomorphismApproximation I.endpointRegularity))

end DifferentialTopologicalAspectsDiffeomorphisms
end HautevilleHouse