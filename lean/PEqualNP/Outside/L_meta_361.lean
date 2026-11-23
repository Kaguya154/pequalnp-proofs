import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.L_meta_361 :
    ∀ (β : Type) (e : β → List Bool) (f : List Bool → β),
      PEqualNP.Library.ComputableInPolyTime (fun x : List Bool => x) (fun x : List Bool => x) (fun x => e (f x)) →
      PEqualNP.Library.ComputableInPolyTime (fun x : List Bool => x) e f := by
  intro β e f h
  obtain ⟨c⟩ := h
  exact ⟨⟨c.toTM2ComputableAux, c.time, fun a => c.outputsFun a⟩⟩
