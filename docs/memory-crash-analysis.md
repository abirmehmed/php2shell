# 🧠 PHP Memory Crash Analysis (Simulating php2shell conditions)

## The Experiment
To understand engine-level vulnerabilities like "php2shell", we must first understand how PHP handles Out-Of-Memory (OOM) states. 

We created a script (`src/oom.php`) that intentionally consumes memory in an infinite loop to trigger the PHP engine's memory limit.

## The Execution
Running `curl -v http://localhost:8080/oom.php` yields the following response:

```text
< HTTP/1.1 200 OK
< X-Powered-By: PHP/8.1.0
...
<br />
<b>Fatal error</b>: Allowed memory size of 134217728 bytes exhausted (tried to allocate 102400 bytes) in <b>/var/www/html/oom.php</b> on line <b>1</b><br />
