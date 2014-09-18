Vagrant VM that runs clean installs of node components, and tests that they work.

For this to work repeatedly, DO NOT install anything outside of npm. We blow away the npm folders before every test. That's how we ensure a clean setup without rebuilding the vm every time.

If you do install something else -- don't -- make sure to remove it cleanly at the end of your test script.

To run:

install vagrant (with virtual box)

then install the binary:

```npm install dry-test-vm```

run ```dry-test-vm <path to test script>```

It will take a while the first time, it'll be faster after the first run.
It will leave the vm running. Run ```dry-test-vm halt``` to stop it.

Your test script is a shell script. here is a really simple example I use to test node-tux.
    
    npm install -g node-tux
    echo "{}" > .tux.json
    tux

That's it. If this was in a shell script in my project directory called "test-tux.sh", I'd run:

```dry-test-vm ./test-tux.sh```

That's it. Enjoy.

