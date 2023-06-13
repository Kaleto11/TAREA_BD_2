import prisma from '../prismaClient.js'

const getTopCincoPersonajesConMasFuerza = async(req,res) => {

    try{
        const topPersonajes = await prisma.Personaje.findMany({
            orderBy: {
              fuerza: 'desc' 
            },
            take: 5 
          });
      
          res.json(topPersonajes);

    }catch (error) {
        console.error('Falla de sacar las personajes con mas fuerza:', error);
        res.status(500).json({ error: 'Falla de sacar las personajes con mas fuerza:' });
    }
}

const getPersonajeConMasKarts = async(req,res) => {
    try {
        const personaje = await prisma.Personaje.findFirst({
            orderBy: {
                _count: {
                    karts: "desc"
                }
            },
            include: {
                karts: true
            }
        })

    } catch (error) {
        console.error('Falla de sacar personaje con los más karts:', error);
        res.status(500).json({ error: 'Falla de sacar personaje con los más karts' });
    }
}


const getHabitantesPorReino = async(req,res) => {
    const { reinoId } = req.params;

    try {
      const habitantsCount = await prisma.personaje_habita_reino.count({
        where: {
          id_reino: Number(reinoId)
        }
      });
  
      res.json({ habitantsCount });
    } catch (error) {
      console.error('Falla sacar numero de habitantes:', error);
      res.status(500).json({ error: 'Falla sacar numero de habitantes' });
    }
}

const getGobernante = async(req, res) => {
    const { reinoId } = req.params
  
    try {
      const gobernante = await prisma.personaje_habita_reino.findFirst({
        where: {
          id_reino: parseInt(reinoId),
          es_gobernante: true
        },
        include: {
          habitante: true 
        }
      });
  
      res.json(gobernante?.habitante)
    } catch (error) {
      console.error('Falla de sacar gobernante:', error);
      res.status(500).json({ error: 'Falla de sacar gobernante' });
    }
  }

  const ExtraController = {
    getTopCincoPersonajesConMasFuerza,
    getPersonajeConMasKarts,
    getHabitantesPorReino,
    getGobernante
}
  
  export default ExtraController