package com.example.demo1.model;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class Piano extends Application {
    @Override
    public void start(Stage primaryStage) {
        HBox root = new HBox();
        Scene scene = new Scene(root, 400, 150);

        // Tạo và thêm các phím đàn vào giao diện
        String[] notes = {"C", "D", "E", "F", "G", "A", "B"};
        for (String note : notes) {
            Key key = new Key(note);
            root.getChildren().add(key);
        }

        primaryStage.setTitle("Virtual Piano");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
