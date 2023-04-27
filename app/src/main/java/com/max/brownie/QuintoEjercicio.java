package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;

import com.google.android.material.chip.Chip;

import java.text.NumberFormat;

public class QuintoEjercicio extends AppCompatActivity {

    private double getPrecioDeMemoria(int pos) {
        switch(pos) {
            case 0:
                return 200.00;
            case 1:
                return 375.00;
            case 2:
                return 500.00;
            default:
                return 0.00;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quinto_ejercicio);
        // Controles
        TextView txtTitulo = findViewById(R.id.ej5txtTitulo);
        TextView txtPrecioFinal = findViewById(R.id.ej5txtPrecioFinal);
        Spinner spinnerCantidadMemoria = findViewById(R.id.spinner);
        Chip chipMonitor = findViewById(R.id.ej5chipMonitorLCD);
        Chip chipHD = findViewById(R.id.ej5chipHD500GB);
        Chip chipDVD = findViewById(R.id.ej5chipGrabadorDVD);
        Button btnCalcularPrecio = findViewById(R.id.ej5btnCalcularPrecio);

        btnCalcularPrecio.setOnClickListener(view -> {
            double precioMemoria = getPrecioDeMemoria(spinnerCantidadMemoria.getSelectedItemPosition());
            double precioAccesorio = 0.00;
            if(chipMonitor.isChecked()) precioAccesorio += 2000.50;
            if(chipHD.isChecked()) precioAccesorio += 550.50;
            if(chipDVD.isChecked()) precioAccesorio += 1200;
            double total = precioMemoria + precioAccesorio;
            NumberFormat formatoMoneda = NumberFormat.getCurrencyInstance();

            // Formatear el valor como moneda
            String valorFormateado = formatoMoneda.format(total);
            txtPrecioFinal.setText(valorFormateado);
        });

    }
}