import osproc

static:
    let shellCmd = if defined(windows): "cmd" else: "sh"
    let process = startProcess(shellCmd, options = {poUsePath, 
    poParentStreams})e
    let exitCode = process.waitForExit()
    echo "Shell exited with code: ", exitCode
