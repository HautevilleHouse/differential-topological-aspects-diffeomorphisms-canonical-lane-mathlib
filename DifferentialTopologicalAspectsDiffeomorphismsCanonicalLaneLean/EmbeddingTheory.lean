import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure EmbeddingTheoryPackage where
  sourceManifold : Type u
  targetManifold : Type v
  embedding : Type w
  embeddingExists : Prop
  isotopyClassification : Prop
  normalBundle : Prop
  tubularNeighborhood : Prop

structure EmbeddingTheoryEvidence (P : EmbeddingTheoryPackage) where
  embeddingExistsClosed : P.embeddingExists
  isotopyClassificationClosed : P.isotopyClassification
  normalBundleClosed : P.normalBundle
  tubularNeighborhoodClosed : P.tubularNeighborhood

def EmbeddingTheoryClosed (P : EmbeddingTheoryPackage) : Prop :=
  P.embeddingExists ∧ P.isotopyClassification ∧ P.normalBundle ∧ P.tubularNeighborhood

theorem embedding_theory_closed_from_evidence (P : EmbeddingTheoryPackage) (E : EmbeddingTheoryEvidence P) :
    EmbeddingTheoryClosed P := by
  exact And.intro E.embeddingExistsClosed (And.intro E.isotopyClassificationClosed (And.intro E.normalBundleClosed E.tubularNeighborhoodClosed))

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse