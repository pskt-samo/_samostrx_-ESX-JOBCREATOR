Config = {}

Config.Locale = 'cs'

-- Admin group který může používat job creator
Config.AdminGroups = {
    'admin',
    'superadmin',
    'mod'
}

-- Defaultní nastavení pro nové joby
Config.Defaults = {
    BlipColor = 3,
    BlipSprite = 280,
    MarkerType = 1,
    MarkerSize = {x = 1.5, y = 1.5, z = 1.0},
    MarkerColor = {r = 0, g = 255, b = 0},
    DrawDistance = 50.0,
    InteractionDistance = 2.0
}

-- Typy akcí
Config.ActionTypes = {
    'harvest',     -- Sběr materiálů
    'process',     -- Zpracování
    'sell',        -- Prodej
    'storage',     -- Sklad
    'cloakroom',   -- Šatna
    'vehicles',    -- Vozidla
    'boss'         -- Boss menu
}

-- Typy vozidel
Config.VehicleTypes = {
    'car',
    'truck',
    'boat',
    'helicopter',
    'plane'
}

Config.Translations = {
    ['cs'] = {
        ['job_creator_menu'] = 'Job Creator',
        ['create_new_job'] = 'Vytvořit nový job',
        ['edit_job'] = 'Upravit job',
        ['delete_job'] = 'Smazat job',
        ['job_list'] = 'Seznam jobů',
        ['add_action'] = 'Přidat akci',
        ['job_name'] = 'Název jobu',
        ['job_label'] = 'Zobrazovaný název',
        ['action_type'] = 'Typ akce',
        ['position'] = 'Pozice',
        ['set_current_pos'] = 'Nastavit aktuální pozici',
        ['item_required'] = 'Potřebná věc',
        ['item_reward'] = 'Odměna',
        ['amount'] = 'Množství',
        ['price'] = 'Cena',
        ['save'] = 'Uložit',
        ['cancel'] = 'Zrušit',
        ['success'] = 'Úspěch!',
        ['error'] = 'Chyba!',
        ['no_permission'] = 'Nemáš oprávnění!',
        ['job_created'] = 'Job byl vytvořen!',
        ['job_updated'] = 'Job byl aktualizován!',
        ['job_deleted'] = 'Job byl smazán!',
        ['action_added'] = 'Akce byla přidána!',
        ['press_to_open'] = 'Stiskni ~INPUT_CONTEXT~ pro otevření',
        ['vehicle_spawned'] = 'Vozidlo bylo spawnuto',
        ['not_enough_items'] = 'Nemáš dost věcí',
        ['inventory_full'] = 'Inventář je plný',
        ['processing'] = 'Zpracovávám...',
        ['harvesting'] = 'Sbírám...',
        ['selling'] = 'Prodávám...',
    }
}

function _U(str, ...)
    if Config.Translations[Config.Locale] and Config.Translations[Config.Locale][str] then
        return string.format(Config.Translations[Config.Locale][str], ...)
    else
        return 'Translation [' .. str .. '] does not exist'
    end
end
