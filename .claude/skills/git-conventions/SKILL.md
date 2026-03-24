---
name: git-conventions
description: Conventions git du projet. Branches, commits et Pull Requests. Utiliser lors de la creation de branches, commits ou PRs pour respecter les formats standard.
user-invocable: false
---

## Branches

### Format

```
type/numero-titre-court
```

### Mapping des prefixes

| Prefixe | Usage |
|---------|-------|
| `feat/` | Nouvelle fonctionnalite |
| `fix/` | Correction de bug |
| `refactor/` | Refactoring |
| `perf/` | Optimisation performance |
| `docs/` | Documentation |
| `chore/` | Maintenance / config |

### Regles

- Le titre court est en **kebab-case**, en **anglais**, **max 5 mots**
- Le numero correspond au numero de l'issue GitHub associee

### Exemples

| Issue | Branche |
|-------|---------|
| #42 `[Feature] Ajout authentification OAuth` | `feat/42-add-oauth-authentication` |
| #17 `[Bug] Crash au login avec email +` | `fix/17-login-crash-email-plus` |
| #8 `[Docs] Documentation API publique` | `docs/8-public-api-documentation` |

---

## Commits

### Format

```
emoji type(scope): description en francais
```

### Table des types

| Emoji | Type | Usage |
|-------|------|-------|
| ✨ | feat | Nouvelle fonctionnalite |
| 🐛 | fix | Correction de bug |
| ♻️ | refactor | Refactoring |
| ⚡ | perf | Optimisation performance |
| 📝 | docs | Documentation |
| 🔧 | chore | Maintenance / config |

### Scope

Le scope correspond au module metier / DDD (`auth`, `billing`, `user`...).

- **Obligatoire** pour `feat`, `fix`, `refactor`, `perf`
- **Optionnel** pour `docs` et `chore`

### Body

Optionnel, uniquement si le changement n'est pas evident depuis le titre. Sous forme de liste a puces :

```
✨ feat(auth): ajout login OAuth Google

- integre le flow Authorization Code avec PKCE
- gere le refresh token via cookie HttpOnly
```

### Regles

- **Pas de signature** : ne jamais ajouter de trailer `Co-Authored-By` ou autre signature automatique dans les messages de commit

### Exemples

```
🐛 fix(billing): correction du calcul de TVA sur les abonnements annuels
```

```
🔧 chore: mise a jour des dependances npm
```

```
♻️ refactor(user): extraction du service de validation email
```

---

## Pull Requests

### Titre

Format : `[Type] Titre de l'issue (#numero)`

Exemples :

- `[Feature] Ajout authentification OAuth (#42)`
- `[Fix] Crash au login avec email contenant + (#17)`

### Body

```markdown
## Contexte

Lien vers l'issue et resume en 1-2 phrases de pourquoi ce changement est necessaire.

Closes #XX

## Ce qui a ete fait

Description claire de l'implementation. Pas une liste de fichiers — une explication de ce qui a change et pourquoi c'est fait comme ca.

## Fichiers modifies

- `chemin/fichier.ts` — ce qu'on y a fait
- `chemin/fichier.ts` — idem

## Points de review

Ce sur quoi le reviewer doit porter son attention en priorite. Decisions techniques non triviales, zones sensibles, compromis acceptes.

## Tests

Ce qui a ete teste, comment. Si rien n'a ete teste, le dire explicitement avec la raison.
```

### Commentaire d'iteration

Utilise uniquement lors de la mise a jour d'une PR existante. Liste tous les commits depuis la derniere mise a jour.

```markdown
## Mise a jour — [date]

### Nouveaux commits

- `emoji type(scope): description du commit 1`
- `emoji type(scope): description du commit 2`

### Changements ajoutes

- `chemin/fichier` — ce qui a change

### Impact

Resume en une phrase de l'ensemble de cette iteration.
```

S'il n'y a qu'un seul commit, le format reste identique — une seule entree dans la liste.

### Regles de formatage MCP GitHub

Ne jamais utiliser `\n` litteraux dans le parametre `body` des appels MCP GitHub (`create_pull_request`, `update_pull_request`, `add_issue_comment`). Utiliser de vrais sauts de ligne dans le texte, sinon les `\n` s'affichent en dur dans le markdown.
