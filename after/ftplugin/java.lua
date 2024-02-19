local java_21_path = "/usr/lib/jvm/java-21-openjdk/bin/java"
local jdtls_dir = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local jar_path = jdtls_dir .. "/plugins/org.eclipse.equinox.launcher_1.6.600.v20231106-1826.jar"
local config_dir = jdtls_dir .. "/config_linux"
local lombok_path = jdtls_dir .. "/lombok.jar"

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace_root/" .. project_name
os.execute("mkdir " .. workspace_dir)

local config = {
	cmd = {

    java_21_path,

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-javaagent:' .. lombok_path,
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    '-jar', jar_path,
    '-configuration', config_dir,
    '-data', workspace_dir
  },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
