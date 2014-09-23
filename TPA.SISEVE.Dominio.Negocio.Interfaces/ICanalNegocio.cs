﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Dominio.Negocio.Interfaces
{
	public interface ICanalNegocio : INegocio<Canal>
	{
		IEnumerable<Canal> BuscarTodosActivos();

	}
}
