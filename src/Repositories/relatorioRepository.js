import conection from '../models/conexao.js'
import {randomUUID} from 'crypto'

class RelatorioRepository{

        create(bodyReq){

            bodyReq.id = randomUUID();
            const sqlComand = 'INSERT INTO relatorio SET ?;'
            return new Promise((resolve, reject) =>{
                conection.query(sqlComand, bodyReq, (err, result) =>{
                    if(err)
                        return reject('Não foi possível cadastrar!')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }

        findAll(){
            const sqlCommand = 'SELECT *  FROM relatorio;'    
            return new Promise((resolve, reject) =>{
                conection.query(sqlCommand, (erro, result)=>{
                    if(erro) return reject('Não foi possível')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }
        findById(id){
            const sqlComand = 'SELECT * FROM relatorio WHERE id =?;'
            return  new Promise((resolve, reject) =>{
                conection.query(sqlComand, id, (erro, result) =>{
                    if(erro) 
                        return reject('Relatorio não encontrado')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }

        update(bodyReq, id){
            const sqlComand = 'UPDATE relatorio SET ? WHERE id = ?;'
            return new Promise((resolve, reject) =>{
                conection.query(sqlComand, [bodyReq, id], (erro, result) =>{
                    if(erro)
                        return reject('Não foi possível actualizar!')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }

        delete(id){
            const sqlComand = 'DELETE FROM relatorio WHERE id = ?;'
            return new Promise((resolve, reject) =>{
                conection.query(sqlComand, id, (erro, result) =>{
                    if(erro)
                        return reject('Não foi possível apagar')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }
}

export default new RelatorioRepository()
