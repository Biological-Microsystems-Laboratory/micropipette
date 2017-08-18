3D Printable Micropipette
=========================

This printable micropipette actuates a disposable syringe to an adjustable set-point using an assembly of 3D-printable parts and basic hardware.

<img src="images/gif-side-cross.gif" alt="image" style="width: 500px;"/>

<img src="images/photo.png" alt="image" style="width: 500px;"/>

## Parts

Both the 30-300 uL Pipette and the 100-1000 uL Pipette use the same printed parts: body-clip.stl and plunger.stl. In addition a disposable syringe and some additional hardware is used to assemble the pipette.

**30-300 uL Pipette:**

| Part           | Unit Price | Source         | Part number |
|----------------|------------|----------------|-------------|
| Filament       | $1.63      | Makerbot       | NA          |
| 1 mL Syringe   | $0.15      | BD Biosciences | 309628      |
| M3 Bolt, 35 mm | $0.12      | McMaster-Carr  | 91287A026   |
| M3 Nut         | $0.01      | McMaster-Carr  | 90591A121   |
| Spring (2)     | $4.14      | McMaster-Carr  | 9657K347    |
| Washers (2)    | $0.16      | McMaster-Carr  | 90107A012   |
| **total**      | **$6.21**  |                |             |

**100-1000 uL Pipette:**

| Part           | Unit Price | Source         | Part number |
|----------------|------------|----------------|-------------|
| Filament       | $1.63      | Makerbot       | NA          |
| 3 mL Syringe   | $0.73      | BD Biosciences | 309657      |
| M3 Bolt, 35 mm | $0.12      | McMaster-Carr  | 91287A026   |
| M3 Nut         | $0.01      | McMaster-Carr  | 90591A121   |
| Spring (2)     | $4.14      | McMaster-Carr  | 9657K347    |
| **total**      | **$6.63**  |                |             |

Kits can also be ordered from: https://www.gogomicro.com

## Assembly

See our video demonstration: https://www.youtube.com/watch?v=D8y5WUYpcW0

## Paste on Scale

For ease of use and to achieve the highest accuracy replace the syringe graduations with the adjusted scale. Print out on a transparency sheet and tape on to the syringe aligning the zero point with the plunger position.

## Validation

Data from a commercial pipette and our printed pipette with and without the adjusted print-and-paste scale compared to the ISO standard.

**100-1000 uL pipette:**

|         |                       | Mean    | Systematic Error | \% Sys. err. | Random Error | \% Rand. err. |
|---------|-----------------------|---------|------------------|--------------|--------------|---------------|
| 1000 uL | ISO 8655, 100-1000 uL | 1000    | 8.00             | 0.80         | 3.00         | 0.30          |
|         | Commercial Pipette    | 1002.98 | 2.98             | 0.30         | 1.72         | 0.17          |
|         | Printed Pipette       | 949.29  | -50.71           | -5.07        | 0.60         | 0.06          |
|         | Printed Pipette Scale | 1003.57 | 3.57             | 0.36         | 0.89         | 0.09          |
|         |                       |         |                  |              |              |               |
| 500 uL  | ISO 8655, 100-1000 uL | 500     | 8.00             | 1.60         | 3.00         | 0.60          |
|         | Commercial Pipette    | 503.67  | 3.67             | 0.73         | 0.49         | 0.10          |
|         | Printed Pipette       | 475.99  | -24.01           | -4.80        | 4.75         | 1.00          |
|         | Printed Pipette Scale | 503.62  | 3.62             | 0.72         | 1.64         | 0.33          |
|         |                       |         |                  |              |              |               |
| 200 uL  | ISO 8655, 100-1000 uL | 200     | 8.00             | 4.00         | 3.00         | 1.50          |
|         | Commercial Pipette    | 204.61  | 4.61             | 2.30         | 0.15         | 0.07          |
|         | Printed Pipette       | 186.55  | -13.45           | -6.72        | 1.31         | 0.70          |
|         | Printed Pipette Scale | 201.87  | 1.87             | 0.94         | 1.47         | 0.73          |
|         |                       |         |                  |              |              |               |
| 100 uL  | ISO 8655, 100-1000 uL | 100     | 8.00             | 8.00         | 3.00         | 3.00          |
|         | Commercial Pipette    | 104.29  | 4.29             | 4.29         | 1.65         | 1.58          |
|         | Printed Pipette       | 94.02   | -5.98            | -5.98        | 4.81         | 5.12          |
|         | Printed Pipette Scale | 101.00  | 1.00             | 1.00         | 1.05         | 1.04          |

**30-300 uL pipette:**

|        |                       | Mean   | Systematic Error | \% Sys. err. | Random Error | \% Rand. err. |
|--------|-----------------------|--------|------------------|--------------|--------------|---------------|
| 300 uL | ISO 8655, 30-300 uL   | 300    | 4.00             | 1.33         | 1.50         | 0.50          |
|        | Commercial Pipette    | 301.19 | 1.19             | 0.40         | 0.53         | 0.18          |
|        | Printed Pipette       | 286.91 | -13.09           | -4.36        | 0.42         | 0.15          |
|        | Printed Pipette Scale | 299.11 | -0.89            | -0.30        | 0.48         | 0.16          |
|        |                       |        |                  |              |              |               |
| 200 uL | ISO 8655, 30-300 uL   | 200    | 4                | 2            | 1.5          | 0.75          |
|        | Commercial Pipette    | 200.06 | 0.06             | 0.03         | 0.46         | 0.23          |
|        | Printed Pipette       | 193.40 | -6.60            | -3.30        | 2.86         | 1.48          |
|        | Printed Pipette Scale | 200.57 | 0.57             | 0.28         | 0.86         | 0.43          |
|        |                       |        |                  |              |              |               |
| 50 uL  | ISO 8655, 30-300 uL   | 50     | 4                | 8            | 1.5          | 3             |
|        | Commercial Pipette    | 49.02  | -0.98            | -1.96        | 0.10         | 0.20          |
|        | Printed Pipette       | 49.62  | -0.38            | -0.76        | 1.26         | 2.53          |
|        | Printed Pipette Scale | 48.73  | -1.27            | -2.54        | 1.11         | 2.27          |
|        |                       |        |                  |              |              |               |
| 30 uL  | ISO 8655, 30-300 uL   | 30     | 4                | 13.3         | 1.5          | 5             |
|        | Commercial Pipette    | 29.08  | -0.92            | -3.06        | 0.09         | 0.31          |
|        | Printed Pipette       | 29.22  | -0.78            | -2.59        | 0.31         | 1.07          |
|        | Printed Pipette Scale | 27.78  | -2.22            | -7.41        | 1.37         | 4.93          |
|        |                       |        |                  |              |              |               |
| 20 uL* | ISO 8655, 30-300 uL   | 20     | 4                | 20           | 1.5          | 7.5           |
|        | Commercial Pipette    | NA     | NA               | NA           | NA           | NA            |
|        | Printed Pipette       | 18.70  | -1.30            | -6.48        | 0.38         | 2.01          |
|        | Printed Pipette Scale | 17.94  | -2.06            | -10.29       | 1.87         | 10.42         |
|        |                       |        |                  |              |              |               |
| 10 uL* | ISO 8655, 30-300 uL   | 10     | 4                | 40           | 1.5          | 15            |
|        | Commercial Pipette    | NA     | NA               | NA           | NA           | NA            |
|        | Printed Pipette       | 11.95  | 1.95             | 19.52        | 0.73         | 6.08          |
|        | Printed Pipette Scale | 7.64   | -2.36            | -23.64       | 0.38         | 4.92          |

* *these volumes are outside of 30-300 uL but we wanted to show data in this range achievable by the pipette.*

Check out our write-up in BioRxiv: http://biorxiv.org/content/early/2017/02/20/109231
