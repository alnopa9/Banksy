# Banksy Project Review

Site publication: <http://banksy.newtfire.org>

GitHub: <https://github.com/alnopa9/banksy>

Developers: 
* Alyssa Argento: @alnopa9
* James Farley: @James-f117
* Abdual Nadeem: @abdual1100
* 
Date of Evaluation: 2019-05-13
Evaluated by: Elisa Beshero-Bondar: @ebeshero


### General  
Banksy is a work of informative art! This is an attractive fan site and information resource for serious researchers of contemporary art. What stands out on reviewing it is how easily it is to navigate, how visually appealing is the consistently unified color palette, and how quickly a visitor can survey and discover detailed information about the mysterious artist!  

### Research questions
Your research questions are succinctly defined in the list of goals on your index page. You are creating a database of Banksy’s artwork to find patterns and frequencies in when and where he creates “tags” around the world. During discussion of your project in Pittsburgh, people were asking if your project might help to predict the next Banksy sighting or resolve whether there is just one or multiple artists sharing the name. That is a more ambitious question, but related to your more scientific application of just presenting and organizing the data to find if there are patterns to understand Banksy. 

The index page does raise some questions for us: The word “tag” and your own language on the index page suggests that the site is concentrating on Banksy’s graffiti primarily, but as we explore we see you are compiling all of it in multiple mediums. We could see that one way to explore Banksy is through the most public of his artwork, the graffiti, but should you expand the explanation on the index page to include the rest—or to explain that you want to put the graffiti in context? 


### Technologies for visualization 
You did some marvellous work here to “drill down” into your data and explore all the markup you did, organizing it into not one but two timelines, and into networks and bar plots.

In each of these, your plots are attentive to that graffiti category. With the timelines we can quickly survey the works per year to gain a visual sense of the proportion of graffiti to more conventional media. It is not entirely clear what the relationship is between the left vs. right timeline. The one on the left seems to have more data and be drawn from your XML code. If we understand this correctly, does the timeline on the right just show what data *Banksy Unofficial* is sharing? You may want to update the text at the top of the Timeline page to explain the relationship between the two SVG plot.

**Correction**: In the year 2002 in your left-hand timeline, one title is *Though* when it should be *Tough*. 

The KML map helps to show some patterns, orienting us to the artist’s home base in England and how far apart the works are proliferating on multiple continents. But we are most impressed of all with your network graphs. It can be very difficult ot make these be legible ways of communicating information, but you made some excellent decisions to organize the data and put forward those graffiti tags. One network make it very easy at a glance to see which works were revisited in multiple media. The other is a network of places to help us see more clearly than we can with the markers on the Google Map which countries have the most Banksy artwork. We are super impressed with the balancing act of setting three complex infographics on the same page. The Analysis page renders perfectly in Firefox and Chrome, but seems to be problematic in Safari. The page perfectly passes w3c validation and we suspect Safari might not be consistently rendering the scaling you want in your SVG. There is [a Stack Overflow posting](https://stackoverflow.com/questions/11768364/svg-scaling-issues-in-safari) about this which may be helpful, and we recommend trying the solution, to add:
```
preserveAspectRatio="xMinYMin none"
```
to your SVG elements. That might not be the exact attribute value you want, so read more about it on Amelia Bellamy-Royd’s tutorial on SVG scaling: <https://css-tricks.com/scale-svg/>

###  “UX”: User Experience and Site Interface
The user experience is delightful, even playful in exploring Banksy’s work, and we know you worked very hard to achieve this, experimenting with flexboxes and defining viewable areas carefully. Every scrollbar is deliberate and an invitation to the viewer to interact and find out more. We love the organization and mouse interactivity of the “Works” page, and we know the XSLT and CSS for this were challenging to orchestrate. Being able to see so many of Banksy’s works organized by medium, and mousing over to discover the title makes this a quiz-yourself game for fans, to see if we can guess the titles! We also love the unexpected discovery on the Source page that the girl and the balloon in the frame are clickable links to live updating sites on Banksy!


### GitHub and project file management
With Alyssa’s strong leadership and James and Abdual’s due diligence, he team maintained a strong and mutually supportive balance through the term. Your GitHub is well organized which will make it easy for you to add new content when Banksy makes a new tag!


### Closing Comments
We are tremendously impressed with the care and artistry of this site and we hope and really expect it will become a favorite of Banksy fans! We will feature this site on newtFire’s index page on our Hall of Fame for one of the most impressive projects we have seen develop at Pitt-Greensburg. But we also hope you will keep building it. Our major emphasis for revision is to go over the writing, the short descriptive summaries on each page to make sure everything is up to date. And because this is a serious and professional site, remembering that all your data visualization relies on your XML source code, you may want to start a new phase of work by looking for errors to correct and perhaps designing more Schematron rules to test for them. We say this knowing that our own projects are error-prone and always need this kind of loving attention, and also because we are sure you will want to keep this project live to share with the world of Banksy fans and students of contemporary art! 
