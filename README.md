a# 6 Coils Guitar Pickup
## EXI-CCW, Six Continuous Coils Winding guitar pickup with OPA1641

# Purchase options

 *  [ORDER & HERE Ver 4]([https://exi](https://ghitara.com/))
     *  Also you can buy a KIT    
 *  [EXI CCW WEB SITE](https://exicoil.from-ca.com/)
 *  search on eBay 'exi-ccw'

   

EXI -  SIX 
CCW -  Continuous Coils Winding, 

The wire runs from one coil to another continuously (see the picture). This reduces noise and to ensure high-quality sound.
 * One coil per string: better sound sepparation
 * Less turns:          smaller parasite capacity, muddy sound gone
 * Frequency response:  execlent.
 * SNR:                 >40dB
 * Output impedance:    See TL071 or OPA1641 IC's for reference. The IC has 10Ko on output.

----
See Guitar maxim frequencies chart here: 

![ccw-show](https://github.com/user-attachments/assets/264fc695-38b5-48cc-875b-a993a79dcdc8)



----

### LESS HUM, BETTER PICK ATTACK, STRING SEPARATION, LESS HARMONICS, MUDDY SOUND GONE 


All EasyEda PCB's for different version are in EadyEDA folder.

This is an active guitar pickup with one coil per string. It has 6 coils.
This high-quality pickup is designed to provide exceptional sound and performance. 
The model sexa-ccw is a perfect choice for those who want to upgrade their guitar's sound. 
This electric guitar pickup is perfect for enhancing the sound of your guitar due low inductance. 
Each coil has between 800-900 turns. 
The frequency response is better than classic guitar pickups (see images). 

I did tests on EMG active pickup and Harley Benton Passive, see Bode diagrams below. 
To find more search on youtube '6 coils guitar pickup or EXI-CCW'


### 3D casing models

  [STL 3D MODEL V1](https://github.com/circinusX1/exi-ccw/blob/main/3d/EXI-6-FINAL.stl)
  


* More models in 3d folders
  

### Performance

---
  * Frequency response and cutoff

Here are typical freqencies ranges for different instruments. An electric guitar max is about 1.2Khz, If we include the harmonics 
we can consider it will go up to 4..6Khz. All studios would cut off a guitar before processing at 4 or 6.

 ![freq_ranges7](https://github.com/user-attachments/assets/84ee54c9-d4f3-42eb-9eab-dfd46383acb1)

     * Original document: http://guitarbuilding.org/wp-content/uploads/2014/06/Instrument-Sound-EQ-Chart.pdf


### Testing pickups

  [pickup testing](https://www.youtube.com/watch?v=5E-IHvX7vRU)


### Frequency response
 

    Here Ive tested couple of pickups I had handy in the range of 100 to 15 Khz. 
    The probe is a coil with almost 0 inductance was made as: 140..160 turns of 
        0.1mm wire on a wood coffe stiring stick.
    The yellow line represent the the EXI-CCW response.

See it here: https://www.youtube.com/watch?v=KD3PIVsBRIo


![frequency-response-guitar-graph](https://github.com/circinusX1/sexa-ccw/assets/69641625/6f998b94-56da-473a-8156-6cec2b3ec632)


---

#### Magnetic field distribution

![image](https://github.com/user-attachments/assets/b8a5d370-a5ae-42d9-b2ab-b33b3e6394ff)

----

#### SNR


   * Signal to Noise ratio measurements (Left Side: noise [Pickup, cables, Probe] in dB, Right All strings hit signal dB) SNR > 42dB
     
   * Test on EXI-CCW V1 V2 and V3

![snr_measurements](https://github.com/user-attachments/assets/9e77f4ac-187c-401d-b68d-649ec1bbebdc)



----

### Active pickup, V4

![image](https://github.com/user-attachments/assets/293ca895-f3e4-4690-a94a-38bf22cc096c)

![pick-pcb-6coils v4](https://github.com/circinusX1/exi-ccw/blob/main/latest/EXI-CCW-PCB-V4.png)

  * The EasyEda PCB is in latest folder


----


#### V3 sexa-ccw

![pick_v3](https://github.com/circinusX1/sexa-ccw/assets/69641625/90c53b04-8858-478b-84e9-50dcb3daaf10)


----
### Youtube videos

[YOUTUBE 1](https://www.youtube.com/watch?v=kiHT9ebmXm8)


[YOUTUBE 3](https://www.youtube.com/watch?v=KD3PIVsBRIo)




----

### Wiring

![hum_pickup_schem](https://github.com/user-attachments/assets/ab6aecd4-c662-405d-a481-3dcc77360dc5)


## One or Double coil standard guitar pickups comments

Standard guitar pickup core is mostly plastic (75%). The active iron adds up up 30% in few cases,
but 90% of the pickups core is 24..26% being extremely inneificient. 
This tehnology is a century old and has not evolved a bit. With new modern low noise IC's
this can be improved as I said above. Here are the drawbacks of such a bad old tehnology.


![filling-factor](https://github.com/user-attachments/assets/97ca918b-d1ad-4c51-9ae8-c7bfb1c99bd2)

----

### Single or dual coil pickups problems

A regular pickup coil is extremely inefficient. The shape of the coil is elongated along all strings.This decreases the coil inductance, actually you barely can calculate the inductance of such a coil. A second factor is the permeability of the mixed plastic and string iron nuts. 70% of the inner core is plastic. The whole core adds up to 480 .. 500 squared mm. The nuts area is: 6(nuts) x PI x 2.5mm(radius)^2 → 110..120 squared mm. This represents 25%. To compensate such inneficiency the coil has around 6000 .. 8000 turns, with a wire which adds up a lot of capacitance and resitance. Such a coil has 1.8 to 2.5 Henrys. A humbucker dual coil would be double, like 4..5 Henrys. 


![image](https://github.com/user-attachments/assets/ceea8f12-f662-4d90-ba2e-e98fb5aa3d4b)

This huge number of turns adds up parasite capacitance. This makes the standard pickup sound dull and muddy. Exi coil uses 6 separate coils with 99% full iron core. Exi pickup achieves same inductance with 10 times fewer turns. Coils turns tunning and proper phasing and assembly makes the magnetic field uniform across the pickup. Exi-pickup has 10 times less turns, reduced capacitance, the sound is much clean and the muddy effect is almost gone. 

----

### Issues, Help 
   * https://github.com/circinusX1/exi-ccw/issues
   * [linkedin](https://www.linkedin.com/in/octavianmchincisan/)

----

# Purchase options

 *  [ORDER & HERE Ver 4]([https://exi](https://ghitara.com/))
     *  Also you can buy a KIT    
 *  [EXI CCW WEB SITE](https://exicoil.from-ca.com/)
 *  search on eBay exi ccw



----




