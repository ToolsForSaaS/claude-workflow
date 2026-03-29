# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Références traçables dans les entrées de changelog : SHA court, PR et issues résolues en fin de ligne (#18, PR #19, 81ff178)

### Changed

- Détection élargie des mots-clés GitHub pour les issues résolues : `close(s|d)`, `fix(es|ed)`, `resolve(s|d)` (#18, PR #19, 3d2c7ef)
- Préfixe `PR #N` pour distinguer les PR des issues dans les références (#18, PR #19, 3d2c7ef)

## [1.3.0] - 2026-03-29

### Added

- Skill `/audit-naming` pour auditer les conventions de nommage du projet avec référentiel dédié (#14, PR #15, 98f0c8f)
- Intégration du référentiel audit-naming dans `/pipe-review` (#14, PR #15, fb87edf)
- Skill `/pipe-changelog` pour générer et maintenir le CHANGELOG avec référentiel de conventions (#16, PR #17, b606aa7)

### Changed

- Chaînage du pipeline : `/pipe-test` → `/pipe-changelog` → `/pipe-pr` (#16, PR #17, 8c88aa8)

### Fixed

- Séquence git explicite dans `/pipe-code` pour la création de branche (PR #13, 4b4779b)

## [1.2.4] - 2026-03-28

### Fixed

- Compatibilité sandbox : remplacement de tous les `ls` inline par `Glob/Read` dans l'ensemble des skills (4e3b0a4)

## [1.2.3] - 2026-03-28

### Fixed

- Compatibilité sandbox : remplacement de `ls` par `Glob` dans `/create-skill` (52ee483)

## [1.2.2] - 2026-03-27

## [1.2.1] - 2026-03-27

### Removed

- Skill `/setup-init` supprimé (fonctionnalité intégrée dans `/setup`) (a7bb330)

## [1.2.0] - 2026-03-27

### Changed

- Conformité de tous les skills au template canonique unifié (37013b6)

### Fixed

- Compatibilité sandbox : remplacement de `ls` par `Glob` dans `/audit-skills` (72e5f8c)

## [1.1.0] - 2026-03-27

### Added

- Pattern sub-agents dans `/create-skill` pour analyse multi-fichiers (81c5cda)
- Skill `/audit-skills` extrait de `/create-skill` pour évaluer la maturité AI-Driven Development (20088cc)

## [1.0.0] - 2026-03-27

### Added

- Pipeline AI-Driven Development : `/pipe-hello` → `/pipe-plan` → `/pipe-code` → `/pipe-review` → `/pipe-test` → `/pipe-pr` → `/pipe-notifier` (60bcaba)
- Skill `/setup` pour configurer un projet complet (#5, PR #9, 699e585)
- Skill `/setup-mcp` pour configurer les serveurs MCP avec catalogue de référence (#1, PR #2, 667604f)
- Skill `/setup-templates` pour initialiser les templates projet-spécifiques (9f156fd)
- Skill `/setup-ui-ux` pour générer les conventions UI/UX (#1, PR #2, 00d17bb)
- Skill `/create-skill` pour créer de nouveaux skills au format `directory/SKILL.md` (9e23bf6)
- Conventions frontend (`/frontend-code-conventions`) et git (`/git-conventions`) (00d17bb)
- Architecture plugin avec manifest `plugin.json` et skills distribués (#3, PR #7, c201bf6)
- Template canonique unifié pour les skills avec chargement progressif (843c650)
- Préfixage des skills par catégorie (`pipe-*`, `create-*`, `setup-*`, `audit-*`) (#4, PR #8, 0835efc)
- Installation via marketplace (951edeb)

[Unreleased]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.3.0...HEAD
[1.3.0]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.2.4...v1.3.0
[1.2.4]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.2.3...v1.2.4
[1.2.3]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.2.2...v1.2.3
[1.2.2]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/ToolsForSaaS/claude-workflow/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/ToolsForSaaS/claude-workflow/releases/tag/v1.0.0
