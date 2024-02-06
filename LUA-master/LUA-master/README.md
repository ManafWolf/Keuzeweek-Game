# LUA point and click adventure
In deze repository staat een engine gemaakt in C++ waarin de gameplay geprogrammeerd kan worden in LUA.
Om hiermee aan de slag te gaan is er het volgende stappenplan:
1. Download repository (rechts boven staat download of via je shell: git clone https://github.com/jwissink/LUA/)
2. Open `Script.LUA` en lees de text en functies
3. Open `SFMLCore.exe` en bekijk wat de code doet
4. Maak een backup van het bestand `Script.lua` en noem deze `BackupScript.lua`. Deze kan je gebruiken als referentie
5. Maak nu zelf een `Script.lua` bestand aan (rechtermuisknop->nieuw->textDocument->`new text document.txt` hernoemen naar `Script.lua`) en maak een avontuur met behulp van de volgende functies:

* setBackground

   Zet de achtergond naar een plaatje in de Textures folder

* createButton 

   Voegt een knop toe aan het spel

* createTextfield

   Voegt een textvlak toe aan het spel

* CLS

   Maakt het scherm leeg

* exitGame

   Sluit het spel

* playSound

   Speelt een geluid uit de Sounds folder (wav)

* playMusic

   Speelt muziek uit de Music folder (wav)

## uitleg
Om de functie aan te roepen moeten er vaak argumenten mee gegeven worden. Zoals bijvoorbeeld welk plaatje weer gegeven moet worden of welke muziek afgespeeld moet worden. De argumenten in code worden mee gegeven met ( ).
De functie createButton vraagt 2 argumenten. Dit wordt met een comma aangegeven (zie voorbeelden)

### voorbeelden:
* `setBackground("myAmazingBackground.jpg)`
* `playMusic("someCoolMusic.wav)`
* `playSound("myShootingSound.wav)`
* `createTextfield("SomeCrazyText")`
* `createButton("Waar gaat de knop naartoe", "wat staat er op de knop?")`

#### Tutorial
Deze tutorial gaat ervan uit dat je de repository al hebt gedownload en uitgepakt op je laptop.

Hier staat een stappenplan om een begin te maken:
1. Open het bestand `Script.lua` met een text editor zoals Notepad++ of visual studio en zorg ervoor dat deze compleet leeg is.
2. voeg het volgende stukje code toe aan je `Script.lua`:
```lua
function story(aName)
    if(aName == "start") then
        createTextfield("Dit is mijn textfield")
    end
end
```
Het spel start altijd bij de functie `story` met als argument `start`

3. Start `SFMLCore.exe` en bekijk wat `createTextfield` heeft gedaan
4. Je zou het woord `start` in het volgende stukje code kunnen zien als een kamer. Het spel begint in de kamer `start`:
```lua
function story(aName)
    if(aName == "start") then
        createTextfield("Dit is mijn textfield")
    end
end
```
Om een nieuwe kamer aan te maken moet er een knop zijn die daarna wijst:

5. Maak een knop aan met `createButton` en geef als argument mee (als voorbeeld) `"woonkamer"` wat er uitziet als volgt:
```lua
function story(aName)
    if(aName == "start") then
        createTextfield("Dit is mijn textfield")
        createButton("woonkamer", "dit is een knop naar de woonkamer")
    end
end
```

6. Start `SFMLCore.exe` opnieuw en bekijk het resultaat
7. Nu moeten we de woonkamer nog aanmaken in de code. De kamer wordt meegegeven aan de functie story in het argument aName. Dit kunnen we met een `if` statement afvangen:

```lua
function story(aName)
    if(aName == "start") then
        createTextfield("Dit is mijn textfield")
        createButton("woonkamer", "dit is een knop naar de woonkamer")
    end
    if(aName == "woonkamer") then
        createTextfield("dit is de woonkamer")
        createButton("start", "dit is een knop terug naar start")
    end
end
```

8. Open `SFMLCore.exe` en bekijk het resultaat
9. Nu valt het op dat de knoppen van de vorige kamer er nog staan. Om te zorgen dat elke kamer leeg begint kunnen we de functie `CLS()` gebruiken. Dat staat voor clear screen:

```lua
function story(aName)
    if(aName == "start") then
        CLS()
        createTextfield("Dit is mijn textfield")
        createButton("woonkamer", "dit is een knop naar de woonkamer")
    end
    if(aName == "woonkamer") then
        CLS()
        createTextfield("dit is de woonkamer")
        createButton("start", "dit is een knop terug naar start")
    end
end
```
10. Maak met behulp van knoppen, textfields, textures en geluiden een nieuw avontuur.
