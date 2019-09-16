//Class that is home to all the "Switch" methods

void GameFlow() {
  switch(currentCase) {

    //title page
  case "Start" ://starts the case
    output = "Dante's Inferno";//main text
    choice1 = "Press 's' to begin";
    song.play();
    win.rewind();
    win.pause();
    page.titlePage();
    startGame();

    break;
//1st screen
  case "Attacked and Lost" ://the beginning of our story
    output = "Your heart is pounding the beasts are catching up "
      + "there's no chance of escape so you keep running. "
      + "On the brink of death a stranger appears before you.";
    choice1 = "Ask who the stranger is?";
    choice2 = "Accept your death, you hate strangers.";
    choice3 = "Cry out for Beatrice";
    choice4 = "Wish you were back in the crusades";
    page.interactivePage(20);//makes the font fit the screen
    choosePath("Meeting Virgil", "I choose death", "Don't be a wuss", "Don't be a wuss");

    break;

  case "Meeting Virgil" :
    output = "The stranger says, 'My name is Virgil' "
      + "I have been sent by your beloved Beatrice "
      + "to aid you on your journey to the underworld";
    choice1 = "Press 'c' to continue";
    page.transitionPage(20);
    continueGame("Going with virgil");
    break;

  case "Going with virgil" :
    output = "Taking up your cross and praying to God " 
      + "you pry open the doors to hell and embark through them, "
      +"Virgil meets you on the other side and asks "
      +"if you are prepared for the dangers that lie ahead?";
    choice1 = "Yes, I am prepared";
    choice2 = "No, I am not prepared";
    page.interactivePage2(20);
    choosePath2("The start of the journey", "Don't be a wuss");
    song.pause();
    song3.play();
    break;

  case "I choose death" :
    output = "Lying there helpless the beasts devour you "
      + "and you are no more";
    choice1= "press 'r' to restart";
    choice2= "GAME OVER";
    page.endPage(36, 24);
    win.play();
    song.pause();
    song.rewind();
    song3.pause();
    song3.rewind();
    resetGame();
    break;

  case "Don't be a wuss" :
    output = "Stop crying and get going with your adventure ";
    choice1 = "Press 'c' to continue";
    page.transitionPage(20);
    continueGame("Going with virgil");
    break;

  case "The start of the journey":
    output = "Virgil takes you along the river Styx's "
      + "and guides you to Cairon's boat, the way to the "
      + "first circle of hell, Limbo.";
    choice1 = "Press 'c' to continue";
    page.transitionPage(20);
    continueGame("Cairon's question");

    break;

  case "Cairon's question" :
    output = "Cairon turns around and says, 'Ye who are "
      + "living begone from those who are damned' " 
      + " What do you say?";
    choice1= "I shall take my leave";
    choice2= "I would rather give my soul then to leave "
      + "Beatrice behind";
    choice3= "I shall kill you, for I am not leaving";
    choice4= "Stand in silence";
    page.interactivePage(20);
    choosePath("The silence", "The minions", "The minions", "The silence");
    break;

  case "The minions":
    output = "Cairon bellows that your soul is already his "
      + "and sends out his gargoyle's to give a fatal blow. "
      + "pulling out your sword you deflect and counter one "
      + "of the gargoyle's attacks, but your sword get's stuck "
      + "in the ground. You see a scythe lying on the ground from "
      + "where you had slain the other gargoyle.";
    choice1= "leave your sword and grab the scythe";
    choice2= "try to pull your sword1 out from the ground";
    page.interactivePage2(20);
    choosePath2("A new power", "A failed attempt");
    break;

  case "The silence":
    output = "You stay silent and walk away, Cairon feels ignored and the "
      +"damned around you swarm, throwing you into the river Styx's";
    choice1= "press 'r' to restart";
    choice2= "GAME OVER";
    page.endPage(36, 24);
    win.play();
    song3.pause();
    song3.rewind();
    song.rewind();
    resetGame();
    break;

  case "A new power":
    output = "Leaving your sword behind you rush to the scythe. Grabbing "
      + "it you kill the other gargoyle's flying around you";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Limbo");
    break;

  case "A failed attempt":
    output = "You struggle as you try to pull the sword out of the ground. "
      + "Putting in all the effort you can you pull the sword out, but not in "
      + "time, for a gargoyle had come and cleaved your head off";
    choice1= "press 'r' to restart";
    choice2= "GAME OVER";
    page.endPage(36, 24);
    win.play();
    song.rewind();
    song3.rewind();
    resetGame();
    break;

  case "Limbo":
    output = "After the refusal by Cairon to bring you to the first ring "
      + "you jump up and drive the scythe's blade into his head. "
      + "After Cairon is dead, you and virgil make your way to Limbo";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("The first circle");
    song3.pause();
    song2.play();
    break;

  case "The first circle":
    output = "Home of the unbaptised, the forsaken, and the one's who "
      + "did not have the required faith. Hearing a baby's cry you run over "
      + "to where it is and seem to recognize it";
    choice1= "pick it up";
    choice2= "walk away";
    page.interactivePage2(20);
    choosePath2("Reminiscence", "Nothing");
    break;

  case "Reminiscence":
    output = "Taking the baby in your arms you have visions of Beatrice "
      + "writing to you about being with child. Realizing that this was your "
      + "child you feel emotional, and the child crumbles into ashes and drifts "
      + "away into the wind.";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Peril");
    break;

  case "Peril":
    output = "As the child drifts from your hands muffled cries erupt around you "
      + "demon children swarm around you giving you the choice to only run "
      + "hearing Virgil's call you jump over a stone bridge and end up in a large "
      + "room where shadows are standing about.";
    choice1 = "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("History");
    break;

  case "Nothing":
    output = "Nothing Happens...";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("The first circle");
    break;

  case "History" :
    output = "In this room there are philosophers, kings, and old poets. "
      + "Their thoughts of philosophy came congruent to keeping with religion, "
      + "though they just did not have enough faith.";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("The one who judges");
    break;

  case "The one who judges":
    output = "Following Virgil along, you reach the room to which King Minos "
      + "resides. Through him all must pass. Minos asks 'who comes through my house "
      + "of pain'";
    choice1 = "He who seeks Beatrice";
    choice2 = "A lonely wanderer";
    choice3 = "A man looking to die";
    choice4 = "Silence";
    page.interactivePage(20);
    choosePath("The right path", "A lonely wanderer", "Death", "Always Silent");
    break;

  case"The right path":
    output = "Being denied, King Minos makes his attack, stumbling you regain your composure "
      + "and attack. Dodging his strikes Minos lands his tentacle's on his wheel of judgement "
      + "to where he is shredded and killed..... Proceed?";
    choice1 = "Yes";
    choice2 = "No";
    page.interactivePage2(20);
    choosePath2("Lust", "No Lust");
    song2.pause();
    break;

  case "A lonely wanderer":
    output = "I am but a lonely wanderer King Minos. He replies, 'Then you wouldn't mind "
      + "being cursed into damnation.'";
    choice1 ="press 'r' to restart";
    choice2 ="GameOver";
    page.endPage(36, 24);
    win.play();
    song.rewind();
    song2.pause();
    song2.rewind();
    song3.rewind();
    resetGame();
    break;

  case "Death":
    output = "I wish to die, King Minos looks at you and says, 'That can be arranged' "
      + "grabbing a hold of you, you are thrown on to the wheel of judgement.";
    choice1 ="press 'r' to restart";
    choice2 ="GameOver";
    page.endPage(36, 24);
    win.play();
    song.rewind();
    song2.pause();
    song2.rewind();
    song3.rewind();
    resetGame();
    break;

  case "Always Silent":
    output = " *Stays silent* King Minos asks again more irritated.";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("The one who judges");
    break;

  case "Lust":
    output = "You have reached the floor of Lust, only floor number two out of the "
      + "nine rings left, how long till you reach the final level?";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("floor 2");
    song4.play();
    break;

  case "No Lust":
    output = "Pfft, what are you thinking, of course you want to proceed!";
    choice1 = "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Lust");
    break;

  case "floor 2":
    output= "The wind and storm of lust rage forever, while passion fuels the heart. "
      + "Virgil explains as famous adultress fly among the sky, as you listen to the wind "
      + "you hear beatrice's voice carry along from afar";
    choice1= "Go to the voice";
    choice2= "Listen to Virgil";
    page.interactivePage2(20);
    choosePath2("Follow the voice", "Taking heed");
    break;

  case "Follow the voice":
    output= "You run to the voice for which Virgil had told you to wait.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Temptation");
    break;

  case "Taking heed":
    output= "Since when have you listened to Virgil, this is Beatrice we are "
      + "talking about.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Follow the voice");
    break;

  case "Temptation":
    output= "You walk into a room where you are tempted by many temptress, but "
      +"you refuse the service and are attacked by the serpants. After a quick defeat "
      +"satan appears before you to show you where you had commited your adulterous acts. "
      +"Beatrice watches on trying not to believe what she had been seeing.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Gluttony");
    break;

  case "Gluttony":
    output= "When the vision were over, and time went by, Virgil and yourself continued "
      + "to the 3rd circle of Hell, Gluttony. Feeling digression still about your adulterous "
      + "acts you admit that it was yourself and nothing else.";
    choice1= "continue on";
    choice2= "have a picnic";
    page.interactivePage2(20);
    choosePath2("Adventuring on", "Really, a picnic?");
    break;

  case "Really, a picnic?":
    output= "You're in the 3rd circle of hell, let alone the circle of Gluttony, and you "
      + "want to have a picnic? What are you mad? Get back on track please...";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Adventuring on");
    break;

  case "Adventuring on":
    output= "You move on and are introduced to cerberus, the guardian of the thrid circle. "
      + "Virgil says that the real circle is actually inside of him. So to save your beloved "
      + "Beatrice you must be swallowed by the creature before you.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Eaten");
    song4.pause();
    song5.play();
    break;

  case "Eaten":
    output= "You go to attack the creature and are quickly grabbed by it's long tongue and "
      + "promptly dragged down into it's belly. When you get there a spirit calls out to you "
      + "by the name of Chaco. Having pity on the spirit you take your cross and free him from "
      + "his torture.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("A rememberance");
    break;

  case "A rememberance":
    output = "The devil comes to you, saying that you should not be freeing the damned from "
      + "their suffering, for they deserve it. Showing you a memory of your father, satan says "
      + "that you can see him here in Hell. After this memory you stumble upon cerberus's heart "
      + "and deliver a swift blow to it.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Greed");
    break;

  case "Greed":
    output = "Falling down into the abyss, with a river of cerberus's blood pushing you down "
      + "you end up on the floor of Greed. What you see is mountain's of gold and treasure, more "
      + "than you had ever set eye's on.";
    choice1= "Take the money and run";
    choice2= "Bathroom break";
    choice3= "Flashback time";
    choice4= "Keep on trucking!";
    page.interactivePage(20);
    choosePath("Taking the money", "Bathroom break", "Flashback time", "Keep on trucking!");
    break;

  case "Taking the money":
    output = "Virgil see's that you are taking the treasure around you, and gives you a reminder "
      + "that once you die you will end up here yourself. Not caring about any of that you run away "
      + ", trip and fall, a heavy of amount of gold coins comes flowing down and crushes you to death.";
    choice1 = "Good thing there's a checkpoint!";
    choice2 = "press 'd' to continue.";
    page.checkpoint(36, 20);
    checkpoint();
    song5.pause();
    song5.rewind();
    break;

  case "Bathroom break":
    output= "You've been in Hell for a while so it does seem reasonable to take a break. Once you're "
      + "done though you need to get back to the adventure.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Flashback time");
    break;

  case "Flashback time":
    output= "As you sit and look at the gold you remember times with your father, where the only thing "
      + "that mattered to him was the money that he had.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Keep on trucking!");
    break;

  case "Keep on trucking!":
    output= "You carry on your way, when suddenly you hear a familiar voice. Remembering what satan had "
      + "said, out comes your father looking as grotesque as can be. This looks like it's not gonna be a time "
      + "of reunion but a time of battle.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Father and son");
    break;

  case "Father and son":
    output= "Your father declares that even in death he is still as greedy as he was in life. Getting a deal "
      + "from satan, for 1,000 years free from torment, and all the gold he wanted, all he had to do was kill his "
      + "son. Not having this You leap into action and take on your father.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("The path to anger");
    break;

  case "The path to anger":
    output= "Defeating your father you start to feel overcome by the surroundings, accusing Virgil that he is working "
      + "with satan to lure you into a trap. Knowing that this is not true you continue on to the circle of anger.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Memories");
    song5.pause();
    break;

  case "Memories":
    output= "Overcome by the air which anger and fury so dwell, you recall when anger had consumed you, and you had slain "
      + "innocent lives due to them being pagans.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Guardian");
    song6.play();
    break;

  case "Guardian":
    output= "Virgil lights the lanterns to signal the guardian of the River styx's, Fledgius, to come and give passage. "
      + "While getting passage the angry souls taunt and prod you for your past misdeeds. They want you to come "
      + "down so that they may have their revenge.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("City of Dis");
    break;

  case "City of Dis":
    output= "When you reach the outskirts of the city, you see off in the distance Lucifer proclaiming that he is going "
      + "to marry Beatrice. When you are spotted, Lucifer throws fire at Fledgius, to which he falls. Going into the tombs "
      + "of Heresy. Pharanata comes to Dante speaking that Lucifer will marry Beatrice";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("The minotaur");
    break;

  case "The minotaur":
    output= "Stabbing Pharanata with your cross, you procceed on. As you walk you hear a crumbling and the wall behind you "
      + "falls. Out comes the minotaur, the guardian who guards passage to the seventh circle of Hell.";
    choice1= "Face the minotaur";
    choice2= "Run away, you're done with this stuff.";
    page.interactivePage2(20);
    choosePath2("Facing the minotaur", "Death by horn");
    break;

  case "Facing the minotaur":
    output= "Virgil stands in front of you, and taunts the minotaur sending him into a blind rage. Consumed by this "
      + "the minotaur charges at you, which makes it easier to jump and land a finishing blow. You tell Virgil that "
      + "he may have made a good warrior in life";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Violence");
    break;

  case "Death by horn":
    output= "As you turn to run the minotaur see's the red covering your body and is enraged. He charges after you "
      + "delivers a swift horn to the back, ending your life.";
    choice1 = "Good thing there's a checkpoint!";
    choice2 = "press 'd' to continue.";
    page.checkpoint(36, 20);
    checkpoint();
    song5.rewind();
    song6.pause();
    song6.rewind();
    break;

  case "Violence":
    output= "A sea of blood to which the men of violence suffer in expands upon you. Bewildered to how you shall cross. "
      + "Virgil calls upon Nesus to guide you across the river, telling you about the people who resides in this circle. "
      + "After you had crossed you reach the wood of Suicide, where you hear your name being called.";
    choice1 = "Go to the voice";
    choice2 = "Ignore it";
    page.interactivePage2(20);
    choosePath2("The voice", "Ignore it");
    break;

  case "The voice":
    output= "You follow the voice to discover that your mother had ended up in this circle, she had hung herself."
      + "Being to weak, she decided to slay herself. She tells you that you can redeem yourself since you are still "
      + "living";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("The abominable sands");
    break;

  case "Ignore it":
    output= "Nothing happens";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("The voice");
    break;

  case "The abominable sands":
    output= "The damned did violence against God, Virgil explains as you traverse to the next part in the cirlce "
      + "of violence. You recall a memory where you had slain countless innocent lives held in their prison cell's "
      + "just because they were heathens. After the recollection crusaders start to come up from the sands. "
      + "Your brother is among them, and he accuses you for the reason they all ended up there.";
    choice1= "Fight?";
    choice2= "Talk it out?";
    page.interactivePage2(20);
    choosePath2("Fight?", "Talk it out?");
    song6.pause();
    song6.rewind();
    song7.play();
    break;

  case "Fight?":
    output= "Your brother says that you are a monster, and will never let you have beatrice. You're beaten around "
      + "he was always a better swordsman. As you layed on the ground though, you pulled yourself up, and with a swift "
      + "cut, you take off his head.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Fraud");
    break;

  case "Talk it out?":
    output = "You try to talk it out with Francesco, but it ends in vain. You misstep and are cut down by his sword.";
    choice1 = "Good thing there's a checkpoint!";
    choice2 = "press 'd' to continue.";
    page.checkpoint(36, 20);
    checkpoint();
    song5.rewind();
    song6.pause();
    song6.rewind();
    song7.pause();
    song7.rewind();
    break;

  case "Fraud":
    output = "The union of the three great rivers of hell resides here, says Virgil. Jerion is the way of passage to "
      + "the inner parts of the 8th circle. Leaving you to fend for yourself, you must cross the 10 Malibulges. "
      + "As you cross each one, you start to remember the sins that you have commited. Realizing in the end "
      + "that it was your fault that led to Beatrice's death.";
    choice1 = "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("To Beatrice");
    break;

  case "To Beatrice":
    output= "As you rush to where Beatrice is, Lucifer sends all of his guardians in the circle of Fraud to "
      + "tear the flesh off of you. You can hear the latin as the marriage ceremony is taking place between "
      + "Beatrice and Lucifer.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("The evil fruit");
    song7.pause();
    song7.rewind();
    song8.play();
    break;

  case "The evil fruit":
    output= "Beatrice takes the ring and eats the fruit provided for her. She loses all of her purity in "
      + "exchange for all the power of hell. Taking in to her own hands, Beatrice rushes down to face you "
      + "in battle.";
    choice1= "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Traitor");
    break;

  case "Traitor":
    output= "While fighting, Beatrice shows you the ninth circle of hell, the circle for traitors. "
      + "You remember how Beatrice's brother sacrificed himself, just so you could live and protect "
      + "Beatrice. To show that your love is true, you raise her cross to absolve her of her sins. So "
      + "that she can recommune with God. Beatrice forgives you and ascends to heaven.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Lucifer");
    break;

  case "Lucifer":
    output= "When Beatrice ascended to heaven you are told that you have to go and fight lucifer "
      + "in the circle of Treachery. This circle of cold, the farthest thing from God's holy light. "
      + "You find lucifer in chains and go to fight him, for the path to purgatory is through him.";
    choice1="Fight the final boss?";
    choice2="Start from the beginning?";
    page.interactivePage2(20);
    choosePath2("Fight the final boss?", "Start from the beginning?");
    break;


  case"Start from the beginning?":
    output= "You really sure you want to start at the beginning???";
    choice1= "Yes";
    choice2= "No";
    page.interactivePage2(20);
    choosePath2("Yes...", "No...");
    break;

  case"Yes...":
    output= "alright, you can if you want...";
    choice1 ="press 'r' to restart";
    choice2 ="GameOver";
    page.endPage(36, 24);
    resetGame();
    song.rewind();
    song2.rewind();
    song3.rewind();
    song4.rewind();
    song5.rewind();
    song6.rewind();
    song7.rewind();
    song8.pause();
    song8.rewind();
    break;

  case"No...":
    output= "Then why even choose this option sheesh.";
    choice1= "Press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Fight the final boss?");
    break;

  case "Fight the final boss?":
    output= "You jump towards Lucifer with intense courage, filled with the Holy Spirit you drive your "
      + "scythe through his head. Thinking that the battle is over, you hear a noise and Lucifer rises from his "
      + "seal. In his true form before you, the real battle begins.";
    choice1= "press 'c' to continue";
    page.transitionPage(20);
    continueGame("Cont.");
    break;

  case "Cont.":
    output= "Lucifer batters you around, you seem to be making no progress at all. How does one beat an "
      + "angel of the Lord? Thinking you decide to accept your fate in Hell, you get down on your knees and "
      + "pray, asking God for forgiveness and the opportunity to repent. Seeing this, you gain the power to seal "
      + "Lucifer back in his cold prison.";
    choice1 = "press 'space' to continue";
    page.transitionPage2(20);
    continueGame2("Purgatory");
    song8.pause();
    song8.rewind();
    win.play();
    break;

  case "Purgatory":
    output= "You jump into the pit of Purgatory and make your way to Paradise, to join your beloved Beatrice. "
      + "Forgiving yourself of your own sins, you tear off the cross of memories stitched to your chest, and walk "
      + "to where Beatrice resides..... Your adventure has come to an end, you've traveresed the 9 circles of hell "
      + "to save the woman you loved.";
    choice1 = "Press 'r' to restart!";
    choice2 = "You win";
    page.winPage(25, 40);
    song.rewind();
    song2.rewind();
    song3.rewind();
    song4.rewind();
    song5.rewind();
    song6.rewind();
    song7.rewind();
    song8.pause();
    song8.rewind();
    resetGame();
  }
}