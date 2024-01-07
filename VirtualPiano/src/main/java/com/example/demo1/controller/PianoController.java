package com.example.demo1.controller;

import com.example.demo1.model.Piano;
import javafx.scene.control.Slider;
import java.util.ArrayList;

public class PianoController {
    private final Piano piano;
    private final Slider volumeSlider;
    private final ArrayList<String> recordedNotes;
    private boolean isRecording;

    public PianoController(Piano piano) {
        this.piano = piano;
        volumeSlider = new Slider(0, 1, 0.5); // Min, Max, Initial value
        recordedNotes = new ArrayList<>();
        isRecording = false;
        setupVolumeControl();
        setupKeys();
    }

    private void setupVolumeControl() {
        volumeSlider.valueProperty().addListener((observable, oldValue, newValue) -> {
            piano.getKeys().forEach(key -> key.getMediaPlayer().setVolume(newValue.doubleValue()));
        });
    }

    private void setupKeys() {
        piano.getKeys().forEach(key -> {
            key.setOnMousePressed(event -> {
                key.getMediaPlayer().play();
                if (isRecording) recordedNotes.add(key.getNote());
            });
            key.setOnMouseReleased(event -> key.getMediaPlayer().stop());
        });
    }

    public void startRecording() {
        recordedNotes.clear();
        isRecording = true;
    }

    public void stopRecording() {
        isRecording = false;
        System.out.println("Recorded notes: " + String.join(", ", recordedNotes));
    }
}
