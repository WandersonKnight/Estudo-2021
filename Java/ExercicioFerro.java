public class ExercicioFerro {

    public static int FerroNota(float dureza, float carbono, float resistencia){

        boolean durezaCheck = dureza > 50 ? true:false;
        boolean carbonoCheck = carbono > 0.7f ? true:false;
        boolean resistenciaCheck = resistencia > 5600 ? true:false;

        if(durezaCheck && carbonoCheck && resistenciaCheck)
            return 10;

        else if(durezaCheck && carbonoCheck)
            return 9;

        else if(carbonoCheck && resistenciaCheck)
            return 8;

        else if(durezaCheck && resistenciaCheck)
            return 7;

        else if(durezaCheck || carbonoCheck || resistenciaCheck)
            return 6;

        return 5;

    }

}
