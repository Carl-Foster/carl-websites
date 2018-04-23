import { createServer } from "http";
import { execFileSync } from "child_process";
import { join } from "path";

const server = createServer((req, res) => {
    if (req.method === 'POST') {
        execFileSync(join(__dirname, '../run.sh'));
    }
}).listen(3000);