package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class SegundoEjercicioResumen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_segundo_ejercicio_resumen);
        Intent intent = getIntent();
        String nombre = intent.getStringExtra("nombre"),
               apellido = intent.getStringExtra("apellido"),
                ciudad = intent.getStringExtra("ciudad"),
                temas = intent.getStringExtra("temas");
        TextView previa = findViewById(R.id.ej2txtPrevia);
        previa.setText("Nombre: " + nombre + "\nApellido: " + apellido + "\nCiudad: " + ciudad + "\n" + temas);

    }
}