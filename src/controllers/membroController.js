import MembroRepository from '../Repositories/membroRepository.js'

class MembroController{

    async index (_, res){
       const row = await MembroRepository.findAll()
       res.json(row)
    }
    
    async show(req, res){
        const row = await MembroRepository.findById(req.params.id)
        res.json(row)
    } 
    
    async store(req, res){
       const row = await MembroRepository.create(req.body)
       res.json(row)
    }

    async update(req, res){
       const row = await MembroRepository.update(req.body, req.params.id)
       res.json(row)
    }

    async delete(req, res){
        const row = await MembroRepository.delete(req.params.id)
        res.json(row)
    }
}

export default new MembroController()
