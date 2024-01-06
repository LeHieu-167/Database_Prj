package com.example.demo1.view;

import com.example.demo1.controller.PianoController;
import com.example.demo1.model.Piano;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Slider;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class PianoView extends Application {
    private PianoController controller;
    private Piano piano;
    private Slider volumeSlider;
    private Button recordButton;

    @Override
    public void start(Stage stage) {
        piano = new Piano();
        controller = new PianoController(piano);

        volumeSlider = new Slider(0, 1, 0.5); // Min, Max, Initial value
        recordButton = new Button("Record");
        recordButton.setOnAction(event -> {
            if (controller.isRecording()) {
                controller.stopRecording();
                recordButton.setText("Record");
            } else {
                controller.startRecording();
                recordButton.setText("Stop");
            }
        });

        HBox pianoLayout = new HBox();
        piano.getKeys().forEach(pianoLayout.getChildren()::add);

        VBox root = new VBox(10, volumeSlider, recordButton, pianoLayout);
        Scene scene = new Scene(root, 400, 150);

        stage.setTitle("Virtual Piano");
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
