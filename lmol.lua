-- Configuration
local modemPresent = false -- Set to true if a modem is connected

-- Function to display an error message
local function displayError(message)
  term.clear()
  term.setCursorPos(1, 1)
  print(message)
  print("Press any key to continue...")
  os.pullEvent("key")
end

-- Loading with progress bar
term.clear()
term.setCursorPos(1, 1)
print("Loading OS")
for i = 1, 51 do
  sleep(0.1)
  term.write("-")
end
print("\n\nIf you get an error, report to the creator of the OS, not me.")
print("If this is a bootloader error, report to me.")
print("If you want to remove that line, it's lines 20-25.")
print("by lebg2999")

-- Function to display the boot menu
local function displayBootMenu()
  term.clear()
  term.setCursorPos(1, 1)
  print("---------------------------------------------------")
  print("Pick an OS")
  print("---------------------------------------------------")
  print("[1] Your OS")
  print("[2] Your 2nd OS")
  print("[3] Reboot")
  print("[4] Mini OS")
  print("\nBootloader version 1.2.7")
  print("by lebg2999")
end

-- Function to display the mini OS menu
local function displayMiniOSMenu()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== Startup Menu ===")
  print("1. About")
  print("2. Calculator")
  print("0. Quit")
  write("Select an option: ")
end

-- Function to display the "About" application
local function displayAbout()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== About ===")
  print("This is an OS integrated into the bootloader.")
  print("Operating System: ComputerCraft")
  print("Version: 1.0")
  print("Developer: Lebg2999")
  print()
  write("Press any key to return to the menu.")
  os.pullEvent("key")
end

-- Function to display the "Calculator" application
local function displayCalculator()
  term.clear()
  term.setCursorPos(1, 1)
  print("=== Calculator ===")
  write("Enter a calculation: ")
  local input = read()
  local result = load("return " .. input)()
  print("Result: " .. result)
  print()
  write("Press any key to return to the menu.")
  os.pullEvent("key")
end

-- Main loop for mini OS
local function miniOS()
  while true do
    displayMiniOSMenu()
    local choice = tonumber(read())
    
    if choice == 1 then
      displayAbout()
    elseif choice == 2 then
      displayCalculator()
    elseif choice == 0 then
      break -- Quit the program
    else
      print("Invalid option. Please try again.")
      sleep(2)
    end
  end
end

-- Check for key press during loading
if os.pullEvent("key") then
  displayBootMenu()
  local choice = tonumber(read())
  
  if choice == 1 then
    -- Code for first OS
    while true do
      -- GUI code for the first OS
    end
  elseif choice == 2 then
    -- Code for second OS
  elseif choice == 3 then
    -- Reboot
    shell.run("reboot")
  elseif choice == 4 then
    -- Mini OS
    miniOS()
  else
    displayError("Invalid choice.")
  end
else
  term.clear()
  term.setCursorPos(1, 1)
  print("Starting Windows 8.1...")
  sleep(2)
  -- Code for first OS
  while true do
    -- GUI code for the first OS
  end
end


