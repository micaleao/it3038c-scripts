var fs = require("fs");
var http = require("http");
var ip = require('ip');
var os = require("os");


const { runInNewContext } = require("vm");

function getUptime(){
    var ut_sec = os.uptime();
    var ut_min = ut_sec/60;
    var ut_hour = ut_min/60;
    var ut_day = ut_hour/24;
    ut_sec = Math.floor(ut_sec);
    ut_min = Math.floor(ut_min);
    ut_hour = Math.floor(ut_hour);
    ut_day = Math.floor(ut_day);
    ut_day = ut_day%86400;
    ut_hour = ut_hour%60;
    ut_min = ut_min%60;
    ut_sec = ut_sec%60;
    return ("Up time: "
        + ut_day + " day(s)"
        + ut_hour + " hour(s) "
        + ut_min + " minute(s) and "
        + ut_sec + " second(s)"
    );
}
function fmem(){
    var fmem = os.freemem();
    fmem = Math.floor( os.freemem() / 1024 / 1024)
      return (" "
      + fmem + " MB");
    
}
function mem(){
    var mem = os.totalmem();
    mem = Math.floor( os.totalmem() / 1024 / 1024)
      return (" "
      + mem + " MB");
}
function findCP(){
    var findCP = os.cpus();
     findCP = os.cpus().length
    return (+ findCP)
}

var server = http.createServer(function(req, res){
    if (req.url === "/") {
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
            res.writeHead(200, {"Content-Type":"text/html"});
            res.end(body);
        });
    }
    else if(req.url.match("/sysinfo")){
        myHostName=os.hostname();
        html = `
        <!DOCTYPE html>
        <html>
            <head>
                <title>Node JS Response</title>
                </head>
                <body>
                <p>Hostname: ${myHostName}</p>
                <p>IP: ${ip.address()}</p>
                <p>Server Uptime: ${getUptime()}</p>
                <p>Total Memory: ${mem()}</p>
                <p>Free Memory: ${fmem()}</p>
                <p>Number of CPUs: ${findCP()}</p>
                </body>
        </html>
        `
        res.writeHead(200, {"Content-Type":"text/html"});
        res.end(html);
    }
   else{
       res.writeHead(404, {"Content-Type": "text/html"});
       res.end(`404 file not found at ${req.url}`);
   }
}).listen(3000)

console.log("server listening on port 3000");