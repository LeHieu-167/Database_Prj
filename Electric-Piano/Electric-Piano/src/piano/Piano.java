package piano;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;


import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class Piano extends JFrame {

	private JPanel contentPane;

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Piano frame = new Piano();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public Piano() {
		super("Virtual Piano");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 464);
		contentPane = new JPanel();
		setResizable(false);
		contentPane.setBackground(new Color(192, 192, 192));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Virtual Piano");
		lblNewLabel.setBounds(10, 11, 500, 29);
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 24));
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		contentPane.add(lblNewLabel);
		
		JButton btnD = new JButton("D");
		
		btnD.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
					try
					{
						String path=".\\Music_Note\\D.wav";
					AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
					Clip player=AudioSystem.getClip();		
					player.open(audio);
					player.start();
					}
					catch(Exception ee)
					{
						
					}
				
				
			}
		});
		
		
		JButton button = new JButton("C");
		button.addActionListener(new ActionListener() 
		{
			public void actionPerformed(ActionEvent e) 
			{
				
			
				try
				{
					String path=".\\Music_Note\\C.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			
			}
		});
		button.setBackground(Color.WHITE);
		button.setVerticalAlignment(SwingConstants.BOTTOM);
		button.setFont(new Font("Tahoma", Font.BOLD, 14));
		button.setBounds(10, 214, 57, 208);
		contentPane.add(button);
		button.setFocusPainted(false);
		
		btnD.setVerticalAlignment(SwingConstants.BOTTOM);
		btnD.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnD.setBackground(Color.WHITE);
		btnD.setBounds(74, 214, 57, 208);
		contentPane.add(btnD);
		btnD.setFocusPainted(false);
		
		JButton btnE = new JButton("E");
		btnE.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\E.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnE.setVerticalAlignment(SwingConstants.BOTTOM);
		btnE.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnE.setBackground(Color.WHITE);
		btnE.setBounds(141, 214, 57, 208);
		contentPane.add(btnE);
		btnE.setFocusPainted(false);
		
		JButton btnF = new JButton("F");
		btnF.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\F.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnF.setVerticalAlignment(SwingConstants.BOTTOM);
		btnF.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnF.setBackground(Color.WHITE);
		btnF.setBounds(207, 214, 57, 208);
		contentPane.add(btnF);
		btnF.setFocusPainted(false);
		
		JButton btnG = new JButton("G");
		btnG.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\G.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnG.setVerticalAlignment(SwingConstants.BOTTOM);
		btnG.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnG.setBackground(Color.WHITE);
		btnG.setBounds(274, 214, 57, 208);
		contentPane.add(btnG);
		btnG.setFocusPainted(false);
		
		JButton btnA = new JButton("A\r\n");
		btnA.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\A.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnA.setVerticalAlignment(SwingConstants.BOTTOM);
		btnA.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnA.setBackground(Color.WHITE);
		btnA.setBounds(341, 214, 57, 208);
		contentPane.add(btnA);
		btnA.setFocusPainted(false);
		
		JButton btnB = new JButton("B");
		btnB.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\B.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnB.setVerticalAlignment(SwingConstants.BOTTOM);
		btnB.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnB.setBackground(Color.WHITE);
		btnB.setBounds(408, 214, 57, 208);
		contentPane.add(btnB);
		btnB.setFocusPainted(false);
		
		
		JButton btnD_2 = new JButton("D#");
		btnD_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\D_s.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnD_2.setVerticalAlignment(SwingConstants.BOTTOM);
		btnD_2.setForeground(Color.WHITE);
		btnD_2.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnD_2.setBackground(Color.BLACK);
		btnD_2.setBounds(106, 54, 63, 149);
		contentPane.add(btnD_2);
		btnD_2.setFocusPainted(false);
			
		
		
		JButton btnF_2 = new JButton("F#");
		btnF_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\F_s.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnF_2.setVerticalAlignment(SwingConstants.BOTTOM);
		btnF_2.setForeground(Color.WHITE);
		btnF_2.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnF_2.setBackground(Color.BLACK);
		btnF_2.setBounds(232, 54, 63, 149);
		contentPane.add(btnF_2);
		btnF_2.setFocusPainted(false);
		
		JButton btnG_1 = new JButton("G#");
		btnG_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\G_s.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnG_1.setVerticalAlignment(SwingConstants.BOTTOM);
		btnG_1.setForeground(Color.WHITE);
		btnG_1.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnG_1.setBackground(Color.BLACK);
		btnG_1.setBounds(305, 54, 63, 149);
		contentPane.add(btnG_1);
		btnG_1.setFocusPainted(false);
		
		JButton btnBb = new JButton("Bb");
		btnBb.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\Bb.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnBb.setVerticalAlignment(SwingConstants.BOTTOM);
		btnBb.setForeground(Color.WHITE);
		btnBb.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnBb.setBackground(Color.BLACK);
		btnBb.setBounds(378, 54, 63, 149);
		contentPane.add(btnBb);
		btnBb.setFocusPainted(false);
		
		
		JButton btnNewButton = new JButton("C#");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try
				{
					String path=".\\Music_Note\\C_s.wav";
				AudioInputStream audio=AudioSystem.getAudioInputStream(new File(path));
				Clip player=AudioSystem.getClip();		
				player.open(audio);
				player.start();
				}
				catch(Exception ee)
				{
					
				}
			}
		});
		btnNewButton.setForeground(Color.WHITE);
		btnNewButton.setBackground(Color.BLACK);
		btnNewButton.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnNewButton.setVerticalAlignment(SwingConstants.BOTTOM);
		btnNewButton.setBounds(33, 54, 63, 149);
		contentPane.add(btnNewButton);
		btnNewButton.setFocusPainted(false);
	}
}
