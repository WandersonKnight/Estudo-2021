public class ExercicioImposto {

    public static float CalculoImposto(float salario){

        if(salario > 3000)
            salario = salario - (salario * 0.3f);

        else
            salario = salario - (salario * 0.1f);

        return salario;

    }

    public static float CalculoImposto(float salario, float bonus){

        if(salario > 3000)
            salario = salario - (salario * 0.3f);

        else
            salario = salario - (salario * 0.1f);

        return salario + bonus;

    }

}
