 ;; Import the conceptual blending module for knowledge representation
! (import! &self conceptual_blending)

 ;; Ask the GPT agent with two explicit concepts for different networks
! (gpt_simplex "Music" "Painting")
! (gpt_mirror "Light" "Wisdom")
! (gpt_single "Nature" "Technology")
! (gpt_double "Emotion" "Mathematics")

 ;; Combine GPT with other agents and workflows
 ;; Store the blended knowledge (GPT response) from each network into the knowledge space
! (add-reduct &self (gpt_simplex "Music" "Painting"))
! (add-reduct &self (gpt_mirror "Light" "Wisdom"))
! (add-reduct &self (gpt_single "Nature" "Technology"))
! (add-reduct &self (gpt_double "Emotion" "Mathematics"))

 ;; Retrieve and list all knowledge stored in the current space
! (match &self ($x) $x)


; --------------------------------------------
;; Test blending with sentences
; ! (gpt_simplex "The melody of a song flows like a river." "A painting captures emotions in colors.")
; ! (gpt_mirror "A bright light reveals hidden truths." "Wisdom is gained through experience.")
; ! (gpt_single "Nature adapts to changes over time." "Technology evolves to meet human needs.")
; ! (gpt_double "Emotions shape our decisions and actions." "Mathematics provides structure and logic to the world.")

; ; Output:
; ; `(simplexBlend (blend melodyFlow emotionColors) emotionalRiver)`
; ; (mirroredConcept (mirror brightLight hiddenTruths wisdom experience) revelationThroughIllumination)
; ; ```
; ; (singleScope (expand nature adapts to changes over time) dynamicResilienceInEcosystemEvolution)
; ; (singleScope (expand technology evolves to meet human needs) adaptiveInnovationInHumanProgress)
; ; ```
; ; (doubleScope (expand emotionsDecisions mathematicsStructure) emotionalLogicFramework)
; ; [()]
; ; [[`, (simplexBlend (blend melodyFlow emotionColors) emotionalRiver), `]]
; ; [[(mirroredConcept (mirror brightLight hiddenTruths wisdom experience) revelationThroughIllumination)]]
; ; [[```, (singleScope (expand nature adapts to changes over time) dynamicResilienceInEcosystemEvolution), (singleScope (expand technology evolves to meet human needs) adaptiveInnovationInHumanProgress), ```]]
; ; [[(doubleScope (expand emotionsDecisions mathematicsStructure) emotionalLogicFramework)]]
; ; []
