import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DiffeotopyGroupPackage {G : AdmissibleClass} where
  diffeotopyGroup : Type u
  diffeotopyEquivalence : Prop
  compositionWellDefined : Prop
  identityDiffeotopy : Prop
  inverseDiffeotopy : Prop
  groupLaws : Prop

structure DiffeotopyGroupEvidence {G : AdmissibleClass}
  (Pkg : DiffeotopyGroupPackage G) where
  diffeotopyGroupClosed : Pkg.diffeotopyGroup
  diffeotopyEquivalenceClosed : Pkg.diffeotopyEquivalence
  compositionWellDefinedClosed : Pkg.compositionWellDefined
  identityDiffeotopyClosed : Pkg.identityDiffeotopy
  inverseDiffeotopyClosed : Pkg.inverseDiffeotopy
  groupLawsClosed : Pkg.groupLaws

def DiffeotopyGroupClosed {G : AdmissibleClass}
  (Pkg : DiffeotopyGroupPackage G) : Prop :=
  Pkg.diffeotopyEquivalence ∧ Pkg.compositionWellDefined ∧
  Pkg.identityDiffeotopy ∧ Pkg.inverseDiffeotopy ∧ Pkg.groupLaws

theorem diffeotopy_group_closed_from_evidence {G : AdmissibleClass}
  (Pkg : DiffeotopyGroupPackage G)
  (E : DiffeotopyGroupEvidence Pkg) : DiffeotopyGroupClosed Pkg := by
  exact And.intro E.diffeotopyEquivalenceClosed
    (And.intro E.compositionWellDefinedClosed
      (And.intro E.identityDiffeotopyClosed
        (And.intro E.inverseDiffeotopyClosed E.groupLawsClosed)))

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse