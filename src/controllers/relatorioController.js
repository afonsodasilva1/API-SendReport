import RelatorioRepository from '../Repositories/relatorioRepository.js'

class RelatorioController{

    async index (_, res){
       const row = await RelatorioRepository.findAll()
       res.json(row)
    }
    
    async show(req, res){
        const row = await RelatorioRepository.findById(req.params.id)
        res.json(row)
    } 
    
    async store(req, res){
       const row = await RelatorioRepository.create(req.body)
       res.json(row)
    }

    async update(req, res){
       const row = await RelatorioRepository.update(req.body, req.params.id)
       res.json(row)
    }

    async delete(req, res){
        const row = await RelatorioRepository.delete(req.params.id)
        res.json(row)
    }
}

export default new RelatorioController()
