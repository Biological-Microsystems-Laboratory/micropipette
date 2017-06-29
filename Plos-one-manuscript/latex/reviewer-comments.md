### Review Comments to the Author

Please use the space provided to explain your answers to the questions above. You may also include additional comments for the author, including concerns about dual publication, research ethics, or publication ethics. (Please upload your review as an attachment if it exceeds 20,000 characters)

1. Reviewer #1: This study about FDM printed micropipettes is very interesting. It gives a good idea of what is possible using an FDM printer, and where other technologies should be preferred.
The Luer connector between the syringe and pipette tip is not FDM manufactured, did you try to use different printing technologies as SLA or MJP technology? Especially SLA devices are purchasable in the same price range as FDM printer and come with higher surface quality and z-axis resolution.

> The following was added to the discussion "The luer to pipette tip connection is a good candidate for a 3D printed solution.
Unfortunately the current state of FDM can not make this adapter with high enough resolution or critically, surface smoothness.
Other printing techniques, such as stereolithography (SLA) and MultiJet Printing (MJP), provide higher resolution and smoother finishing, yet FDM is the the most widely available and affordable of printing technologies.
SLA printers are coming down in price but are still significantly more expensive especially considering the higher cost of the consumable resin vs. FDM filament.
Ultimately the goal of this project is to make this pipette cheap and easy to make."

Since the technology opens a very new topic to many researchers, the issue of general acceptance of 3D printing should be discussed. New technologies always come with a (healthy) amount of skepticism.

2. Reviewer #2: In their MS “Open Design 3D Printable Adjustable Micropipette that meets ISO Standard for Accuracy” Bennan et al. present their design of a 3D printable pipette which is substantially improved compared to previously published designs. The lynchpin of their idea is to use a commercial syringe as part of the design, which effectively solves a big issue with other designs out there: the pipette is much more accurate, sturdy, and, critically, not “leaky”. The authors also provide a nice set of build instructions that makes its reasonably easy to build one. So I did just that and compared it to the Biropette (my own design). Notably, I appreciate that the paper is also live on bioRxiv where I first saw it.

Overall, this new pipette is clearly “better” than biropette (which is probably one of the better ones out there to date). As such, I think the paper presents an extremely valuable design for researchers, educators and even hobbyists and I strongly support publication in PLoS ONE in principle. However, before this should happen I have a few comments that I hope will help to make the design accessible to more people around the world.

Major

1) Syringe standards. The authors are all based in the USA, where syringes have a certain shape. This shape syringe, unfortunately, is not the same in Europe where I am based. As such, European syringe flanges don’t fit the 3D printed design but instead just fall out. Obviously, this is a big problem, which would be most easily fixed by providing more than one 3D printed file with different size mounts. Since the design provided is not an OpenSCAD file, modifying the existing one is tedious, and will put off most people. As such, I strongly recommend that the authors provide additional versions of the pipette body to accommodate different types of syringe flanges. It’s probably worth checking what different standards are in different regions of the world and accommodate at least the most common ones.

> The syringe used for this design is available in Europe, BD distributes worldwide. We do hope to expand compatibility. This line was added to the discussion: "It's our hope that this project is under continuous development and compatibility with different syringes and printers can be crowd-sourced from community contributors."

2) Related to this, the authors don’t provide the calculation for the adjusted volume scale for the syringe types they used. As such, I cannot easily make a new scale for a different pipette standard. Could the authors please show their working, and, ideally, provide more printable scales for different syringe standards.

> We used an empirical method where expected vs. actual measurements were plotted against each other. The result was a linear relationship. The adjusted scale was lengthened by 1:1.027. I can try to work out a theoretical solution for this but the empirical method should work and can be checked with other syringes.

3) I could not find the details for the connector that the authors used to plug the tip into the syringe end. Also, I suspect there are different standards there?

> It's a standard luer lock to hose barb connection (Cole Parmer, Part number: ). Some surgical tubing is used as a gasket around the hose barb to adapt to pipette tips. Unfortunately this is an area where the end user may have to improvise a connection as we haven't found a standard way to do this that we're happy with. 

4) I could not really get the 2 point pressure thing working in my print. Basically, the chassis flap and the inner piston wedge don’t interlock, they just slide past each other. I printed on an Ultimaker 2 with “normal” quality setting so I don’t think it’s a print precision issue. Is the user required to press the little flap inwards while pushing the thumb piston down? This was not clear to me from the description. Also, if I do that, the system “locks” if I press the thumb button all the way in – is that on purpose? Perhaps, could the authors make a little video about the pipette assembly? E.g. just film someone putting one together with a few closeups, and just talking over it while they are doing it? I think this would really help, plus I suspect it would raise the appeal to actually build one for many people.

> We printed on a Makerbot, perhaps some adjustments may need to be made for different printers. I have an assembly video to share. I can also make a longer walk through video with voice over commentary.

Minor

1) Please specify spring tension and diameter (there is many spring standards and again I could not get the exact one specified so I had to buy several different ones till I found something suitable)

> The spring stuff should be on McMaster website, we can measure this too.

2) Where exactly is the printed scale to be glued on? Presumably, with “0” being exactly at the end of the non-constricted pipette shaft? Again, this could be fixed in a video. Related, how should one account for the little bit of air that is in the thin part and inside the pipette tip itself?

> This should be cleared up in the video

3) I think it would help to display the data from Table 3 graphically. The table has too many numbers to be easily parsed. Also, perhaps include some histograms of effective volume for a given setting to that one can better appreciate any outliers. Alternatively, use boxplots which is probably the better thing to do anyway.

> Plotting the data. I had box plots at one point. I'll have to go back to them.

4) Please fix typos:
a. Line 26, “a everyday” – change to “an”
b. Line 30, end, add “be”
c. Line 32, not “principal” but “principle”
d. Line 35, “due” not “do”
e. Line 109, “performed” not “preformed”

> Fixed. Thank you for catching these.

3. Reviewer #3: This is a really nice paper by Dave's group and, in the opinion of this reviewer, encompasses the spirit of 3D printing in the sciences. Specifically, Dave has constructed something, an important piece of equipment that can be used in scientific labs. The pipette is a major tool used in thousands of labs. This is really neat and the statistical proof that it works is presented in the manuscript. I would publish as is...people will use this!
