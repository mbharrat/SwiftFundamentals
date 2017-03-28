package com.example.mbharrat.myapplicationforexample;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

//This Here
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    TextView aTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }

    private final static String LOG_TAG = MainActivity.class.getSimpleName();

    public void buttonPressed(View view){
        //info log
        Log.i(LOG_TAG, "buttonPressed(view) Called");

        String stringValue = "Hello World";

        aTextView.setText(stringValue);
        //verbose log
        Log.v(LOG_TAG, " text changed to:" + stringValue);
        //debug
        Log.d(LOG_TAG, "buttonPressed(View) finished");

        //assert .a = has highest severity
        //error .e
        //warning .w
        //info .i
        //debug .d
        //verbose .v = lowest severity if you filter at this level you see ALL statements
    }
}
