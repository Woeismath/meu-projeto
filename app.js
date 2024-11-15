const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('TechShop - Aplicação funcionando com CI/CD, Docker e Terraform!');
});

app.listen(port, () => {
  console.log(`App rodando na porta ${port}`);
});
