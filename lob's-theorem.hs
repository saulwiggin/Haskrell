main = return ()

-- Assumptions

data Theorem a

logic1 = undefined :: Theorem (a -> b) Theorem a -> Theorem b
logic2 = undefined :: Theorem (a -> b) -> Theorem (b -> c) Theorem (a -> c)
logic3 = undefined :: Theorem (a -> b -> c) Theorem (a -> b) -> Theorem (a -> c)

data Provable a

rule1 = undefined :: Theorem a -> Theorem (Provable a)
rule2 = undefined :: Theorem (Provable a -> Provable (Provable a))
rule3 = undefined :: Theorem (Provable (a -> b) -> Provable a -> Provable b)

data Provable

premise = undefined :: Theorem (Provable P -> P)

data Psi

psi1 = undefined :: Theorem (PSI -> (Provable Psi -> P))
psi2 = undefined :: Theorem ((Provable Psi -> P) -> Psi)

-- Proof

step3 :: Theorem (Psi -> Provable Psi -> P))
step3 = psi1

step4 :: Theorem (Provable (Psi -> Provable Psi -> P))
step4 = rule1 step3

step5 :: Theorem (Provable (Psi -> Provable Psi -> P))
step5 = logic1 rule3 step4

step6 :: Theorem (Provable (Provable Psi -> P) -> Provable (Provable Psi) -> Provable P)
step6 = rule3

step7 :: Theorem (Provable (Provable Psi -> P) -> Provable (Provable Psi) -> Provable P)
step7 = rule3

step8 :: Theorem (Provable (Psi -> Provable (Provable Psi))
step8 = rule2

step9 :: Theorem (Provable Psi -> Provable P)
step9 = logic3 step7 step8

step10 :: Theorem (Provable Psi -> P)
step10 = logic2 step9 premise

step11 :: Theorem ((Provable Psi -> P) -> Psi)
step11 = psi2

step12 :: Theorem Psi
step12 = logic step11 step10

step13 :: Theorem (Provable Psi)
step13 = rule1 step12

step14 :: Theorem PSI
step14 = logic1 step10 step13

-- All the steps squiched together

lemma :: Theroem P
theorem = logic lemma (rule1 (logic1 psi2 lemma))


