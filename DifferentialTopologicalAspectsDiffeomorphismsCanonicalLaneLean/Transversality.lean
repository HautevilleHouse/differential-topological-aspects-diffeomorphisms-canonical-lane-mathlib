import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure TransversalityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  mapFamily : Type w
  transversalityCondition : Prop
  perturbationExists : Prop
  stabilityUnderSmallPerturbation : Prop

structure TransversalityEvidence (P : TransversalityPackage) where
  transversalityConditionClosed : P.transversalityCondition
  perturbationExistsClosed : P.perturbationExists
  stabilityUnderSmallPerturbationClosed : P.stabilityUnderSmallPerturbation

def TransversalityClosed (P : TransversalityPackage) : Prop :=
  P.transversalityCondition ∧ P.perturbationExists ∧ P.stabilityUnderSmallPerturbation

theorem transversality_closed_from_evidence (P : TransversalityPackage) (E : TransversalityEvidence P) :
    TransversalityClosed P := by
  exact And.intro E.transversalityConditionClosed (And.intro E.perturbationExistsClosed E.stabilityUnderSmallPerturbationClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse