import UserRepository from '../Repositories/userRepository.js'

class UserController{

    async index (_, res){
       const row = await UserRepository.findAll()
       res.json(row)
    }
    
    async show(req, res){
        const row = await UserRepository.findById(req.params.id)
        res.json(row)
    } 
    
    async store(req, res){
       const row = await UserRepository.create(req.body)
       res.json(row)
    }

    async update(req, res){
       const row = await UserRepository.update(req.body, req.params.id)
       res.json(row)
    }

    async delete(req, res){
        const row = await UserRepository.delete(req.params.id)
        res.json(row)
    }
}

export default new UserController()
