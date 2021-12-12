import java.util.*;

public class ExercicioNavio {

    public static String NavioSelecionado(String id){

        Map<String, String> navioRelacao = new HashMap<String, String>();

        navioRelacao.put("b", "Battleship");
        navioRelacao.put("c", "Cruiser");
        navioRelacao.put("d", "Destroyer");
        navioRelacao.put("f", "Frigate");

        return navioRelacao.containsKey(id.toLowerCase()) ? id.toLowerCase():"Chave nao encontrada";

    }

}
