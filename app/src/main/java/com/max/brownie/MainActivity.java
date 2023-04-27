package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button btnPrimerEjercicio
                 , btnSegundoEjercicio
                 , btnTercerEjercicio
                 , btnCuartoEjercicio
                 , btnQuintoEjercicio;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnPrimerEjercicio = findViewById(R.id.btnPrimerEjercicio);
        btnSegundoEjercicio = findViewById(R.id.btnSegundoEjercicio);
        btnTercerEjercicio = findViewById(R.id.btnTercerEjercicio);
        btnCuartoEjercicio = findViewById(R.id.btnCuartoEjercicio);
        btnQuintoEjercicio = findViewById(R.id.btnQuintoEjercicio);

        btnPrimerEjercicio.setOnClickListener(view -> {
            Intent ejercicio = new Intent(MainActivity.this, PrimerEjercicio.class);
            startActivity(ejercicio);
        });
        btnSegundoEjercicio.setOnClickListener(view -> {
            Intent ejercicio = new Intent(MainActivity.this, SegundoEjercicio.class);
            startActivity(ejercicio);
        });
        btnTercerEjercicio.setOnClickListener(view -> {
            Intent ejercicio = new Intent(MainActivity.this, TercerEjercicio.class);
            startActivity(ejercicio);
        });
        btnCuartoEjercicio.setOnClickListener(view -> {
            Intent ejercicio = new Intent(MainActivity.this, CuartoEjercicioLogin.class);
            startActivity(ejercicio);
        });
        btnQuintoEjercicio.setOnClickListener(view -> {
            Intent ejercicio = new Intent(MainActivity.this, QuintoEjercicio.class);
            startActivity(ejercicio);
        });


    }
}