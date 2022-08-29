const inquirer = require('inquirer');
var fs = require('fs');
var exec = require('child_process').exec, child;
const { spawn } = require('child_process')
const prompts = require('prompts');
const { execSync } = require('child_process');
const args = require('minimist')(process.argv.slice(2));

var ArgumentStringTwo = JSON.stringify(args).slice(6,JSON.stringify(args).length-2);
arraySplitArgumentStringTwo = ArgumentStringTwo.split(",");

var path = process.cwd();

arraySplitArgumentStringTwo.forEach(function(entry) {
    
    console.log(entry);
    eval(entry.slice(1,entry.length-1));
    
});

function answers()
    {
    console.log(`xmodmap: is only for remapping keys: 1 to 1`);

    inquirer
        .prompt([
            {
                type: 'list',
                name: 'option',
                message: 'Choose an option:',
                pageSize: '26',
                choices: ['xel_xmodmap: CapsLock: Make & Launch xel config file'
                ,'xel_xmodmap: MouseButton3: Make & Launch xel config file'
                ,'xel_xmodmap: MouseButton4: Make & Launch xel config file'],
            },
        ])
        .then(answers => {
                if (answers.option == "xel_xmodmap: CapsLock: Make & Launch xel config file") {
                    CapsLock();
                }
                if (answers.option == "xel_xmodmap: MouseButton3: Make & Launch xel config file") {
                    MouseButton3();
                }
                if (answers.option == "xel_xmodmap: MouseButton4: Make & Launch xel config file") {
                    MouseButton4();
                }



            
            });
    }            

function CapsLock() {

var textToWriteCapsLock = 
`clear Lock
keycode 66 = KP_Enter NoSymbol KP_Enter NoSymbol KP_Enter
`;

                    fs.writeFile(path+"/.xel_xmodmap_CapsLock", textToWriteCapsLock,(error)=>{});

                    child = exec('gnome-terminal -x bash -c "xmodmap ~/AHK/ahkprivate/AHKassociatedFiles/LinuxRelatedFiles/LinuxAutomation/XmodmapFiles/.xel_xmodmap_CapsLock; exec bash"',
                    { maxBuffer: 1024 * 1024 },
                    function (error, stdout, stderr) {
                        console.log('stdout: ' + stdout);
                        if (stderr !== "") {
                            console.log('stderr: ' + stderr);
                        }
                        if (error !== null) {
                            console.log('exec error: ' + error);
                        }
                    });

}
function MouseButton3(){
                 
var textToWriteMouseButton3 = 
`keycode 89 = BackSpace BackSpace BackSpace BackSpace NoSymbol NoSymbol
`;

                    fs.writeFile(path+"/.xel_xmodmap_MouseButton3", textToWriteMouseButton3,(error)=>{});

                    child = exec('gnome-terminal -x bash -c "xmodmap ~/AHK/ahkprivate/AHKassociatedFiles/LinuxRelatedFiles/LinuxAutomation/XmodmapFiles/.xel_xmodmap_MouseButton3; exec bash"',
                    { maxBuffer: 1024 * 1024 },
                    function (error, stdout, stderr) {
                        console.log('stdout: ' + stdout);
                        if (stderr !== "") {
                            console.log('stderr: ' + stderr);
                        }
                        if (error !== null) {
                            console.log('exec error: ' + error);
                        }
                    });

}   
function MouseButton4(){

var textToWriteMouseButton4 = 
`keycode 85 = KP_Enter NoSymbol KP_Enter NoSymbol KP_Enter
`;

                    fs.writeFile(path+"/.xel_xmodmap_MouseButton4", textToWriteMouseButton4,(error)=>{});

                    child = exec('gnome-terminal -x bash -c "xmodmap ~/AHK/ahkprivate/AHKassociatedFiles/LinuxRelatedFiles/LinuxAutomation/XmodmapFiles/.xel_xmodmap_MouseButton4; exec bash"',
                    { maxBuffer: 1024 * 1024 },
                    function (error, stdout, stderr) {
                        console.log('stdout: ' + stdout);
                        if (stderr !== "") {
                            console.log('stderr: ' + stderr);
                        }
                        if (error !== null) {
                            console.log('exec error: ' + error);
                        }
                    });
}

module.exports = {
    answers,
    CapsLock,
    MouseButton3,
    MouseButton4

  };