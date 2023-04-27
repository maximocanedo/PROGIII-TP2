package com.max.brownie;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.snackbar.Snackbar;

import java.util.ArrayList;
import java.util.List;

public class SegundoEjercicio extends AppCompatActivity {

    private TextView titulo, subtituloTemas, previa;
    private EditText nombre, apellido;
    private Spinner spinner;
    private ChipGroup chipGroup;
    private Chip chipCiencias, chipLiteratura, chipHistoria;
    private Button btnVerResumen;


    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_segundo_ejercicio);
        // Controles
        titulo = findViewById(R.id.ej2Titulo);
        nombre = findViewById(R.id.ej2txtNombre);
        apellido = findViewById(R.id.ej2txtApellido);
        spinner = findViewById(R.id.ej2spinner);
        subtituloTemas = findViewById(R.id.ej2txtTemas);
        chipGroup = findViewById(R.id.ej2chipGroup);
        chipCiencias = findViewById(R.id.ej2chipCiencias);
        chipLiteratura = findViewById(R.id.ej2chipLiteratura);
        chipHistoria = findViewById(R.id.ej2chipHistoria);
        btnVerResumen = findViewById(R.id.ej2btnVerResumen);
        previa = findViewById(R.id.ej2txtPrevia);



        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this, R.array.options_array, android.R.layout.simple_spinner_item);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                // Acciones a realizar cuando se selecciona un elemento del Spinner
            }
            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
                // Acciones a realizar cuando no se selecciona ningún elemento del Spinner
            }
        });

        btnVerResumen.setOnClickListener(view -> {
            boolean todoOK = todoEnOrden();
            if(todoOK) {
                String nom = nombre.getText().toString();
                String ape = apellido.getText().toString();
                String ciudad = spinner.getSelectedItem().toString();
                List<String> temas = new ArrayList<String>();

                if(chipCiencias.isChecked()) temas.add(chipCiencias.getText().toString());
                if(chipLiteratura.isChecked()) temas.add(chipLiteratura.getText().toString());
                if(chipHistoria.isChecked()) temas.add(chipHistoria.getText().toString());

                String temasstr = "Temas elegidos: \n";
                for(int i = 0; i < temas.size(); i++) {
                    temasstr += " · " + temas.get(i) + "\n";
                }
                Intent intent = new Intent(SegundoEjercicio.this, SegundoEjercicioResumen.class);
                intent.putExtra("nombre", nom);
                intent.putExtra("apellido", ape);
                intent.putExtra("ciudad", ciudad);
                intent.putExtra("temas", temasstr);
                startActivity(intent);
                // previa.setText(resultado);
            }
        });
    }
    protected boolean todoEnOrden() {
        String nom = nombre.getText().toString();
        if(nom.isEmpty()) {
            nombre.setError("Debe ingresar un valor");
            return false;
        }
        String ape = apellido.getText().toString();
        if(ape.isEmpty()) {
            apellido.setError("Debe ingresar un valor");
            return false;
        }
        if(spinner.getSelectedItemPosition() == AdapterView.INVALID_POSITION) {
            Snackbar aviso = Snackbar.make(findViewById(R.id.ej2CL), "Debe seleccionar una ciudad", Snackbar.LENGTH_LONG);
            aviso.show();
            return false;
        }
        return true;
    }
}