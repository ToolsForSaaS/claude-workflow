# Setup Templates — Reference

## Placeholders

Les templates deployes par `/setup` utilisent des placeholders HTML pour marquer les valeurs a remplir :

```
<!-- valeur attendue -->
```

## Placeholders courants

| Template | Placeholder | Detection |
|----------|-------------|-----------|
| workflow-config | `<!-- commande lint -->` | scripts.lint dans package.json |
| workflow-config | `<!-- commande format -->` | scripts.format dans package.json |
| workflow-config | `<!-- commande test -->` | scripts.test dans package.json |
| workflow-config | `<!-- commande build -->` | scripts.build dans package.json |
| workflow-config | `<!-- plateforme git -->` | remote origin URL (github.com, gitlab.com, gitea) |
| workflow-config | `<!-- issue tracker -->` | MCP configures (.mcp.json) |
| workflow-config | `<!-- canal notification -->` | MCP Slack/Discord configures |
| tech-stack | `<!-- langage principal -->` | package.json, Cargo.toml, go.mod, pyproject.toml |
| tech-stack | `<!-- framework -->` | dependencies dans package.json |
| tech-stack | `<!-- base de donnees -->` | dependencies (pg, mysql2, prisma, drizzle) |
| tech-stack | `<!-- branche par defaut -->` | git symbolic-ref refs/remotes/origin/HEAD |

## Strategie de detection

1. Lire `package.json` (scripts, dependencies, devDependencies)
2. Lire les fichiers de config (tsconfig.json, biome.json, eslint.config.*)
3. Analyser la structure des dossiers (src/, app/, packages/)
4. Detecter le remote git (GitHub, GitLab, Gitea)
5. Verifier les MCP configures dans .mcp.json ou .mcp.exemple.json

## Questions de fallback

Pour chaque placeholder non detecte automatiquement, poser une question courte et specifique :

- "Quelle commande pour lancer les tests ?" (pas "Comment configurez-vous vos tests ?")
- Proposer un choix quand possible : "Lint avec biome ou eslint ?"
- Accepter la reponse et ne pas reposer la meme question
