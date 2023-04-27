package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class TercerEjercicio extends AppCompatActivity {
    private Button btnRojo, btnAzul, btnVerde;
    private TextView coloredText;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tercer_ejercicio);
        btnRojo = findViewById(R.id.ej3btnRojo);
        btnAzul = findViewById(R.id.ej3btnAzul);
        btnVerde = findViewById(R.id.ej3btnVerde);
        coloredText = findViewById(R.id.ej3txtColoreado);

        btnRojo.setOnClickListener(view -> {
            coloredText.setTextColor(0xFFF44336);
        });
        btnAzul.setOnClickListener(view -> {
            coloredText.setTextColor(0xFF2196F3);
        });
        btnVerde.setOnClickListener(view -> {
            coloredText.setTextColor(0xFF4CAF50);
        });
    }
}