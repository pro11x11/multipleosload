-- Configuration
local modemPresent = false -- Changer en true si un modem est connecté

-- Fonction pour afficher un message d'erreur
local function afficherErreur(message)
  term.clear()
  term.setCursorPos(1, 1)
  print(message)
  print("press any key to continue...")
  os.pullEvent("key")
end

-- Chargement avec barre de progression
term.clear()
term.setCursorPos(1, 1)
print("loading os")
for i = 1, 51 do
  sleep(0.1)
  term.write("-")
  print("")
  print("")
  print("if you get an error report to the creator of os not me")
  print("if this is an bootloader error report to me")
  print("if you want to remove that the line are 20-25")
  print ("by lebg2999")
  
end

-- Vérification de l'appui sur une touche pendant le chargement
if os.pullEvent("key") then
  term.clear()
  term.setCursorPos(1, 1)
  print("---------------------------------------------------")
  print("pick an os")
  print("---------------------------------------------------")
  print("[1] your os")
  print("[2] your 2 os")
  print("[3] reboot")
  print("[4] mini os")
  print("")
  print("bootloader version 1.2.6")
  print("by lebg2999")
  local choice = tonumber(read())
  if choice == 1 then
--code for first os
  elseif choice == 2 then
--code for 2 os
  elseif choice == 3 then --reboot
  shell.run("reboot")
  elseif choice == 4 then --mini os (france)
  -- Fonction pour afficher le menu de démarrage
local function afficherMenuDemarrage()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== Menu de démarrage ===")
  print("1. À propos")
  print("2. Calculatrice")
  print("0. Quitter")
  write("Sélectionnez une option: ")
end

-- Fonction pour afficher l'application "À propos"
local function afficherAPropos()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== À propos ===")
  print("Ceci est un os integré au bootloader.")
  print("Système d'exploitation: Computercraft")
  print("Version: 1.0")
  print("Développeur: Lebg2999")
  print()
  write("Appuyez sur n'importe quelle touche pour revenir au menu.")
  os.pullEvent("key")
end

-- Fonction pour afficher l'application "Calculatrice"
local function afficherCalculatrice()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== Calculatrice ===")
  write("Entrez un calcul: ")
  local input = read()
  local result = load("return " .. input)()
  print("Résultat: " .. result)
  print()
  write("Appuyez sur n'importe quelle touche pour revenir au menu.")
  os.pullEvent("key")
end

-- Boucle principale
while true do
  afficherMenuDemarrage()
  local choix = tonumber(read())
  
  if choix == 1 then
    afficherAPropos()
  elseif choix == 2 then
    afficherCalculatrice()
  elseif choix == 0 then
    break  -- Quitter le programme
  else
    print("Option invalide. Veuillez réessayer.")
    sleep(2)
  end
end

else
    afficherErreur("invalid ")
  end
else
  term.clear()
  term.setCursorPos(1, 1)
  print("Démarrage de Windows 8.1...")
  sleep(2)
  -- also code for first os
end

-- Code for first os
while true do
  -- for gui
end

