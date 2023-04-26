package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import org.w3c.dom.Text;

public class PrimerEjercicio extends AppCompatActivity {

    private EditText txtProducto1, txtCantidad1, txtProducto2, txtCantidad2;
    private Button btnGenerarTabla;
    private TableLayout tabla;
    private TextView sp1, sp2, sc1, sc2, stl;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_primer_ejercicio);

        txtProducto1 = findViewById(R.id.ej1txtp1nombre);
        txtProducto2 = findViewById(R.id.ej1txtp2nombre);
        txtCantidad1 = findViewById(R.id.ej1txtp1cantidad);
        txtCantidad2 = findViewById(R.id.ej1txtp2cantidad);
        btnGenerarTabla = findViewById(R.id.ej1btnGenerarTabla);
        tabla = findViewById(R.id.ej1Tabla);
        sp1 = findViewById(R.id.row1col1);
        sp2 = findViewById(R.id.row2col1);
        sc1 = findViewById(R.id.row1col2);
        sc2 = findViewById(R.id.row2col2);
        stl = findViewById(R.id.row3col2);


        btnGenerarTabla.setOnClickListener(view -> {
            String p1 = txtProducto1.getText().toString();
            String p2 = txtProducto2.getText().toString();
            String k1 = txtCantidad1.getText().toString();
            String k2 = txtCantidad2.getText().toString();
            if(p1.isEmpty() || p2.isEmpty() || k1.isEmpty() || k2.isEmpty()) {
                String e = "Debe ingresar un valor";
                txtProducto1.setError(p1.isEmpty()? e : null);
                txtProducto2.setError(p2.isEmpty()? e : null);
                txtCantidad1.setError(k1.isEmpty()? e : null);
                txtCantidad2.setError(k2.isEmpty()? e : null);
            } else {
                int c1 = Integer.parseInt(k1);
                int c2 = Integer.parseInt(k2);
                int total = c1 + c2;

                sp1.setText(p1);
                sp2.setText(p2);
                sc1.setText(String.valueOf(c1));
                sc2.setText(String.valueOf(c2));
                stl.setText(String.valueOf(total));

                txtProducto1.setText("");
                txtProducto2.setText("");
                txtCantidad1.setText("");
                txtCantidad2.setText("");
            }

        });

    }
}