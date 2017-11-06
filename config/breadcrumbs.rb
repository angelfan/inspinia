crumb :root do
  link '主页', root_path
end

crumb :angel_passes do
  link 'AngelPass', angel_passes_path
  parent :root
end
