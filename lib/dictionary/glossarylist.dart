import 'glossary.dart';

class Glossary {
  int _glossaryNumber = 0;

  List<GlossaryItem> _glossaryBank = [
    GlossaryItem(
      i: 'line spacing',
      d: 'The space between the lines of text.',
    ),
    GlossaryItem(
      i: 'word spacing',
      d: 'The space between each of the words.',
    ),
    GlossaryItem(
      i: 'letter spacing',
      d: 'The space between the lines of text.',
    ),
    GlossaryItem(
      i: 'secondary expansion',
      d: 'Narrow letters with wide space between each letter in a word.',
    ),
    GlossaryItem(
      i: 'concave',
      d: 'Caving in. If on horizontal axis (such as the baseline or a t-cross), concave means the center of the line/bar falls downward. If on vertical axis (such as the left margin), concave means the center moves towards the middle of the page.',
    ),
    GlossaryItem(
      i: 'convex',
      d: 'Bulging out. If on horizontal axis (such as the baseline or a t-cross), convex means the center of the line/bar rises upward. If on vertical axis (such as the left margin), convex means the center moves away from the middle of the page and towards the edge of the paper.',
    ),
    GlossaryItem(
      i: 'baseline',
      d: 'The printed or imaginary line in which you write on.',
    ),
    GlossaryItem(
      i: 'basement',
      d: 'The lower zone located below the baseline.',
    ),
    GlossaryItem(
      i: 'loops',
      d: 'The oval shapes that are created when forming letter extensions in the upper and lower zones in a single movement without lifting the pen, such as in the upper stem of the letter "d".',
    ),
    GlossaryItem(
      i: 'zones',
      d: 'There are three (3) zones: upper, middle, and lower. The upper zone contains the upper stems of the letters b, d, f, h, k, l, and t. The lower zone contains the lower stems below the baseline of the letters (cursive) f, g, j, p, q, y, and (cursive) z. The middle zone is everything else in the middle just above the baseline.',
    ),
    GlossaryItem(
      i: 'downstroke',
      d: 'The downward movement made when forming a letter.',
    ),
    GlossaryItem(
      i: 'upstroke',
      d: 'The upward movement made when forming a letter.',
    ),
    GlossaryItem(
      i: 'beginning stroke',
      d: 'The beginning movement made when forming a letter.',
    ),
    GlossaryItem(
      i: 'ending stroke',
      d: 'The ending movement made when forming a letter.',
    ),
    GlossaryItem(
      i: 'breaks',
      d: 'Gaps where there should be connections between letters in cursive writing.',
    ),
    GlossaryItem(
      i: 'ligatures',
      d: 'The connections between letters in cursive writing.',
    ),
    GlossaryItem(
      i: 'MZH',
      d: 'Middle Zone Height',
    ),
    GlossaryItem(
      i: 'MZW',
      d: 'Middle Zone Width',
    ),
    GlossaryItem(
      i: 'UZH',
      d: 'Upper Zone Height',
    ),
    GlossaryItem(
      i: 'UZW',
      d: 'Upper Zone Width',
    ),
    GlossaryItem(
      i: 'LZL',
      d: 'Lower Zone Length',
    ),
    GlossaryItem(
      i: 'LZW',
      d: 'Lower Zone Width',
    ),
    GlossaryItem(
      i: 'rhythm',
      d: 'Involves movement and how the writer flows.',
    ),
    GlossaryItem(
      i: 'trending',
      d: 'Left or right trending is where on the page the writer tends to spend more time.',
    ),
    GlossaryItem(
      i: 'graphic maturity',
      d: 'The point at which you can write fluently without having to stop and think how to form the letters and words.',
    ),
    GlossaryItem(
      i: 'counterstrokes',
      d: 'Moving in the opposite direction of where they should be.',
    ),
    GlossaryItem(
      i: 'clubbed strokes',
      d: 'Where pressure suddenly thickens at the end of strokes.',
    ),
    GlossaryItem(
      i: 'stabbing/slashing strokes',
      d: 'Where strokes appear to stab or slash other letters.',
    ),
    GlossaryItem(
      i: 'margins',
      d: 'The space surrounding the writing to the edges of the page.',
    ),
    GlossaryItem(
      i: 'pressure/tension',
      d: 'How deep the writing is. The more pressure that is applied, the thicker the writing gets.',
    ),
    GlossaryItem(
      i: 'horizontal axis',
      d: 'From left to right.',
    ),
    GlossaryItem(
      i: 'vertical axis',
      d: 'From top to bottom.',
    ),
    GlossaryItem(
      i: 'impulse patterns',
      d: 'Impulse patterns start when the pen starts moving on the paper and ends when the pen is lifted.',
    ),
    GlossaryItem(
      i: 'airstrokes',
      d: 'The movements that you see when the pen lifts off the paper.',
    ),
    GlossaryItem(
      i: 'diacritics',
      d: 'A sign, such as an i-dot or t-cross, that normally require the writer to lift the pen off the paper to form it.',
    ),
    GlossaryItem(
      i: 'copybook',
      d: 'How the writer learned to form letters and other characteristics of their writing in school.',
    ),
    GlossaryItem(
      i: 'soldering',
      d: 'When the writer goes back and fixes broken ligatures.',
    ),
    GlossaryItem(
      i: 'form',
      d: 'There are four (4) forms when forming the hump(s) in a letter such as "n", "m" or "h": arcade, garland, angle, and thread. Arcade has round humps like they should be. Garland looks like "u". Angle is very pointy like a ^. Thread is wavy and thin and hardly legible.',
    ),
    GlossaryItem(
      i: 'manuscript writing',
      d: 'Printed writing with upper and lower case letters.',
    ),
    GlossaryItem(
      i: 'printscript writing',
      d: 'Combined printing and cursive.',
    ),
    GlossaryItem(
      i: 'block writing',
      d: 'Writing in all caps.',
    ),
    GlossaryItem(
      i: 'shark\s tooth',
      d: 'A counterstroke letter than looks like a shark\'s tooth that is formed as an angle with a bend or curve in it, as if something from the right side were pushing it.',
    ),
    GlossaryItem(
      i: 'primary thread',
      d: 'Made with moderate pressure and mostly seen at the ends of words. The last letter (often "m" or "n") starts to thin out or break down, making it look wavy.',
    ),
    GlossaryItem(
      i: 'secondary thread',
      d: 'Made without pressure or very light pressure, resulting in a form of wavy, threaded nonsense in the middle of a word.',
    ),
    GlossaryItem(
      i: 'double bow',
      d: 'Both arcade and garland.',
    ),
    GlossaryItem(
      i: 'slant',
      d: 'The direction in which the letters are formed: vertical, right, or left. 90° is vertical, 90-45° is moderate, anything more is extreme.',
    ),
    GlossaryItem(
      i: 'PPI',
      d: 'Personal Pronoun I. The "I" used to refer to oneself in a sentence.',
    ),
    GlossaryItem(
      i: 'style',
      d: 'The general style of writing the writer uses, such as if they are in cursive or all caps.',
    ),
    GlossaryItem(
      i: 'ingenious shortcuts',
      d: 'Unexpected connecting movements, such as crossing two "t\'s" with a single t-bar.',
    ),
    GlossaryItem(
      i: 'persona writing',
      d: 'Extremely slow and carefully constructed writing.',
    ),
    GlossaryItem(
      i: 'surname',
      d: 'Last name.',
    ),
    GlossaryItem(
      i: 'given name',
      d: 'First name.',
    ),
    GlossaryItem(
      i: 'ascending',
      d: 'Getting bigger.',
    ),
    GlossaryItem(
      i: 'descending',
      d: 'Getting smaller.',
    ),
    GlossaryItem(
      i: 'morse code',
      d: 'Writing that looks like a bunch of dots and dashes such as ".-.--. -...- .."',
    ),
    GlossaryItem(
      i: 'tick marks',
      d: 'Strokes that look like angular check marks.',
    ),
    GlossaryItem(
      i: 'springboard strokes',
      d: 'Long, straight initial stroke below the baseline.',
    ),
    GlossaryItem(
      i: 'harpoons',
      d: 'Extemely long, hooked stroks coming from below the baseline.',
    ),
    GlossaryItem(
      i: 'resentment strokes',
      d: 'Short, straight beginning strokes that form an angle out of the next letter.',
    ),
    GlossaryItem(
      i: 'fragmented strokes',
      d: 'Bent, broken, soldered strokes.',
    ),
    GlossaryItem(
      i: 'lurking lunatic strokes',
      d: 'Ending strokes that cross into the lower zone.',
    ),
    GlossaryItem(
      i: 'dot grinding',
      d: 'Just as it sounds: where the writing heavily grinds a period or the dot in an exclamation mark.',
    ),
    GlossaryItem(
      i: 'hooks',
      d: 'A small, hook-shaped mark that is formed at the beginning of a stroke leading from the direction in which the pen is coming from to touch down on the paper.',
    ),
    GlossaryItem(
      i: 'devil\'s fork',
      d: 'a beginning or ending stroke that is pitched like a devil\'s fork.',
    ),
    GlossaryItem(
      i: 't-stem',
      d: 'The vertical line in the letter "t".',
    ),
    GlossaryItem(
      i: 't-bar',
      d: 'The horizontal line in the letter "t".',
    ),
    GlossaryItem(
      i: 'lassolike',
      d: 'A vertical loop that is often formed when crossing a "t".',
    ),
    GlossaryItem(
      i: 'old school tie',
      d: 'Loops that are created where they are not expected to be, such as in the middle zone of a cursive "f" formed in a single stroke.',
    ),
    GlossaryItem(
      i: 'maniac d or diabolical d',
      d: 'The letter "d" at the end of a word that flops over to the right.',
    ),
    GlossaryItem(
      i: 'pugilistic p',
      d: 'A lowercase "p" that is formed with the initial stroke striking far above the middle zone.',
    ),
    GlossaryItem(
      i: 'greek e',
      d: 'An uppercase "E" that is supposed to be lowercase in the middle of a word. Formed in a single stroke that looks like a reversed "3".',
    ),
    GlossaryItem(
      i: 'elliptical g',
      d: 'A lowercase "g" that has a squeezed oval diagonal of the baseline, then curves right to the lower zone like a backward "C".',
    ),
    GlossaryItem(
      i: 'spoon-e',
      d: 'A lowercase "e" that starts in the middle and circles around it almost like an @ symbol.',
    ),
    GlossaryItem(
      i: 'instrusion/forked tongue strokes',
      d: 'An extra loop formed inside of an oval letter (ie. "o" or "a").',
    ),
    GlossaryItem(
      i: 'stinger',
      d: 'A sharp point inside of an oval letter, such as an "o" or "a".',
    ),
    GlossaryItem(
      i: 'black spots',
      d: 'Deliberately filled in ovals.',
    ),
    GlossaryItem(
      i: 'embezzler\'s oval',
      d: 'An oval that is open at the bottom.',
    ),
  ];

  void sort() {
    _glossaryBank.sort((a, b) {
      int compare = a.item.compareTo(b.item);
      return compare;
    });
  }

  int getCount() {
    return _glossaryBank.length;
  }

  String getItem() {
    return _glossaryBank[_glossaryNumber].item;
  }

  String getSpecificItem(index) {
    return _glossaryBank[index].item;
  }

  String getDefinition() {
    return _glossaryBank[_glossaryNumber].definition;
  }

  String getSpecificDefinition(index) {
    return _glossaryBank[index].definition;
  }

  List<GlossaryItem> getQueryResults(String queryArg) {
    return _glossaryBank
        .where((i) => i.item.toLowerCase().contains(queryArg.toLowerCase()))
        .toList();
  }

  String getQueryItem(String queryArg, int index) {
    return getQueryResults(queryArg)[index].item;
  }

  String getQueryDefinition(String queryArg, int index) {
    return getQueryResults(queryArg)[index].definition;
  }

  // By Category
  int getQueryCount(String queryArg) {
    return getQueryResults(queryArg).length;
  }
}
