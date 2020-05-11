import 'package:graphologyapp/dictionary/dictionary.dart';

class DictionaryProperties {
  int _propertyNumber = 0;

  List<DictionaryProp> _propertyBank = [
    DictionaryProp(
      //0
      c: 'frm',
      n: 'Form Fields',
      i: 'This is just used as a spacer for page 0',
      d: 'This is just used as a spacer for page 0',
    ),
    DictionaryProp(
      //1
      c: 'lns',
      n: 'Line Spacing',
      i: 'Pertains to the space between each line of text. Even though there are no exact rules about how much space should be left between lines, "Normal" space is considered to be roughly the same height as the text. Best samples are those not on lined paper.',
      d: 'The choice of line space you see can help you determine how the writer uses their time, how orderly their thinking processes are, and how they use their material resources.',
    ),
    DictionaryProp(
      //2
      c: 'wds',
      n: 'Word Spacing',
      i: '"Normal" space between words should be equivelent to the width of the writer\'s letter "m".',
      d: 'Defines personal space demanded from others and degree of self-restraint used in social situations.',
    ),
    DictionaryProp(
      //3
      c: 'lts',
      n: 'Letter Spacing',
      i: '"Normal" letter spacing would be equivelent to 1/4 - 1/2 of the average width of the letters in the word. You should ignore ending and beginning strokes, and use the edge of the letters to measure the space.',
      d: 'Defines freedom.',
    ),
    DictionaryProp(
      //4
      c: 'mgn',
      n: 'Margins',
      i: 'Average margin width is 1 inch all around the page. Best samples are a full page or letters/essays with multiple pages.',
      d: 'Defines how you hold on to your past.\n\nLeft side = past/me.\nMiddle = present.\nRight side = future/you.\nTop third = past/reader.\nMiddle third = present.\nBottom third = future/enthusiasm.',
    ),
    DictionaryProp(
      //5
      c: 'bln',
      n: 'Baseline',
      i: 'The baseline is the visible or invisible line that you write on. Anything underneath the baseline is considered to be in the lower zone, often referred to as "the basement."',
      d: 'Defines how grounded you are.\n\nAbove the ground = Reality/conscious.\n\nBelow the ground = Fantasy/unconscious.\n\nBeginning = Beginning of an effort or goal.\n\nMiddle = How the writer sits about attaining her objectives.\n\nEnding = Completion of an effort or goal.\n\nNote that blood sugar levels, blood pressure and muscle tension have an effect on the baseline.',
    ),
    DictionaryProp(
      //6
      c: 'zng',
      n: 'Zones - General',
      i: 'American Palmer school copybook considers middle zone letter height and width to be 3mm, which is what you can use as a reference for medium sized letters in upcoming sections. The lower zone is often referred to as "the basement."',
      d: 'Upper Zone = Intellect.\nMiddle Zone = Daily life/reality.\nLower Zone = Subconscious/basement.',
    ),
    DictionaryProp(
      //7
      c: 'znu',
      n: 'Zones - Upper',
      i: 'Upper Zone Height (UZH) should be 50% taller than middle zone height (MZH), so if a letter is 3mm tall, then the total height should equal 4.5mm tall. The width of the upper loops (UZW) should be 50% of the middle zone width (MZW), equaling 1.5mm. The upper zone is often referred to as "the clouds."',
      d: 'Reaching upward away from the body.\n\nIncludes mental processes, spiritually, standards and principles, abstract reasoning, ambition, intellectual pursuits, imagination, view of authority figures such as father or boss or God.\n\nWrites from the head (brain). Lives in a world of ideas. Thinking. Fantasizing. Imagining. Hoping. Dreams. The higher the loops, the more willing you are to move from the known to the unknown.\n\n',
    ),
    DictionaryProp(
      //8
      c: 'znm',
      n: 'Zones - Middle',
      i: 'Middle zone height (MZH) and middle zone width (MZW) should be about the same. American Palmer school copybook considers height and width to be 3mm, which is what you can use as a reference for medium sized letters. Here you can get out a ruler and measure several letters (such as a, e, and o) to come up with an average.',
      d: 'Defines daily life/reality.\n\nIncludes the self, day-to-day life, interactions, communication, expression or control of emotions, acting out moral principles, who needs and ability to satisfy them, and ability to adapt.\n\nWrites from the body (heart, lungs, etc. that keep you alive). You\'re living in the here and now. Feel and react in your gut.\n\nMiddle Zone Width (MZW) = Ego strength. How much you feel you need to move into the world and satisfy your needs.\n\nMiddle Zone Height (MZH) = Ego needs. How tall you feel and how much recognition you need.',
    ),
    DictionaryProp(
      //9
      c: 'znl',
      n: 'Zones - Lower',
      i: 'Lower Zone Loops (LZL) should be twice as long as Middle Zone Height (MZH). So if the MZW is 3mm, the LZL should be 6mm. Lower Zone Width (LZW) should be half as wide as Middle Zone Width (MZW). So if the MZW is 3mm, the LZW should be 1.5mm.',
      d: 'Defines hidden aspects of our personality.\n\nIncludes biological imperatives such as food, money and sex, experiences and memories that influence the present, view of mother or close female and nurturing, dreams and fantasies, release or repression of anger, susceptibility to stimulation, energy of the personality, and productivity.\n\nWrites from below the belt (walking, running, dancing, making love). Your physical, material, and sexual needs, urges, and appetites. You\'re living for physical, material, or sexual gratification.',
    ),
    DictionaryProp(
      //10
      c: 'rgl',
      n: 'Rhythm - General',
      i: 'Rhythm involves movement, and how the writer flows. A good, balanced rhythm can be seen in a writer that generally maintains consistent pressure, speed, patterns, form, and slant. Left or right "trending" is different from slant; trending is where on the page they tend to spend more time.',
      d: 'Defines basic life force. Both physical and emotional factors affect the writer\s movement.',
    ),
    DictionaryProp(
      //11
      c: 'rtp',
      n: 'Rhythm - Tension/Pressure',
      i: 'Writing pressure can be identified as the flow of ink as it is applied to the paper. It is easier to determine pressure when you can actually see the original document, as you can clearly see how deep they applyied pressure; however, you can still see if there are irregulations/changes from the thickness of the lines even if you are looking at an photograph or scanned copy.',
      d: 'Writing pressure resembles the energy of the personality. More pressure = more energy. A good, balanced tension can be observed when it is difficult to find irregulations.',
    ),
    DictionaryProp(
      //12
      c: 'rsd',
      n: 'Rhythm - Speed',
      i: 'Measuring speed on paper is not very easy. Beautifully constructed letters take time to form, so look for perfections. "Graphic maturity" is defined as the ability to write fluidly without having to stop and think about how you\'re writing and forming letters, etc.',
      d: 'Speed relates to intelligence, spontaneity, and dynamic action. In the forward movement we can see how the writer approaches the world, such as how enthusastic they are. Very fast and very slow writers should not be left in the same room together.',
    ),
    DictionaryProp(
      //13
      c: 'rip',
      n: 'Rhythm - Impulse Patterns/Airstrokes',
      i: 'Connected writing is letters connected to each other, such as in cursive. Ligatures are the connecting strokes between letters. Airstrokes are the movements that you see when the pen lifts off the paper. Impulse patterns start when the pen starts moving on the paper and ends when the pen is lifted; each time the pen touches the paper you create an impulse pattern. Can be more easily identified with a magnifying glass.',
      d: 'Impulse patterns in writing are tied to speech. Poor writing impulses are linked to problems in speech. Can be used to diagnose and treat speech-impaired patients. Shows degree of ability to connect thoughts and coordinate activities.',
    ),
    DictionaryProp(
      //14
      c: 'rfm',
      n: 'Rhythm - Form',
      i: 'Four (4) forms based on the roundness of the m or n.\n- Arcade = Round humps like they should be\n- Garland = Looks like a u\n- Angle = Very pointy like a ^\n- Thread = Wavy and thin.\n\nCan be found in other areas outside of the m or n.',
      d: 'The more rounded the form, the more passive the person. Round = emotions.\nThe more angular the form, the more resistance.\nThe more thready the form, the more refusal to make choices.',
    ),
    DictionaryProp(
      //15
      c: 'rst',
      n: 'Rhythm - Slant',
      i: '90° is vertical, 90-45° is moderate, anything more is extreme. PPI stands for Personal Pronoun I, which is the I used to refer to oneself in a sentence.',
      d: 'Consistency of slant reveals how stable your emotional equilibrium is.\n\nLeft slant = Me/mother/feminine influence. Skeptical about expression.\n\nRight slant = You/father/male influence. Shows interest in the speaker.',
    ),
    DictionaryProp(
      //16
      c: 'sty',
      n: 'Style',
      i: 'Style, defined here, is the general style of writing the writer uses, such as if they write in cursive or all caps. You\'ll look for how close to copybook they are, which is what they were taught in school. So consider the writer\'s education. If the writer was never taught cursive, then they don\'t have a basis for it. "Ingenious shortcuts" are connecting letters, where the end of one letter begins the start of the next letter.',
      d: 'Pay more attention to how much they deviate from what they learned in school. Those the tend to stay close to what they learned are more often followers than leaders. They are more comfortable with rules.',
    ),
    DictionaryProp(
      //17
      c: 'sgl',
      n: 'Signature - General',
      i: 'If there is no signature, then you can skip these sections. Surname is their last name, and given name is their first name. "Paraphs" are decorations on signatures. Pay attention to how close their signature looks compared to the rest of the text.',
      d: 'A person\'s signature reveals how the writer thinks about themself.',
    ),
    DictionaryProp(
      //18
      c: 'ssz',
      n: 'Signature - Size',
      i: 'Surname is their last name, and given name is their first name. Ascending is getting bigger from start to finish; descending is getting smaller.',
      d: 'When a signature is larger than the rest of the text, it can mean they think they are above what they are writing. Smaller signatures can mean they are trying to hide.',
    ),
    DictionaryProp(
      //19
      c: 'sst',
      n: 'Signature - Style',
      i: 'There are many different things to look for here, which should be self-explanatory.',
      d: 'The style resembles many things. It is recommended to refer back to the dictionary when you are done with your analysis to learn more.',
    ),
    DictionaryProp(
      //20
      c: 'scp',
      n: 'Signature - Capitals',
      i: 'Capital letters are generally two to three times the height of the middle zone.',
      d: 'Meanings vary here. Refer to the dictionary at the end of your analysis for more information on the specific meanings of each.',
    ),
    DictionaryProp(
      //21
      c: 'ppi',
      n: 'Personal pronoun I (PPI)',
      i: 'Personal pronoun I (PPI) is the "I" that they use when referring to themself. Copybook is twice the height of the middle zone.',
      d: 'The PPI\'s downstroke or backbone = Self. The straighter the downstroke the more independent the writer. The more curvature the more the writer depends on others for emotional support.\n\nPPI initial/top stroke = Mother.\n\nLast/bottom stroke = Father.',
    ),
    DictionaryProp(
      //22
      c: 'bes',
      n: 'Beginning & Ending Strokes',
      i: 'Beginning strokes are where the pen actually hits the paper and/or starts the formation of a letter. Ending strokes are where the pen lift off the paper and/or ends the formation of the letter.',
      d: 'Beginning strokes show how the writer moves from within him/herself out into the world. Ending strokes tell us how the writer relates to the outside world.',
    ),
    DictionaryProp(
      //23
      c: 'pnc',
      n: 'Punctuation',
      i: 'Punctuation refers to periods, exclamation marks, commas, question marks, etc.',
      d: 'Overdone punctuation is showing you that the writer wants to draw attention to themself. Ornamentation reveals that they don\'t know where they belong.',
    ),
    DictionaryProp(
      //24
      c: 'huk',
      n: 'Hooks',
      i: 'Hooks are more often found in angular writing, and less likely in garland writing.',
      d: 'Reveals how much they are holding on to something.',
    ),
    DictionaryProp(
      //25
      c: 'idt',
      n: 'Diacritics - i-Dots',
      i: 'Simple enough, this refers to the dot on top of a lower-case "i".',
      d: 'How precisely formed and placed to the stem determines how much attention to detail they have at the moment.',
    ),
    DictionaryProp(
      //26
      c: 'tcr',
      n: 'Diacritics - t-Crosses',
      i: 'Refers to the line they draw to cross their "t\'s".',
      d: 'T\'s = One\'s ability to create goals and meet them.\n\nT-stem = Self-image in regard to work life.\n\nHeight of t-bar = How high you set your goals.\n\nT-bar length = How much willpower the writer puts into attaining goals.\n\nT-bar pressure = Amount of stamina to withhold pressure in the pursuit of their goals.\n\nT-bar form = Ideas, attitudes, and theories.',
    ),
    DictionaryProp(
      //27
      c: 'ols',
      n: 'Other Letters & Symbols',
      i: 'No need to explain. There are many things to look for here.',
      d: 'These define organization.',
    ),
  ];

  int getCount() {
    return _propertyBank.length;
  }

  String getCategory() {
    return _propertyBank[_propertyNumber].category;
  }

  String getSpecificCategory(index) {
    return _propertyBank[index].category;
  }

  String getName() {
    return _propertyBank[_propertyNumber].name;
  }

  String getSpecificName(index) {
    return _propertyBank[index].name;
  }

  String getInstructions() {
    return _propertyBank[_propertyNumber].instructions;
  }

  String getSpecificInstructions(index) {
    return _propertyBank[index].instructions;
  }

  String getDescription() {
    return _propertyBank[_propertyNumber].description;
  }

  String getSpecificDescription(index) {
    return _propertyBank[index].description;
  }

  // Get Master Id from Category Name
  int getDictionaryId(String arg) {
    int dictionaryIndex = _propertyBank.indexWhere((f) => f.name == arg);
    return dictionaryIndex;
  }
}
