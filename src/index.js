// src/index.js
const http = require('http');
const PORT = 3000;

const server = http.createServer((req, res) => {
  const htmlContent = `
    <!DOCTYPE html>
    <html>
    <head>
      <title>DevOps Case Study</title>
      <style>
        body {
          font-family: Arial, sans-serif;
          background-color: #f0f8ff;
          text-align: center;
          padding: 50px;
        }
        h1 {
          color: #333399;
        }
        p {
          font-size: 18px;
          color: #444;
        }
      </style>
    </head>
    <body>
      <h1>🚀 DevOps Case Study Project</h1>
      <p>Deployed with Terraform, Docker, Ansible, and Jenkins</p>
      <p><strong>By Shubhada Kharwante</strong></p>
      <p>Server running at port ${PORT}</p>
      <p>🕒 ${new Date().toLocaleString()}</p>
    </body>
    </html>
  `;

  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end(htmlContent);
});

server.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});

