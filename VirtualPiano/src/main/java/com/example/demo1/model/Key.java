package com.example.demo1.model;

import javafx.scene.control.Button;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import java.io.File;

public class Key extends Button {
    private String note;
    private MediaPlayer mediaPlayer;

    public Key(String note) {
        this.note = note;
        this.setText(note);

        File soundFile = new File("resources/" + note + ".mp3");
        Media sound = new Media(soundFile.toURI().toString());
        mediaPlayer = new MediaPlayer(sound);

        // Phát âm thanh khi ấn và dừng khi thả tay
        this.setOnMousePressed(event -> mediaPlayer.play());
        this.setOnMouseReleased(event -> mediaPlayer.stop());
    }
}
