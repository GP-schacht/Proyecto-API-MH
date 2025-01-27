﻿using System;
using System.Collections.Generic;
using Proyecto_API_MHW.Contexts;

namespace Proyecto_API_MHW.Models;

public partial class CategoriaMonstro
{
    public int IdTipoMonstro { get; set; }

    public string? Tipo { get; set; }

    public virtual ICollection<MonstroGrande> MonstroGrandes { get; set; } = new List<MonstroGrande>();
}
