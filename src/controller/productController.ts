import {request, Request, Response} from 'express';

import pool from '../database';

class ProductController {

    public async list (req: Request, res: Response) {
        const articule = await pool.query('SELECT * FROM product');
        res.json(articule);
    } 

    public async getOne (req: Request, res: Response) {
        const { id } = req.params;
        const product = await pool.query('SELECT * FROM product WHERE id_product = ?', [id]);
        
        if(product.length > 0){
            return res.json(product[0]);
        }else{
            res.status(404).json({text: "The game doesn't exists"});
        }
    }

    public async create (req: Request, res: Response){
        await pool.query('INSERT INTO product set ?',[req.body]);
        res.json({message: 'product Save'});
    }

    public async delete(req: Request, res: Response){
        const { id } = req.params;
        await pool.query('DELETE FROM product WHERE id_product = ?',[id])
       res.json({message: 'The game was deleted'});
    }

    public async update(req: Request, res: Response){
        const { id } = req.params;
        await pool.query('UPDATE product set ? WHERE id_product = ?', [req.body, id]);
        res.json({message: 'The was updated'});
    }

}


export const productController = new ProductController();