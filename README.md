
# Platformer 2D – Déplacements du joueur (Débutant)


Un mini-projet Godot **très simple** pour apprendre les bases d’un platformer 2D : un joueur qui se déplace à gauche/droite et saute, avec **3 plateformes** fixes.

---

## 🎮 Contrôles

- `Q` : aller à **gauche**
- `D` : aller à **droite**
- `Espace` : **sauter**

> Remarque : les touches `Q`/`D` sont adaptées à un clavier **AZERTY** (français).

---

## ✨ Fonctionnalités

- Mouvement horizontal simple (accélération/arrêt basiques)
- Saut unique (sans double-saut)
- 3 plateformes statiques
- Caméra 2D cadrée sur la zone de jeu
- Projet minimal pour **comprendre** et **modifier** facilement

---

## 🧰 Prérequis

- **Godot 4.5** (ou supérieur)
- OS : Windows / macOS / Linux

> Si vous utilisez une autre version de Godot, ouvrez le projet ; l’éditeur proposera une migration automatique si nécessaire.

---

## ▶️ Lancer le projet

1. Ouvrez **Godot** puis **Import > Browse** et sélectionnez le fichier `project.godot` du dépôt.
2. Cliquez sur **Run** (touche `F5`) pour jouer.
3. La scène principale s’appelle souvent `level.tscn` (ou `Level`).

---

## 🗂️ Structure suggérée

```
res://
├─ Level/           # Scène du niveau (plateformes, limites, caméra)
│  └─ level.tscn
├─ Player/          # Scène + script du joueur
│  ├─ player.tscn
│  └─ player.gd
├─ assets/          # (optionnel) sprites, icônes
└─ project.godot
```

---

## ⚙️ Paramètres importants (idées)

- Vitesse de déplacement : `move_speed` (ex. 200–300)
- Force du saut : `jump_velocity` (ex. -400 à -600)
- Gravité : `gravity` (ex. 900–1300)

> Ajustez ces valeurs dans `player.gd` pour trouver un feeling qui vous plaît.

---

## ✅ Objectifs pédagogiques

- Comprendre la **Kinematic/CharacterBody2D** (détection du sol, `velocity`)
- Lire/modifier un **script GDScript** simple
- Gérer les **entrées clavier** dans Godot (`Input.is_action_pressed` …)
- Placer et configurer des **StaticBody2D/CollisionShape2D** pour les plateformes

---

## 🚀 Aller plus loin (TODO)

- Ajouter un **double-saut**
- Mettre des **animations** (idle/run/jump)
- Ajouter des **collectibles** (pièces, étoiles)
- Créer un **menu** de démarrage et un **UI** de score/temps

