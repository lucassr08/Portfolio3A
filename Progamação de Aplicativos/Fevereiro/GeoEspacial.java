package com.example.geoespacial;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class TelaConta extends AppCompatActivity {
    static int conta;
    static int vl1, vl2, vl3, vr;
    EditText et1, et2, et3;
    TextView r;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tela_conta);
        et1 = findViewById(R.id.et1);
        et2 = findViewById(R.id.et2);
        et3 = findViewById(R.id.et3);
        r = findViewById(R.id.resposta);
        organizaTela();
    }

    public void organizaTela() {
        if(conta == 7){
            et1.setHint("Digite o volume");
            et2.setHint("Digite a altura");
            et3.setVisibility(View.INVISIBLE);


        }
        else if (conta == 6){
            et1.setHint("Digite o volume");
            et2.setHint("Digite a área da base");
            et3.setVisibility(View.INVISIBLE);
        }
        else if (conta == 1){
            et1.setHint("Digite a área da base");
            et2.setHint("Digite o número de lados");
            et3.setHint("Digite o número de faces");
        }
        else if (conta == 2){
            et1.setHint("Digite a área total");
            et2.setHint("Digite o número de lados");
            et3.setHint("Digite o número de faces");
        }
        else if (conta == 3){
            et1.setHint("Digite a área total");
            et2.setHint("Digite a área da base");
            et3.setHint("Digite o número de faces");
        }
        else if (conta == 4){
            et1.setHint("Digite a área total");
            et2.setHint("Digite a área da base");
            et3.setHint("Digite o número de lados");
        }
        else if (conta == 5){
            et1.setHint("Digite a área da base");
            et2.setHint("Digite a altura");
            et3.setVisibility(View.INVISIBLE);
        }
    }


}
