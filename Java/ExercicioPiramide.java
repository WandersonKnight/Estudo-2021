public class ExercicioPiramide {

    public static int PiramideTamanho(int moedas){

        int tamanho = 0;
        int aux = 0;

        while(moedas > aux){

            tamanho++;
            aux++;
            moedas -= aux;

        }

        return tamanho;

    }

}
