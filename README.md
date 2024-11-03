**Házi irányelvek:**

A specifikáció teljesítése mellett tartsátok be a következő irányelveket is a program megírása során:<br>

+ Igyekezzetek jól tagolt, könnyen átlátható kódot írni.
+ Tartsátok be a .c és .h fájlokra vonatkozó konvenciókat: a .h fájlok ne tartalmazzanak függvény-implementációkat (ez nem esztétikai kérdés, hanem irányelv, ami könnyebbé teszi a moduláris programfejlesztést nagyobb méretű projekteknél).
+ A logikailag jól körülhatárolt funkciókat tegyétek külön segédfüggvényekbe, a segédfüggvényeket pedig tegyétek egy külön .c fájlba, és ne a main() függvénnyel közös fájlba.
+ A bemutatásra az összes megírt forráskódot hozzátok magatokkal. Gyorsabb az ellenőrzés, ha a teljes projektet elhozzátok.
+ Ha szoftveres pergésmentesítést alkalmaz, és a feladat szempontjából kiritikus a lenyomás pillanata, figyeljen arra, hogy ehhez ne adódjon hozzá a pergésmentesítés ideje.
+ A megszakítási rutinban csak a legszükségesebb műveleteket szabad implementálni. Megszakításban kerülendők az eseményre várakozó, blokkoló utasítások.
