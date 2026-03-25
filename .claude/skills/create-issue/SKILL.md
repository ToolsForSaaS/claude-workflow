---
name: create-issue
description: Creer des issues GitHub structurees avec decoupage intelligent, criteres d'acceptance et labels. Utiliser pour transformer une demande en issues actionnables.
argument-hint: [description de ce qu'il faut faire]
---

Lis `.claude/skills/_workflow-persona/SKILL.md` avant de commencer.

---

## Etape 0 — Verifications

Avant de commencer, verifie :

- [ ] Le repo a un remote `origin` configure
- [ ] L'utilisateur a fourni une description de ce qu'il veut creer

Si une verification echoue, signale-le clairement et arrete-toi.

## Etape 1 — Detecter le repo courant

Utilise le MCP GitHub pour identifier le repo actif a partir du remote Git (`origin`). Toutes les issues seront creees dans ce repo.

## Etape 2 — Analyser la demande

Lis attentivement ce que l'utilisateur decrit. Evalue si c'est **une seule issue ou plusieurs**.

### Regles de decoupage

Cree **plusieurs issues separees** si la demande contient :

- Des **domaines fonctionnels distincts** (ex : auth + dashboard + API = 3 domaines → 3 issues si les taches sont independantes)
- Un **mix de natures differentes** : un bug ET une feature dans la meme description → toujours separer
- Des **couches techniques independantes** qui peuvent etre developpees et mergees separement (ex : backend + frontend si non couples)
- Une **charge estimee > 2 jours** sur un seul sujet → decouper en sous-taches coherentes
- Des **dependances claires** entre sous-taches (A doit etre fait avant B) → issues separees avec mention de la dependance dans la description

Garde **une seule issue** si :

- C'est un bug isole avec cause et correction claires
- C'est une petite feature qui tient en un seul PR coherent
- Les elements decrits sont fortement couples et ne peuvent pas etre livres separement

### En cas de doute

Prefere **decouper** : une issue trop petite est moins grave qu'une issue fourre-tout.

## Etape 3 — Rediger les issues

Pour **chaque issue** identifiee, redige :

**Titre** : court, precis, en francais. Format : `[Type] Description concise`

- Types : `[Bug]`, `[Feature]`, `[Refactor]`, `[Chore]`, `[Docs]`, `[Perf]`

**Body** en markdown structure :

```
## Contexte
Pourquoi cette issue existe. Ce qui a declenche le besoin.

## Description
Ce qu'il faut faire, precisement. Pas de vague.

## Criteres d'acceptance
- [ ] Critere 1
- [ ] Critere 2
- [ ] ...

## Notes techniques (si pertinent)
Contraintes, pieges connus, suggestions d'approche.
```

## Etape 4 — Recapituler avant de creer

Avant de creer quoi que ce soit sur GitHub, **affiche le recap** :

```
Issues a creer (N) :

1. [Bug] Titre de l'issue 1
   Resume en une phrase

2. [Feature] Titre de l'issue 2
   Resume en une phrase
```

Puis demande confirmation : **"Je cree ces N issues sur GitHub ?"**

## Etape 5 — Creer les issues via MCP GitHub

Une fois confirmation recue, cree chaque issue via le MCP GitHub dans l'ordre logique (dependances d'abord).

### Labels

Correspondance type → label :

| Type dans le titre | Label |
|--------------------|-------|
| `[Bug]` | `bug` |
| `[Feature]` | `feature` |
| `[Refactor]` | `refactor` |
| `[Chore]` | `chore` |
| `[Docs]` | `docs` |
| `[Perf]` | `perf` |

Si le label n'existe pas encore sur le repo, cree-le.

Pour chaque issue :
- Assigne le label correspondant
- Si l'issue depend d'une autre, ajoute `Depend de #X` dans la section Contexte du body
- Affiche l'URL retournee

---

## Input utilisateur

$ARGUMENTS
