package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
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
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.root_foro_option:
                Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://frgp.cvg.utn.edu.ar/mod/forum/view.php?id=255178"));
                startActivity(browserIntent);
                return true;
            case R.id.root_rep_option:
                Intent browseGit = new Intent(Intent.ACTION_VIEW, Uri.parse("https://github.com/maximocanedo/PROGIII-TP2/tree/android"));
                startActivity(browseGit);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}