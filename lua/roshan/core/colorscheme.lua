local status, _ = pcall(vim.cmd, "colorscheme dracula")

if not status then
  print("Colorscheme installed xaina gothey!")
  return
end

