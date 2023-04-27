package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class CuartoEjercicioResultado extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuarto_ejercicio_resultado);
        Intent intent = getIntent();
        String user = intent.getStringExtra("user");
        String pass = intent.getStringExtra("pass");
        TextView txtRes = findViewById(R.id.ej4txtResultado);
        if(user.equals("claudio") && pass.equals("casas")) {
            txtRes.setText("¡Bienvenido a mi app Sr. Claudio!");
        } else {
            txtRes.setText("Datos incorrectos.");
        }
    }
}