import FinalTheorem
import canonicalLaneMathlib
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure DiffeomorphismSpace where
  source : Type
  target : Type
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target

def DiffeomorphismWitnessClosed (O : DiffeomorphismAdmittedObject) : Prop :=
  O.diffeomorphismExists

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
