Vagrant VM that runs clean installs of node components, and tests that they work.

For this to work repeatedly, DO NOT install anything outside of npm. We blow away the npm folders before every test. That's how we ensure a clean setup without rebuilding the vm every time.

If you do install something else -- don't -- make sure to remove it cleanly at the end of your test script.

To run:

Install [vagrant](https://docs.vagrantup.com/v2/getting-started/), and virtual box (follow the instructions on the vagrant page).

then install the binary:

```npm install dry-test-vm```

run ```dry-test-vm <path to test script>```

It will take a while the first time, it has to provision.
It will be faster after the first run.
It will leave the VM running. 

Run ```dry-test-vm halt``` to stop it.

Your test script is a shell script. here is a really simple example I use to test node-tux.
    
    npm install -g node-tux
    echo "{}" > .tux.json
    tux

That's it. If this was in a shell script in my project directory called "test-tux.sh", I'd run:

```dry-test-vm ./test-tux.sh```

You can only run one of these tests at a time, because you're using the same virtual machine. Don't try to run two at once.

That's it. Enjoy.

