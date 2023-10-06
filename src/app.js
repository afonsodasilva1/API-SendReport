import express from 'express'
import UserController from './controllers/userController.js'
import MembroController from './controllers/membroController.js'
import RelatorioController from './controllers/relatorioController.js'
import cors from 'cors';

const app = express()
app.use(express.json())
app.use(cors())

//User routes
app.post('/createUser', UserController.store)

app.get('/showUsers', UserController.index) 

app.get('/showUser/:id', UserController.show)

app.put('/updateUser/:id', UserController.update)

app.delete('/deleteUser/:id', UserController.delete)

//Members routes
app.post('/createMember', MembroController.store)

app.get('/showMembers', MembroController.index) 

app.get('/showMember/:id', MembroController.show)

app.put('/updateMember/:id', MembroController.update)

app.delete('/deleteMember/:id', MembroController.delete)

//Relatorio Router
app.post('/createRelatorio', RelatorioController.store)

app.get('/showRelatorio', RelatorioController.index) 

app.get('/showRelatorio/:id', RelatorioController.show)

app.put('/updateRelatorio/:id', RelatorioController.update)

app.delete('/deleteRelatorio/:id', RelatorioController.delete)

export default app
