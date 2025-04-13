module jarros {
    var grande: int
    var pequeno: int
    val j = {grande: grande, pequeno: pequeno}

    action encheGrande = all{
        grande' = 5,
        pequeno' = pequeno,
    }
    action enchePequeno = all{
        grande' = grande,
        pequeno' = 3,
    }
    action esvaziaGrande = all{
        grande' = 0,
        pequeno' = pequeno,
    }
    action esvaziaPequeno = all{
        grande' = grande,
        pequeno' = 0,
    }
    action grandeParaPequeno = {
        if (pequeno + grande > 3) all{
            pequeno' = 3,
            grande' = 0,
        } else all{
            pequeno' = grande + pequeno,
            grande' = pequeno - (3 - grande),
        }
    }
    action pequenoParaGrande = {
        if (pequeno + grande > 5) all{
            pequeno' = 0,
            grande' = 5,
        } else all{
            grande' = grande + pequeno,
            pequeno' = grande - (5 - pequeno),
        }
    }

    action init = all {
        grande' = 0,
        pequeno' = 0,
    }

     action step = any {
    encheGrande,
    enchePequeno,
    esvaziaGrande,
    esvaziaPequeno,
    grandeParaPequeno,
    pequenoParaGrande,
    }

    val inv = grande != 4
}