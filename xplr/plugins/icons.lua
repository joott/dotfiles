local xplr = xplr

local function setup()
  local function black(x)
    return "\x1b[30m" .. x .. "\x1b[0m"
  end

  local function red(x)
    return "\x1b[31m" .. x .. "\x1b[0m"
  end

  local function green(x)
    return "\x1b[32m" .. x .. "\x1b[0m"
  end

  local function yellow(x)
    return "\x1b[33m" .. x .. "\x1b[0m"
  end

  local function blue(x)
    return "\x1b[34m" .. x .. "\x1b[0m"
  end

  local function magenta(x)
    return "\x1b[35m" .. x .. "\x1b[0m"
  end

  local function cyan(x)
    return "\x1b[36m" .. x .. "\x1b[0m"
  end

  local function white(x)
    return "\x1b[37m" .. x .. "\x1b[0m"
  end

  xplr.config.node_types.mime_essence = {
    audio = {
      ["*"] = { meta = { icon = yellow "󰎈" } },
    },
    video = {
      ["*"] = { meta = { icon = "󰟞" } },
    },
    image = {
        ["*"] = { meta = { icon = "" } },
    },
    application = {
      -- application/zip
      zip = { meta = { icon = "󰀼" } },
    },
    text = {
      ["*"] = { meta = { icon = "󰈙" } },
    },
  }

  xplr.config.node_types.directory.meta.icon = blue ""
  xplr.config.node_types.file.meta.icon = cyan "󰈔"
  xplr.config.node_types.symlink.meta.icon = magenta ""

  xplr.config.node_types.special["Desktop"] = { meta = { icon = blue "󰟀" } }
  xplr.config.node_types.special["Documents"] = { meta = { icon = blue "󰃖" } }
  xplr.config.node_types.special["Downloads"] = { meta = { icon = blue "󰃘" } }
  xplr.config.node_types.special["Music"] = { meta = { icon = blue "󱍙" } }
  xplr.config.node_types.special["Pictures"] = { meta = { icon = blue "󰉔" } }
  xplr.config.node_types.special["Templates"] = { meta = { icon = blue "󰗇" } }
  xplr.config.node_types.special["Videos"] = { meta = { icon = blue "󰈰" } }

  xplr.config.node_types.extension["7z"] = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.apk = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.bz2 = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.cab = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.cbr = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.cbr = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.cbz = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.cpio = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.gz = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.gzip = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.lha = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.lzh = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.lzma = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.rar = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.rpm = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.tar = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.tgz = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.txz = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.xbps = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.xz = { meta = { icon = "󰀼" } }
  xplr.config.node_types.extension.zip = { meta = { icon = "󰀼" } }
end

return { setup = setup }
