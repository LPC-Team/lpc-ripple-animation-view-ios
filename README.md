# LPC Ripple Animation View iOS

Ce repository correspond à la bibliothèque d'affichage de l'animation ripple (exemple: cas d'erreur d'un formulaire) de tous les projets du Pot Commun sur iOS.

## Intégration

Animation en avant (reveal)

```
	let ripple = LPCRipple(viewController: self, startFrame: submitButton.frame)
	ripple.play()
```

Animation en arrière (unreveal)

```
	ripple.remove()
```

![image](./LPC_Ripple_Animation_View_Demo_1.png)

![image](./LPC_Ripple_Animation_View_Demo_2.png)

*Screenshot de l'apperçu de la bibliothèque.*