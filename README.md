# Platformer 2D — Godot 4

Un petit jeu de plateforme 2D réalisé avec **Godot Engine 4**.  
Le joueur se déplace et saute de plateforme en plateforme. S’il **tombe dans le vide**, on affiche une scène **Game Over** 


---

## 🚀 Prérequis
- **Godot 4.5+** (version stable recommandée)
- Clavier (touches configurées dans l’Input Map)

---

## 📁 Structure du projet
```
res://
├── Level/
│   ├── level.tscn
│   └── map/                 # ressources pour le décor / tilemap
├── Player/
│   ├── player.tscn
│   └── player.gd            # script du joueur
├── Menu/
│   ├── menu.tscn
│   └── menu.gd (optionnel)
├── Game_over/
│   ├── game_over.tscn
│   └── game_over.gd (optionnel)
└── assets/                   # sprites (ex : tile_0002.png, tilemap_packed.png, ...)
```

---

## ▶️ Lancer le jeu
1. Ouvrez le dossier du projet dans **Godot 4**.
2. Dans le panneau **Projet → Paramètres du projet → Général → Application**, définissez la **scène principale** (ex : `res://Menu/menu.tscn`).
3. Appuyez sur **F5** pour exécuter.

---

## 🎮 Contrôles (Input Map)
Dans **Projet → Paramètres du projet → Input Map**, vérifiez que ces actions existent :

- `move_left`  → `A` ou `←`
- `move_right` → `D` ou `→`
- `jump`       → `Espace`

---

## ⚙️ Réglages utiles
- **Hauteur de saut** : rendez `JUMP_VELOCITY` plus négatif (ex. `-360.0`) pour sauter plus haut.
- **Sensation de chute** : augmentez `FALL_MULT` (1.8 → 2.2) pour un jeu moins “flottant”.
- **Petit saut** : augmentez `CUT_MULT` (3.0 → 3.5) si le joueur garde trop d’élan en relâchant.
- **Vitesse max de chute** : `MAX_FALL_SPEED` (1200–1800 selon l’échelle de votre niveau).
- **Limite de mort** : modifiez `position.y > 500.0` selon la taille de votre niveau.


## 🧩 Dépannage
- **`Parameter "new_scene" is null` / `node count is 0`**  
  - Le chemin de scène est faux (attention à la casse sur Linux).  
  - La scène `.tscn` est vide ou non sauvegardée. Ouvrez-la et assurez-vous d’avoir un **nœud racine** puis **sauvegardez**.

- **Le joueur traverse certaines plateformes**  
  - Vérifiez les **Layer/Mask** de collision du `TileMap` et du `Player` (Collider).  
  - Utilisez `move_and_slide()` sur un `CharacterBody2D` (ce projet le fait déjà).

---

## 🛠️ Export
1. **Projet → Exporter** et ajoutez une **préréglage** (Windows / Linux / HTML5…).  
2. Vérifiez la **scène principale** et exportez le bundle.

---

## 📝 Roadmap / idées
- HUD simple (vies/monnaie/temps)   
- **Points de contrôle** (Checkpoints)  
- **Ennemis** & dégâts  
- **Sons** (saut, chute, victoire) et musique


