return function(module_path, package_name)
  local is_package, package = pcall(require, package_name)
  if is_package then
    require(module_path)(package)
  end
end
