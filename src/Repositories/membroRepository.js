import conection from '../models/conexao.js'
import {randomUUID} from 'crypto'

class MembroRepository{
    
        create(bodyReq){

            bodyReq.id = randomUUID();
            const sqlComand = 'INSERT INTO membro SET ?;'
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
            const sqlCommand = 'SELECT * FROM membro;'    
            return new Promise((resolve, reject) =>{
                conection.query(sqlCommand, (erro, result)=>{
                    if(erro) return reject('Não foi possível')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }
        findById(id){
            const sqlComand = 'SELECT * FROM membro WHERE id =?;'
            return  new Promise((resolve, reject) =>{
                conection.query(sqlComand, id, (erro, result) =>{
                    if(erro) 
                        return reject('Usuário não encontrado')
                    const row = JSON.parse(JSON.stringify(result))
                    return resolve(row)
                })
            })
        }

        update(bodyReq, id){
            const sqlComand = 'UPDATE membro SET ? WHERE id = ?;'
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
            const sqlComand = 'DELETE FROM membro WHERE id = ?;'
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

export default new MembroRepository()