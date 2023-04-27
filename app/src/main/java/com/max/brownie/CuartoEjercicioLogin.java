package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.google.android.material.snackbar.Snackbar;

public class CuartoEjercicioLogin extends AppCompatActivity {

    private TextView txtUsuario, txtClave;
    private Button btnValidar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuarto_ejercicio_login);

        txtUsuario = findViewById(R.id.ej4txtUsuario);
        txtClave = findViewById(R.id.ej4txtClave);
        btnValidar = findViewById(R.id.ej4btnValidar);

        btnValidar.setOnClickListener(view -> {
            String usuario = txtUsuario.getText().toString();
            String clave = txtClave.getText().toString();
            View layout = findViewById(android.R.id.content);
            String msj = "";
            if(usuario.equals("claudio") && clave.equals("casas")) {
                msj = "¡Bienvenido a mi página Sr. Claudio!";
            } else {
                msj = "Los datos ingresados son incorrectos.";
            }
            Snackbar snackbar = Snackbar.make(layout, msj, Snackbar.LENGTH_LONG);
            snackbar.setAction("Más información", new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(CuartoEjercicioLogin.this, CuartoEjercicioResultado.class);
                    intent.putExtra("user", usuario);
                    intent.putExtra("pass", clave);
                    startActivity(intent);
                }
            });
            snackbar.show();

        });

    }
}