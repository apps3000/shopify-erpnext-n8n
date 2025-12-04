# 🔄 GitHub Project Issue Workflow: Epic → Feature → Task

This repository is set up with a **hierarchical issue tracking system** and GitHub Actions that enable automatic linking and progress tracking between:

```
📘 Epic → ✨ Feature → 🛠 Task
```

It supports **semantic hierarchy**, **auto-linking**, and **progress updates** triggered by pull requests or issue creation.

---

## 📋 STRUCTURE & WORKFLOW

### 🔁 Auto Linking
- When creating a **feature** or **task**, you can include in the issue body:
  ```md
  Part of: #<PARENT_ISSUE_NUMBER>
  ```
- This will automatically:
  - Add a back-reference comment on the parent issue
  - Apply a contextual label (`child: task` or `child: feature`)

### 📈 Auto Progress Tracking
- When a **pull request** closes a task (or feature), the parent issue is updated automatically:
  - A comment is posted on the parent issue (feature or epic)
  - This helps track which tasks/features were completed via PRs

---

## 🧠 Issue Types & Labels

| Type     | Label         | Description                         |
|----------|---------------|-------------------------------------|
| Epic     | `epic`        | High-level initiative               |
| Feature  | `feature`     | A user-facing deliverable           |
| Task     | `task`        | A small unit of work                |
| Child    | `child: task` / `child: feature` | Auto-assigned on linking |

---

## 🧩 Enabled Workflows

| File                     | Purpose                                 |
|--------------------------|-----------------------------------------|
| `.github/workflows/auto-parent-link.yml` | Auto-links issues to parents and applies `child:` labels |
| `.github/workflows/epic-progress.yml`    | Updates epics when linked features are closed             |
| `.github/workflows/feature-progress.yml` | Updates features when linked tasks are closed             |

---

## 📝 Issue Templates

Located in `.github/ISSUE_TEMPLATE/`:
- `bug.yml`: For reporting bugs
- `feature.yml`: For feature suggestions
- `epic.yml`: To define larger initiatives
- `task.yml`: For granular work units
- `chore.yml`, `docs.yml`, `qa.yml`: Supporting workflows

---

# 🇩🇪 DEUTSCH: GitHub-Issue-Workflow – Epic → Feature → Task

Dieses Repository verwendet ein **mehrstufiges System**, um Arbeitsaufgaben in Epics, Features und Tasks zu strukturieren. Automatisierte Workflows stellen sicher, dass Verknüpfungen und Fortschritte transparent bleiben.

---

## 📋 STRUKTUR & ABLÄUFE

### 🔁 Automatische Verlinkung
Wenn du in einer neuen Issue schreibst:

```md
Part of: #<PARENT_ISSUE_NUMMER>
```

… dann passiert automatisch:
- Eine Rückverlinkung in der übergeordneten Issue (Kommentar)
- Das Hinzufügen eines Labels (`child: task` oder `child: feature`)

### 📈 Automatisches Fortschritts-Tracking
Wenn ein Pull Request eine verknüpfte Task oder Feature schließt:
- Die übergeordnete Issue (Feature oder Epic) erhält einen Kommentar
- Dies ermöglicht transparentes Fortschrittsmonitoring

---

## 🧠 Issue-Typen & Labels

| Typ      | Label             | Beschreibung                          |
|----------|-------------------|----------------------------------------|
| Epic     | `epic`            | Großes Ziel oder Meilenstein           |
| Feature  | `feature`         | Funktion oder Modul für Endnutzer      |
| Task     | `task`            | Kleine, technische oder organisatorische Aufgabe |
| Kind     | `child: task`, `child: feature` | Wird automatisch gesetzt bei Verlinkung |

---

## 🧩 Aktive Workflows

| Datei                         | Zweck                                     |
|------------------------------|--------------------------------------------|
| `auto-parent-link.yml`       | Erkennt `Part of: #<id>` und verlinkt Issues |
| `epic-progress.yml`          | Meldet geschlossene Features an Epics      |
| `feature-progress.yml`       | Meldet geschlossene Tasks an Features      |

---

## 📝 Issue-Vorlagen

Unter `.github/ISSUE_TEMPLATE/` findest du:
- `epic.yml`, `feature.yml`, `task.yml`: Die Hauptvorlagen
- `bug.yml`, `chore.yml`, `docs.yml`, `qa.yml`: Unterstützend

---

## 🏁 Empfehlung

Halte dich an dieses Strukturprinzip:

```
📘 Epic → ✨ Feature → 🛠 Task
```

🔗 Verwende `"Part of: #<id>"` in den Beschreibungen  
✅ Nutze Labels zur Klarheit  
🤖 Automatisierung erledigt den Rest

---

Happy building! 🚀

---

## ✅ Pull Request Template

A reusable PR template helps maintain consistency, clarity, and code quality across all contributions.

Key features:
- Structured sections for purpose, motivation, testing, and acceptance
- Checklists for authors and reviewers
- Built-in guidance for AI code reviewers
- Works across all stacks (backend, frontend, docs, infra)

You can find it at `.github/PULL_REQUEST_TEMPLATE.md`.

---

## ✅ Pull Request-Vorlage (Deutsch)

Ein universelles PR-Template sorgt für klare, einheitliche und nachvollziehbare Code-Beiträge im Team.

Besondere Merkmale:
- Klare Struktur für Ziel, Kontext, Tests und Abnahme
- Checklisten für Autor:innen und Reviewer
- Integrierte Hinweise für KI-Code-Reviews
- Funktioniert mit jedem Tech-Stack (Backend, Frontend, Docs, usw.)

Dateipfad: `.github/PULL_REQUEST_TEMPLATE.md`
