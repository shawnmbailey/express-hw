const cors = require('cors');
const express = require ('express');
const Pool = require("pg").Pool;

const pool = new Pool({
    user:"postgres",
    host:"localhost",
    database:"company",
    password:"SBsev9",
    port:5432
})

const app = express();



app.use(express.json());

app.get('/',(req,res)=>{
    res.send('Home Directory');
});

app.get('/employees',(req,res)=>{
    pool.query('SELECT * FROM employees', (error,results)=>{
        if(error){
            console.log(error);
            res.status(500)
        } else{
            res.status(200).json(results.rows);
        }
    })
})

app.get('/departments',(req,res)=>{
    pool.query('SELECT * FROM departments', (error,results)=>{
        if(error){
            console.log(error);
            res.status(500)
        } else{
            res.status(200).json(results.rows);
        }
    })
})


app.listen(3003,()=>{
    console.log(`Server running on port 3003`)
})