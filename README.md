# FiveM ESX Job Creator

Kompletní job creator pro ESX framework, podobný lunaru jobcreator s plnou editací markerů, blipů a všech nastavení.

## Funkce

- ✅ Vytváření vlastních jobů bez znalosti kódu
- ✅ Různé typy akcí (harvest, process, sell, storage, cloakroom, vehicles, boss)
- ✅ Grafické menu pro správu
- ✅ Automatické ukládání do databáze
- ✅ Markery a blipy na mapě
- ✅ Kompletní systém pro zpracování položek
- ✅ Support pro vehicle spawning
- ✅ Šatna a storage integrace
- ✅ Boss menu integrace
- ✅ **NOVÉ:** Pokročilá editace markerů (barva, velikost, typ)
- ✅ **NOVÉ:** Pokročilá editace blipů (barva, ikona, velikost, název)
- ✅ **NOVÉ:** Vlastní RGB color picker
- ✅ **NOVÉ:** Editace existujících akcí
- ✅ **NOVÉ:** Presety pro rychlé nastavení

## Instalace

1. Zkopíruj složku do `resources/[esx]`
2. Přidej do `server.cfg`: `ensure jobcreator`
3. Importuj SQL soubor `scripts/install.sql` do databáze
4. Ujisti se, že máš nainstalované závislosti:
   - es_extended
   - oxmysql
   - ox_inventory (volitelné)

## Použití

### Pro administrátory:
- Použij příkaz `/jobcreator` v hře
- Vytvoř nový job nebo uprav existující
- Přidej akce (harvest, process, sell, atd.)
- Nastav pozice kliknutím na tlačítko
- **NOVÉ:** Klikni na existující akci pro otevření pokročilého editoru
- **Editace markerů:**
  - 🎨 Barva - 9 presetů nebo vlastní RGB (0-255)
  - 📐 Velikost - Nastavení X/Y/Z nebo 4 presety (malý, střední, velký, extra velký)
  - 🎯 Typ - 8 různých typů markerů (válec, kruh, šipky, checkpoint, atd.)
- **Editace blipů:**
  - 🎨 Barva - 9 barev blipů (bílá, červená, zelená, modrá, žlutá, atd.)
  - 🎯 Ikona - 14 různých ikon (práce, obchod, garáž, šatna, sklad, atd.)
  - 📏 Velikost - Vlastní škálování (0.5-2.0)
  - 🏷️ Vlastní název blipu
  - ❌ Možnost vypnout blip
- Ulož job

### Pro hráče:
- Markery se automaticky zobrazí hráčům s příslušným jobem
- Stiskni E u markeru pro interakci
- Různé typy akcí:
  - **Harvest** - Sběr surovin
  - **Process** - Zpracování surovin
  - **Sell** - Prodej produktů
  - **Storage** - Přístup k úložišti
  - **Cloakroom** - Převlékání
  - **Vehicles** - Spawn vozidel
  - **Boss** - Boss menu

## Konfigurace

Všechna nastavení najdeš v `config.lua`:
- Admin skupiny
- Překlady
- Defaultní nastavení markerů a blipů
- Typy akcí a vozidel

## Příklad vytvoření jobu

### Základní job (Dřevorubec):
1. `/jobcreator`
2. Vytvoř nový job -> Zadej "drevorubar" jako název
3. Přidej akci "harvest" -> Nastav pozici -> Nastav odměnu "wood"
4. Přidej akci "process" -> Nastav požadovaný item "wood" -> Odměna "wood_plank"
5. Přidaj akci "sell" -> Požadovaný item "wood_plank" -> Cena 50
6. Ulož job

### Editace markerů a blipů:
1. `/jobcreator` -> Upravit job -> Vyber job
2. Klikni na existující akci (např. "📝 Sběr dřeva (Upravit)")
3. **Pro změnu barvy markeru:**
   - Klikni na "🎨 Nastavit barvu markeru"
   - Vyber preset (např. "🟢 Zelená") nebo "🎨 Vlastní barva"
   - Pro vlastní: zadej RGB hodnoty (0-255)
4. **Pro změnu velikosti markeru:**
   - Klikni na "📐 Nastavit velikost markeru"
   - Vyber preset nebo nastav vlastní X/Y/Z hodnoty
5. **Pro změnu blipu:**
   - Klikni na "🗺️ Nastavit blip"
   - Změň barvu, ikonu, velikost nebo název
6. Ulož změny

### Pokročilý job s vozidly:
1. Vytvoř job "kurier"
2. Přidej akci "vehicles"
3. Nastav spawn point (postav se kam má spawnat auto)
4. Přidej vozidlo - Model: "stockade", Label: "Dodávka"
5. Přidej další vozidlo - Model: "boxville", Label: "Velká dodávka"
6. Nastav blip - Ikona: "🚗 Garáž (50)", Barva: "🔵 Modrá"
7. Ulož job

## Dostupné markery (typy)

- **Typ 0** - Kruh na zemi
- **Typ 1** - Válec (defaultní)
- **Typ 2** - Šipka nahoru
- **Typ 3** - Šipka dolů
- **Typ 4** - Checkpoint
- **Typ 25** - Kroužek
- **Typ 27** - Vertikální válec
- **Typ 28** - Debuff

## Dostupné ikony blipů

- 280 - Práce 💼
- 52 - Obchod 🏪
- 50 - Garáž 🚗
- 73 - Šatna 👔
- 478 - Sklad 📦
- 108 - Banka 💰
- 61 - Nemocnice 🏥
- 60 - Policie 👮
- 313 - Střelnice 🔫
- 106 - Restaurace 🍔
- 361 - Benzínka ⛽
- 446 - Mechanik 🛠️
- 40 - Dům 🏠
- 1 - Úkol 🎯

## Podpora

V případě problémů:
- Zkontroluj F8 konzoli pro chyby
- Ujisti se, že máš všechny závislosti
- Zkontroluj že SQL tabulka byla vytvořena
- Ověř že máš admin oprávnění v Config.AdminGroups

## Licence

MIT License - Volně použitelné pro jakýkoliv FiveM server
