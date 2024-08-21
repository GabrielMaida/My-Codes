// N2 da Disciplina de Back-End
// Autor: Gabriel Antônio
// Data: 28/05/2024

// Importando o express
const express = require('express');
const app = express();
const port = 3000;


// Converte os dados que chegam no POST para JSON
app.use(express.json());


// Dados
let data = {
    'materials': []
};


// GET /materials
app.get('/materials', (req, res) => {
    res.status(200).json(data.materials);
});


// POST /materials
app.post('/materials', (req, res) => {
    let newMaterial = req.body;
    newMaterial.id = data.materials.length;

    newMaterial.name = req.body.name;
    newMaterial.qtde = req.body.qtde;

    data.materials.push(newMaterial);

    res.status(201).json({
        "id_material": newMaterial.id,
        "name": newMaterial.name,
        "qtde": newMaterial.qtde,
    });
});


// GET /materials/:id
app.get('/materials/:id', (req, res) => {
    let id = req.params.id;
    let material = data.materials[id];

    if (material) {
        res.status(200).json(material);
    } else {
        res.status(404).json({ "error": "Material not found" });
    }
});

// PUT /materials/:id
app.put('/materials/:id', (req, res) => {
    let id = req.params.id;
    let material = data.materials[id];

    if (material) {
        material.name = req.body.name;
        material.qtde = req.body.qtde;

        res.status(200).json(material);
    } else {
        res.status(404).json({ "error": "Material not found" });
    }
});

// DELETE /materials/:id
app.delete('/materials/:id', (req, res) => {
    let id = req.params.id;
    let material = data.materials[id];

    if (material) {
        data.materials.splice(id, 1);
        res.status(200).json({ "message": "Material deleted" });
    } else {
        res.status(404).json({ "error": "Material not found" });
    }
});

// Inicia o servidor
app.listen(port, () => {
    console.log('Example app listening on port: ' + port);
});
