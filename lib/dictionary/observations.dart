import 'package:graphologyapp/dictionary/dictionary.dart';

class Observations {
  int _observationNumber = 0;

  List<Observation> _observationBank = [
    //////////////////////// LINE SPACING ////////////////////////
    Observation(
      c: 'lns',
      d: false,
      f: 'Extremely regular line spacing',
      m: 'Obsessive. Compelled to follow strict routine. Impossible to vary from daily routine.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Clear/normal line spacing',
      m: 'Mental clarity. Implies self assurance.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Narrow line spacing',
      m: 'Narrow minded. Stingy spending habits. Conscious of the need to use resources very carefully.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Crowded line spacing (almost touching)',
      m: 'Impulsive.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Tangled lines (loops tangled with other lines)',
      m: 'Loss of perspective. Thoughts, ideas, feelings and actions are all jumbled together. Delayed or ignored routines and responsibilities.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Moderately wide line spacing',
      m: 'Logical and orderly. Plans ahead. Less constrained to hold on to resources. Spends more freely.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Extremely wide line spacing',
      m: 'Lost capacity to act spontaneously. Observes rather than participates. Maintains own space.',
    ),
    Observation(
      c: 'lns',
      d: false,
      f: 'Irregular line spacing',
      m: 'Inconsistent in how he/she uses his/her time, money, and other resources. Lacks good self-discipline.',
    ),
    //////////////////////// WORD SPACING //////////////////////// 8
    Observation(
      c: 'wds',
      d: false,
      f: 'Balanced word spacing',
      m: 'Well balanced and comfortable asserting need for space. Expects privacy from others and respects the privacy of others.',
    ),
    Observation(
      c: 'wds',
      d: false,
      f: 'Narrow word spacing',
      m: 'Impulsive. Need for involvement and socializing. Needs physical contact.',
    ),
    Observation(
      c: 'wds',
      d: false,
      f: 'Extremely narrow word spacing',
      m: 'Doesn’t know boundaries. Needs to be around other people. Leaves no space for his/herself. Needs constant reassurance. Could be a sign of a stalker.',
    ),
    Observation(
      c: 'wds',
      d: false,
      f: 'Wide word spacing',
      m: 'Clear thinker. Pauses to reflect. Considerate of others. Reserved and keeps distance. Possible feelings of loneliness and isolation.',
    ),
    Observation(
      c: 'wds',
      d: false,
      f: 'Extremely wide word spacing',
      m: 'Problems in ability to string ideas together in a logical progression. Inability to connect with people on their level. Insecure around people. Fear of intimacy. Putting space between him/herself and others. Often a deep fear of intimacy.',
    ),
    Observation(
      c: 'wds',
      d: false,
      f: 'Irregular word spacing',
      m: 'Unpredictable behavior and inner conflicts.',
    ),
    //////////////////////// LETTER SPACING //////////////////////// 14
    Observation(
      c: 'lts',
      d: false,
      f: 'Balanced letter spacing',
      m: 'Balanced sense of freedom.',
    ),
    Observation(
      c: 'lts',
      d: false,
      f: 'Narrow letter spacing',
      m: 'Rushes to judgment. Overreacts. Impulsive. Needs acceptance.',
    ),
    Observation(
      c: 'lts',
      d: false,
      f: 'Wide letter spacing',
      m: 'Lets it all hang out. Outgoing. Responding according to what is happening from moment to moment.',
    ),
    Observation(
      c: 'lts',
      d: false,
      f: 'Inconsistent letter spacing',
      m: 'Ambivalence. Uncertainty.',
    ),
    Observation(
      c: 'lts',
      d: false,
      f: 'Secondary expansion (narrow letters/wide space between them)',
      m: 'An introvert converting to an extrovert. Insecure and shy but trying to be more outgoing.',
    ),
    //////////////////////// MARGINS //////////////////////// 20
    Observation(
      c: 'mgn',
      d: false,
      f: 'Extremely balanced margins',
      m: 'Appearances mean more than substance. A place for everything and everything in its place. Always trying to be at absolute best.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'Well balanced margins all around',
      m: 'Careful planner with a good sense of timing. Creates structure. Uses common sense to budget resources. Polite and courteous. Most comfortable within familiar limits.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'Narrow margins all around page',
      m: 'Gets involved with anything and everything whether he/she can afford it or not. Often overextended. Doesn\'t know when to say “no.” Wastes own time and others’ time.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also crowding lines and word spacing',
      m: 'Trying to control all space. Intrusive.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also handwriting is also large',
      m: 'Money problems. Must use all resources.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also small or narrow writing with no margins',
      m: 'Possible hoarder.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'Extremely wide margins around page',
      m: 'Terrified of getting involved with life. Feels inadequate and hides deficiencies. Difficulty with physical contact. A greater “margin” of difference between him/herself and others.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also undeveloped or immature script',
      m: 'May be showing off or trying to seem sophisticated when they’re not.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin rigid/perfect',
      m: 'Doesn\'t make decisions without taking the time. Self-discipline. Fear of doing things without carefully thinking about it. Inflexibility.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin narrow/RIGHT margin wide',
      m: 'Past is more comfortable than future. Safety and security important. Afraid to spend resources. Trying new things is stressful. Looks to old friends or family for support.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin crossing a printed or ruled line',
      m: 'Makes up their own rules. Refuses to follow standards.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin wide',
      m: 'Desire to move forward and leave the past behind. Welcomes opportunities and new ideas. Careful about spending but uses it to get ahead.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin extremely wide',
      m: 'May be running away from the past like a traumatic event. Look at samples over time to determine if it\'s habitual or situational.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin wide/RIGHT margin narrow',
      m: 'Courageous. Not concerned about conforming to convention. Ready to jump at a chance to move forward.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin shrinking',
      m: 'Begins with enthusiasm but doubts creep in. Starts backing off, wondering if they’re doing the right thing. Returns to safety of the past.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin growing',
      m: 'Enthusiasm grows.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also writing large',
      m: 'Tendency toward extravagance.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin concave (caves in)',
      m: 'Fighting a desire for extravagance and pulls back.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin convex (bulges out)',
      m: 'Continually puts breaks on behavior and can\'t always resist temptation.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'LEFT margin irregular',
      m: 'Conflict about what to do next. Makes things up as he/she goes along.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin rigid/perfect',
      m: 'Lots of self-control. Needs lots of structure. Strictly by the book.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin narrow',
      m: 'Spontaneous. At ease about trying new things.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin extremely narrow',
      m: 'Lacks self-discipline. Impulsive.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'If also words are falling off edge and downward',
      m: 'May be having thoughts of suicide. Possibly financially screwed.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin wide',
      m: 'Future coming too soon. Very cautious. The past taught them to be careful about the future.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin expanding',
      m: 'Needs encouragement to keep going on. Reverts to safety. Often gives up easily.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin shrinking',
      m: 'Welcomes new challenges. Becoming more comfortable.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'RIGHT margin extremely irregular',
      m: 'Emotionally unreliable. Poor planner. Content with turbulence. Pressured by a strong need for a variety (esp. with long lower loops). Unable to stick with a steady point of view.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'UPPER margin narrow',
      m: 'Doesn\'t care whether the reader understands what is going on or not. May be lack of discretion and appropriateness.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'BOTTOM margin narrow',
      m: 'Enthusiasm and spontaneity.',
    ),
    Observation(
      c: 'mgn',
      d: false,
      f: 'BOTTOM margin wide (that is too wide for the message)',
      m: 'More concerned about appearances. Doesn\'t reveal much about him/herself. May not be telling the whole story.',
    ),
    //////////////////////// BASELINE ////////////////////////
    Observation(
      c: 'bln',
      d: false,
      f: 'Writer must have lined paper or ruler',
      m: 'Strong need for structure and direction. Insecure. Afraid to step out into an empty space or unfamiliar territory. Often difficult sexual issues.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Writes on lined paper but doesn\'t follow line',
      m: 'Wants you to believe they are going to follow the rules but prefers to be independent.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Hovering above the baseline',
      m: 'Spirit of adventure. Enthusiasm.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Below the baseline',
      m: 'Focuses on what is tangible and material. No spiritual matters. May be depression, illness or psychic heaviness.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Hugging the baseline',
      m: 'Strong regularity with little variation. Need for security.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Steady baseline',
      m: 'More focused on achieving goals. Highly goal oriented.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Moderately straight baseline',
      m: 'Reasonably flexible. Uses common sense. Good willpower.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Slightly wavy baseline',
      m: 'Easily distracted. Welcomes interruptions. Easily adapts to people and circumstances. Experiences more emotional ups and downs.',
    ),
    Observation(
      c: 'bln',
      d: true,
      f: 'Extremely wavy baseline',
      m: 'Can\'t make up mind on smallest details. Not to be trusted with important decisions. Unreliable. Avoids conflict. Willing to quit easily.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Uphill baseline',
      m: 'Working hard to keep a positive outlook. Upbeat and energetic.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Extremely uphill baseline',
      m: 'Impulsive. Driven by urges and emotions. Pushes to get own way.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Falling baseline',
      m: 'Fatigue or illness. Lacks energy and enthusiasm needed to pursue goals effectively. Easily discouraged. Feels worn down. Feeling blue. Spirits are sinking.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Baseline falling at end',
      m: 'Didn\'t see the end coming. Lack of planning.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Concave baseline (droops in the middle)',
      m: 'Low confidence but always finishes goal.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Convex baseline (rises in the middle)',
      m: 'Enthusiasm dies down.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Lower zone letters are entirely in the middle zone',
      m: 'Above ground is safe and secure.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'One word falls or jumps',
      m: 'Strong emotional association to a word that falls or jumps.',
    ),
    Observation(
      c: 'bln',
      d: false,
      f: 'Step up and step down baseline',
      m: 'Constant struggle. Can\'t keep emotions and enthusiasm under control. Expects things to go badly. Pulls out of depression daily. Signs of borderline personality disorder.',
    ),
    Observation(
      c: 'bln',
      d: true,
      f: 'Letters or words falling into basement',
      m: 'Bends rules.',
    ),
    //////////////////////// ZONES GENERAL ////////////////////////
    Observation(
      c: 'zng',
      d: false,
      f: 'Balanced zones',
      m: 'Healthy balanced development.',
    ),
    Observation(
      c: 'zng',
      d: false,
      f: 'Sloppy unbalanced zones',
      m: 'Wants to have fun.',
    ),
    Observation(
      c: 'zng',
      d: false,
      f: 'Fluctuations in letter size',
      m: 'Lacks confidence.',
    ),
    Observation(
      c: 'zng',
      d: false,
      f: 'Machinelike handwriting',
      m: 'Overcontrol. Represses emotions.',
    ),
    Observation(
      c: 'zng',
      d: false,
      f: 'Larger writing',
      m: 'Probably an extrovert. Uses lots of hand gestures when they talk.',
    ),
    Observation(
      c: 'zng',
      d: false,
      f: 'Smaller writing',
      m: 'Probably an introvert. Doesn\'t want to be noticed.',
    ),
    //////////////////////// ZONES UPPER ////////////////////////
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone overextended/tall loops',
      m: 'Too serious and never wants to have fun. May have difficulty in the real world. Creates own reality. Perhaps feels inferior.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone tall and narrow',
      m: 'Raised in a strict household. Views authority figures as towering over him/her, trying to compensate by dominating others. Narrow-minded.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone disproportionately tall upper loops',
      m: 'Values principles ideas over practical results.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone narrow',
      m: 'Narrow minded. Afraid to explore philosophies.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone wide loops',
      m: 'Too much time thinking rather than doing. Imagination is given free reign. Hypersensitive. Imagines others are talking about them in a critical way. The wider the loop the more unrealistic they are.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone inflated',
      m: 'Likes to embellish and brag. Stretches the truth to fit inflated self-image.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone extremely exaggerated/ballooned upper loops',
      m: 'Often delusional or paranoid.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone short',
      m: 'Generally doesn\'t have strong spiritual beliefs. More materialistic than intellectual. Non-believer.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone strong downstroke',
      m: 'Willing to incorporate what he/she has learned into reality.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'If also weak downstroke',
      m: 'Avoiding it.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone too tall',
      m: 'Dissatisfied with who they are. Aspiring to please an authority figure.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'If also narrow',
      m: 'May have had an ultra religious upbringing with lots of rules to follow, or strong beliefs in certain rules or manners.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone retraced loops (downstroke covers the upstroke)',
      m: 'No room for intellectual growth.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone tall moderately wide loops',
      m: 'Has a good imagination. Learns from experience. Keeps a reasonable perspective on what others have to say. Easy to visualize unfamiliar concepts.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone no upper loops',
      m: 'No imagination. Cuts to the chase.',
    ),
    Observation(
      c: 'znu',
      d: false,
      f: 'UPPER zone breaks',
      m: 'Increased stress out severe anxiety. Possible hypochondriac or neurotic.',
    ),
    //////////////////////// ZONES MIDDLE ////////////////////////
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone overly large /dominant',
      m: 'Tendency to be childlike and self-centered. Enjoys being center of attention. Lives for the moment. Difficult to delay gratification.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone overemphasis',
      m: 'Solely interested in today or immaturity.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'If also in a teenager',
      m: 'Solely interested in today.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'If also in an adult',
      m: 'Immaturity.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone letters that don\'t belong in lower zone but are',
      m: 'Unresolved pain or frustration.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone letters that are generally the same height and width',
      m: 'Self-confidence.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone medium height and width',
      m: 'Well adjusted. Realistic. Generally conventional. Adequate self-confidence. Inner security.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone wider',
      m: 'More important to be accepted by others. Quantity becomes more important than quality. Need for acknowledgment and approval.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone shorter',
      m: 'Doesn\'t care what others think. More intellectual than social. Likes being alone. Works well under pressure. Introverted.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone small and super narrow',
      m: 'Insecure. No confidence. Feels he/she doesn\'t deserve to command much space in the world.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone tiny',
      m: 'Prefers own company to that off others. When forced into the company of others he/she is nitpicky and generally petty toward them. I\'ll attack you before you get a chance to attack me. Afraid that others will see them for what they believe they are--nothing.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone extremely tiny (the letters seem skeletal)',
      m: 'Signs of mental illness.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone large',
      m: 'Less realistic. Doesn\'t believe he/she can fail.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'If also with adequate width',
      m: 'Has enough confidence to carry through with plans.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'If also with proportional width',
      m: 'Determined to stand out in the world. Must be center stage. Needs admiration.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone large and narrow',
      m: 'Compensation for feelings of anxiety demonstrated by the narrowness. All talk but no walk.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone extremely large',
      m: 'The world revolves around them. Thinks they are better than others. A “know-it-all.” Doesn\'t accept responsibility.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone variable sizes',
      m: 'Wide range of emotions on a continuum of sensitivity and touchiness. Some variability indicates adaptability to need of the moment, extreme variables indicate unstable moods.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone variable MZW only',
      m: 'Unpredictable. Has mood swings.',
    ),
    Observation(
      c: 'znm',
      d: false,
      f: 'MIDDLE zone under-developed or illegible',
      m: 'Not very good with everyday details of life.',
    ),
    //////////////////////// ZONES LOWER ////////////////////////
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone sharp and twisted angles',
      m: 'Possible sexual frustration.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone has an assortment of twists and turns',
      m: 'Mixed up in the sexual department. Possibly bisexual.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone broken',
      m: 'Indicates some sort of trauma, physical or emotional, relating to their sexual organs, sex life, or lower body. Could have lost a lover or had a hysterectomy. Possibly sexual anxiety.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone good pressure on the downstroke',
      m: 'Vitality. The stronger it is, the more of a leader he/she is.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone moderately full lower loops',
      m: 'Adequate sexual satisfaction.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone long lower loops',
      m: 'Deep basement underground. Interested in learning about their heritage and roots. May have some skeletons in the closet. Interest in satisfying physical and material desires.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone extremely long lower loops (twice as long)',
      m: 'Can\'t relax. Uses sex as a tranquilizer.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone downstroke without looping back up (in the middle of a word)',
      m: 'Leaving it in the basement/unconscious. Doesn’t want to face what is deep inside the unconscious.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone looping back up or bringing back upstairs',
      m: 'What we decide to bring back into our daily life. Look for associations.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone upstroke crosses the downside before the baseline',
      m: 'Lack of proper emotional release (often in sex).',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone short lower loops',
      m: 'Uncomfortable in the basement. Unlikely to learn from past mistakes. Leave the past alone. Lack of determination or persistence.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone narrow lower loops',
      m: 'Inhibition. Hard to act on desires.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone moderately wide lower loops',
      m: 'Spontaneous. Strong sex style. Looking for new adventures with the people closest to them.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone loops bulge and far left',
      m: 'Possibly gay.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone huge loops',
      m: 'Huge appetite for physical, sexual, or material gratification. More about quantity than quality. Sign of an oversized libido.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone wide lower loops that balloon',
      m: 'Overblown fantasy life. Full of hot air. Feels sexually inadequate. Overreacts and exaggerates. Distorts the facts.',
    ),
    Observation(
      c: 'znl',
      d: true,
      f: 'LOWER zone loops that curl inward like a snail\'s shell',
      m: 'Strong self-involvement. Only has room for him/herself. Egocentric. Sneaky and looks for an opportunity to play dirty. Often perverted. Blackmailing. Sabotage.',
    ),
    Observation(
      c: 'znl',
      d: true,
      f: 'LOWER zone claw shaped lower loops (a.k.a. felon’s claw or cat’s paw)/counterstroke',
      m: 'Unreleased guilt. Blaming him/herself for something that is or isn’t their fault.',
    ),
    Observation(
      c: 'znl',
      d: true,
      f: 'When also in lower zone',
      m: 'Guilt of a sexual nature. Often sexually abused and blames themself rather than the perpetrator.',
    ),
    Observation(
      c: 'znl',
      d: true,
      f: 'If also in middle zone combined with contaminated oval letters',
      m: 'Sure sign of a thief.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone lower loops with short sharp hook',
      m: 'Cranky and short tempered. Nitpicky.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'If also combined with heavy pressure',
      m: 'May be a bully.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone large rounded lower loops that don\'t come back up and point to left',
      m: 'Missed the nurturing loving care from mother. Often vulnerable.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone lower loops far left or triangle to left',
      m: 'Unhealthy attachment to mother or has a need for being mothered/nurtured that they didn’t get from their mother growing up. Unresolved issues with women.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone lower loops far right',
      m: 'Rebel against male authority. May have unresolved issues with father or men.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone loop veers off in another direction',
      m: 'May be suffering from sexual abuse. Unable to resolve past painful events.',
    ),
    Observation(
      c: 'znl',
      d: false,
      f: 'LOWER zone flip-flopped',
      m: 'Possibly gay.',
    ),
    //////////////////////// RHYTHM GENERAL ////////////////////////
    Observation(
      c: 'rgl',
      d: false,
      f: 'Good rhythm',
      m: 'Harmonious personality.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Bad rhythm',
      m: 'Something is out of wack.',
    ),
    Observation(
      c: 'rgl',
      d: true,
      f: 'Disturbed rhythm',
      m: 'Lacks harmony. Pathology.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Nicer looking handwriting',
      m: 'Nicer looking appearances.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Legible handwriting',
      m: 'I\'m an open book.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Illegible handwriting',
      m: 'Try as you might, you won\'t get a darn thing out of me.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Left trending',
      m: 'Seeking refuge in the past and fears the future.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'More regular/vertical trending',
      m: 'More willpower.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Right trending',
      m: 'Running from the past and rushing to the future.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Lack of graphic maturity (which is the point at which you can write fluently without having to stop and think how to form the letters and words)',
      m: 'Could be mental illness, lower IQ or laziness.',
    ),
    Observation(
      c: 'rgl',
      d: true,
      f: 'Counter strokes (moving opposite of what they should be)',
      m: 'Rebellious. Seeking comfort in opposite direction. Pay attention to associations.',
    ),
    Observation(
      c: 'rgl',
      d: true,
      f: 'Clubbed strokes (pressure suddenly thickens at end of strokes)',
      m: 'Outburst of emotion.',
    ),
    Observation(
      c: 'rgl',
      d: true,
      f: 'Stabbing or slashing strokes',
      m: 'Bad temper and a cruel tongue.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Right side of letters that are supposed to be straight are bent our caved in',
      m: 'Anxiety about the future.',
    ),
    Observation(
      c: 'rgl',
      d: false,
      f: 'Sharp writing',
      m: 'Critical. Aggressive. Sees things in very black and white.',
    ),
    //////////////////////// RHYTHM TENSION/PRESSURE ///////////////////////
    Observation(
      c: 'rtp',
      d: false,
      f: 'Too much tension',
      m: 'Body is always on alert.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Too much release',
      m: 'Inability to react quickly.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Extra heavy downstrokes',
      m: 'Excessively concerned with most basic of instincts and personal survival.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Extra heavy upstrokes',
      m: 'Focus on outer concerns such as altruistic or idealistic efforts or developing spiritual side.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Moderate/medium pressure',
      m: 'Adequate willpower, stamina, and sex drive.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Light pressure',
      m: 'Less energy. Doesn\'t want to deal with it anymore. Sensitive. Temperamental. Emotional.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Extremely light pressure',
      m: 'Possible depression. Overwhelmed. No willpower.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Moderately heavy pressure',
      m: 'Gets things done. Feels they can overcome anything. Not afraid to demand what they want. Often enjoys fine wine, spicy foods, and rough textures. High stamina.',
    ),
    Observation(
      c: 'rtp',
      d: true,
      f: 'Extremely heavy pressure',
      m: 'Frustration or anger. Often resorts to alcohol or drugs or violence.',
    ),
    Observation(
      c: 'rtp',
      d: true,
      f: 'Variable pressure',
      m: 'Unpredictable. Unreliable. Inconsistent.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Sudden bursts of pressure',
      m: 'Associated with word.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'If also on the horizontal axis',
      m: 'Forcing their will on the world. Domineering.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'If also it appears in underlining',
      m: 'Trying to exert authority.',
    ),
    Observation(
      c: 'rtp',
      d: false,
      f: 'Reversed pressure (should be heavier downstroke and lighter upstroke)',
      m: 'Manipulation.',
    ),
    //////////////////////// RHYTHM SPEED ////////////////////////
    Observation(
      c: 'rsd',
      d: false,
      f: 'Very slow handwriting',
      m: 'Quiet and profound or lazy and timid. Could be mental illness or lack of graphic maturity.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Deliberate slow speed',
      m: 'Probably trying to hide something. Pathological anxiety or possible criminal acts.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Moderately slow',
      m: 'Passive and thoughtful.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Medium speed',
      m: 'Conventional approach. Reasonable impulse control. Can handle delays.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Moderately fast',
      m: 'Focuses on the writing content rather than the style. Self-assurance. Efficient and doesn\'t like to waste. Uses time and resources wisely. Reacts quickly.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Very fast speed',
      m: 'Ability to get things done quickly and efficiently. Fast thinker.',
    ),
    Observation(
      c: 'rsd',
      d: false,
      f: 'Hurried speed (often leaves out letters and diacritics)',
      m: 'Sense of agitation. Fears they won\'t be able to get things done in time.',
    ),
    //////////////////////// RHYTHM IMPULSE PATTERS/AIRSTROKES /////////////
    Observation(
      c: 'rip',
      d: false,
      f: 'Connected writing',
      m: 'Ability to connect thoughts.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'Overly connected writing',
      m: 'Argumentativeness.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'Disconnected writing',
      m: 'A break in the flow of thought.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'Smooth airstrokes',
      m: 'Moving in same direction. Strong commanding purpose. Self-confidence.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'Blunt airstrokes',
      m: 'Unsure of their next move and stops to reconsider or adjust path. Lack of self-assuredness.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES highly connected',
      m: 'Good memory for facts but not so quick to associate them with the events they represent. Finishes projects without interruption. Strong need for being involved with others.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES overly connected (no breaks at all even after capital letters)',
      m: 'Refusal or inability to let up.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also combined with narrow or crowded writing',
      m: 'Obsessive.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also combined with excitement',
      m: 'Psychological disturbance.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also combined with close word spacing',
      m: 'Poor social boundaries.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also there’s a lack of space',
      m: 'Paranoia.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES broken in unexpected places (diacritics and pausing after syllables are expected)',
      m: 'Disconnected.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES moderately disconnected more than copybook',
      m: 'Quick mind.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also combined with smooth airstrokes in upper zone',
      m: 'Ability to proliferate a series of ideas and combine them into a workable system.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also combined with choppy airstrokes',
      m: 'Less controlled emotions. Changing attitudes and behaviors.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES extremely disconnected',
      m: 'Nervous activity. Restless movement. Often creative but unproductive. Breaking the bonds between self and the outside world.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES making consistent breaks - Pausing after first letter of a word',
      m: 'Tendency to reconsider after having made a decision.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also disconnected final letter is g',
      m: 'Often sometime who has trouble making emotional commitments in intimate relationships. Feels compelled to hold onto the last little bit of him/herself.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'If also both breaks after first letter and before last letters',
      m: 'Trouble making commitments.',
    ),
    Observation(
      c: 'rip',
      d: false,
      f: 'LIGATURES soldering (when the writer goes back and fixes broken ligatures)',
      m: 'Anxious to make things look better than they are. Doesn\'t want to be seen as wrong. Retouching makes matters worse.',
    ),
    //////////////////////// RHYTHM FORM ////////////////////////
    Observation(
      c: 'rfm',
      d: false,
      f: 'Manuscript writing (printed writing with upper and lower case letters) with writing almost touching each other',
      m: 'Conscious desire to keep distance, but has an inner need for closeness.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Printscript (combined printing and writing)',
      m: 'May be wonderfully creative or impulsive and erratic. Look at the whole picture to find out which is correct.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Block writing (all caps)',
      m: 'Confined in middle zone, concentrating on day-to-day activities. Often big ego. Shares opinions but expects you to agree and won\'t change their mind.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Original writing that is almost hieroglyphic (lacks upstrokes, skeletal and disintegrated writing)',
      m: 'Deteriorating mind.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Only one form',
      m: 'One dimensional personality.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'A mixture of forms',
      m: 'Ability to relate to many different types of people on their own level.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Arcades',
      m: 'Impenetrability. Emotional. Hides emotions under their arches.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Fast/high arcades',
      m: 'Driven toward success and accomplishment. Doesn\'t let obstacles get in the way. Creative. Very interested in the past. Traditional.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'Slow/low arcades',
      m: 'Self-oriented and defensive.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'Last stroke in a word ends leftward in an arcade',
      m: 'Self-protection.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also narrow',
      m: 'Sign of deliberate secretiveness and withholding of information.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Garlands',
      m: 'More feminine. Willingness to please. Sociability. Kind and compassionate.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also very rounded',
      m: 'More comfortable with kids and animals than adults, but defends home and family.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also flat, shallow/drooping, or weak garlands',
      m: 'Extreme susceptibility and dependency, weakness, or laziness. Gullible. Easily influenced. Could be depression.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Sham/unnatural garlands',
      m: 'May be hiding something.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Angles',
      m: 'Angry. Looking for fights. Lots of friction. Expects others should accommodate them.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also combined with heavy pressure',
      m: 'A ruthless heavy hand.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'Extreme angularity',
      m: 'Aggression.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'If also combined with narrow forms and heavy pressure',
      m: 'Anti-social. Dominates in relationships.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Soft angles',
      m: 'Just plain firmness.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'Sharks tooth (counterstroke)',
      m: 'Smiles at you while calmly stabbing you in the back. Emotionally hungry for a feeding frenzy. Voracious.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Thread',
      m: 'Unassertive. Avoiding. Evasive. Dodges conflict.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Primary thread (legible and looks like it\'s written faster)',
      m: 'Thinks and acts fast. Skims the surface of information. Gets impatient with too many details. King of adaptability. Often jumps to conclusions.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also the ends of words thin out',
      m: 'Diplomacy and tact or manipulating and exploitative. Look for other signs.',
    ),
    Observation(
      c: 'rfm',
      d: true,
      f: 'Secondary thread (made without pressure or very light pressure)',
      m: 'Inner hysteria. Crushed by life\'s burdens. Can\'t handle anymore. Self-preservation. Lost resilience.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'If also illegible',
      m: 'Total lack of concern for others. No compassion. Form of choice by the con-artist. Refuses to make a commitment of any kind.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Double bow (both arcade and garland)',
      m: 'Working at maintaining an equilibrium. Changing sides. Avoids making choices.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Angle/thread combination',
      m: 'Sneaky and undependable. Capitalizes on weaknesses of others. Don\'t trust them.',
    ),
    Observation(
      c: 'rfm',
      d: false,
      f: 'Curves',
      m: 'Gentle, nonaggressive nature.',
    ),
    //////////////////////// RHYTHM SLANT ////////////////////////
    Observation(
      c: 'rst',
      d: false,
      f: 'VERTICAL/NO slant',
      m: 'Assumes a neutral posture until he/she approves of the subject matter. Self-control and self-discipline. Does not lack emotions but prefers not to admit he/she has any. Weighs his/her words before speaking. Thinks before acting. Listens to logic rather than emotion. Balances the pros and cons. Head over heart. Needs to be in control of their emotions.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'LEFT slant moderate',
      m: 'Rejection of the world. Turns away. Encourages him/herself rather than letting other people encourage them. Reveals little about self. Rebellious behavior. Defying authority. Likely a victim of nasty experiences. Needs to protect self. Leaning back to avoid letting you know anything about them.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'If also a man',
      m: 'Early conflicts with an influential male.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'If also a woman',
      m: 'Difficult to relate to men, competitive with men.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'If also in lower zone only',
      m: 'Could be disappointment in intimate relationships and doubts about ability to satisfy their lover.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'If also rounded',
      m: 'Could be possessive.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'LEFT slant extreme',
      m: 'Very unhappy childhood and unhappy parents. Unresolved difficulties resulting in a negative attitude. Looking for stability and nurture that they didn\'t get early on.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'RIGHT slant moderate',
      m: 'Sociable and affectionate. More feelings than logic and reason. Leaning towards people. Actions and reactions are based mainly on feelings, and have trouble holding back their emotions.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'RIGHT slant extreme',
      m: 'Seeing things from own point of view. More about gut feelings. How will this affect me?',
    ),
    Observation(
      c: 'rst',
      d: true,
      f: 'Extreme right slant when combined with heavy pressure',
      m: 'Goes ballistic without warning.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'If also combined with narrow word and line spacing',
      m: 'Responds hysterically at the drop of a hat. Emotional problems. Explosively angry or passionately loving. Bipolar tendencies.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'VARIABLE slant',
      m: 'Indecisive. Can\'t make up mind.',
    ),
    Observation(
      c: 'rst',
      d: true,
      f: 'Slanting opposite',
      m: 'Evasiveness and covering up.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'The PPI is slanted left when everything else is slanted right',
      m: 'Signs of guilt.',
    ),
    Observation(
      c: 'rst',
      d: false,
      f: 'Slants are different in different zones',
      m: 'Conflicts between the zones.',
    ),
    //////////////////////// STYLE ////////////////////////
    Observation(
      c: 'sty',
      d: false,
      f: 'Close to copybook',
      m: 'More likely you are to conform to society.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Simplified handwriting',
      m: 'Gets down to the basics. Efficient. Expeditious. Simplified personality.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Ingenious shortcuts',
      m: 'Proficient at constructing solutions to problems in unconventional ways.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Extremely simplified',
      m: 'Not considerate of others. Too impatient. High level of stress. Irritable.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Skeletal writing (almost illegible)',
      m: 'Emotional self-denial. Impoverished spirit. Narcissism. Egocentric.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Enriched ornamental writing',
      m: 'Wants to improve writing.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Embellished ornamental writing',
      m: 'Attracted to flamboyant showy things. Dramatic, Theatricality. Everything is big and exciting. The bigger and more extravagant the flourishes and ornaments, the less in touch with reality they are. May be conceited or narcissistic. Boasting about supposed accomplishments. Impressed with other people\'s money.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Machine-like writing',
      m: 'Fear of losing control. When they do lose control, they go berserk.',
    ),
    Observation(
      c: 'sty',
      d: false,
      f: 'Persona writing (overly slow and carefully constructed)',
      m: 'Performers and artists. Keep their personal life private. Strong self-control. Feels if they don\'t take time to make things look "just right," someone might discover who their faults.',
    ),
    Observation(
      c: 'sty',
      d: true,
      f: 'Capitals in cursive mid-word',
      m: 'Behaves inappropriately to get attention.',
    ),
    Observation(
      c: 'sty',
      d: true,
      f: 'Changing styles from one paragraph to the next',
      m: 'Unpredictable behavior.',
    ),
    Observation(
      c: 'sty',
      d: true,
      f: 'Unnecessary loops ("strangler strokes")',
      m: 'Sign of someone who likes to strangle people.',
    ),
    Observation(
      c: 'sty',
      d: true,
      f: 'Unnecessary strokes that don\'t belong',
      m: 'Obsessive Compulsive Disorder.',
    ),
    Observation(
      c: 'sty',
      d: true,
      f: 'Repeatedly retraced letters',
      m: 'Compulsive neurotic. Overindulges in sex, drugs, or alcohol to alleviate built up tension and angst.',
    ),
    //////////////////////// SIGNATURE GENERAL ////////////////////////
    Observation(
      c: 'sgl',
      d: false,
      f: 'Middle name or middle initial included',
      m: 'Sign of pride.',
    ),
    Observation(
      c: 'sgl',
      d: false,
      f: 'Clear and legible',
      m: 'What you see is what you get.',
    ),
    Observation(
      c: 'sgl',
      d: false,
      f: 'Illegible',
      m: 'Desire for privacy.',
    ),
    Observation(
      c: 'sgl',
      d: false,
      f: 'Surname illegible',
      m: 'Issues with her father.',
    ),
    Observation(
      c: 'sgl',
      d: false,
      f: 'Given name illegible',
      m: 'Insecure ego.',
    ),
    Observation(
      c: 'sgl',
      d: false,
      f: 'Extra large initials only',
      m: 'Low self-esteem.',
    ),
    //////////////////////// SIGNATURE SIZE ////////////////////////
    Observation(
      c: 'ssz',
      d: false,
      f: 'Surname larger (if married with a given name)',
      m: 'Great respect for tradition and pride in the family name.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Given name larger',
      m: 'May not be too enamored by/disappointed in own family.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Shriveling up another person\'s name',
      m: 'Dislike or hated for that person.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Signature smaller than text',
      m: 'Either underestimates self or wishes to appear more modest than they really are.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Signature larger than text',
      m: 'Wants to appear supremely poised and confident, but really feels quite small inside.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Ascending signature',
      m: 'Ambitious, hopeful, goal-oriented, especially with tall capitals.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Descending signature',
      m: 'Extreme discouragement, fatigue, or illness.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Signature larger than who they are writing to',
      m: 'They think they\'re better than the other person.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Signature smaller than who they are writing to',
      m: 'They think the other person is better than them.',
    ),
    Observation(
      c: 'ssz',
      d: false,
      f: 'Signature equal sizes',
      m: 'Views themselves as an equal.',
    ),
    Observation(
      c: 'ssz',
      d: true,
      f: 'Signature does not match text',
      m: 'Writer is not what they seem.',
    ),
    //////////////////////// SIGNATURE STYLE ////////////////////////
    Observation(
      c: 'sst',
      d: false,
      f: 'Given name slants in a different direction',
      m: 'Conflict between ego and social life.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature embellished',
      m: 'Feels their accomplishments deserve recognition.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature underlined',
      m: 'Proud of poise and confidence he/she protects.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature crossed through',
      m: 'Canceling oneself out.',
    ),
    Observation(
      c: 'sst',
      d: true,
      f: 'Signature with covering stroke',
      m: 'Cover over or protect the ego. Cover up some part of the writer’s life.',
    ),
    Observation(
      c: 'sst',
      d: true,
      f: 'If also covering stroke ends in lower zone',
      m: 'Embarrassed about something in his sex life.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature with period at end',
      m: 'Sign of caution, backing off, inhibition, and mistrust.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature left trending signature',
      m: 'A return to past memories.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'If also left trending in the upper zone only',
      m: 'Cultural or philosophical recollections.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature final stroke that gets larger in a rightward direction',
      m: 'Impressed with self and wants others to know it.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature left placement',
      m: 'Fear of future.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature far left side of page combined with narrow and small writing',
      m: 'May be contemplating suicide.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature right placement',
      m: 'Drives him/herself mercilessly.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature angles',
      m: 'Sharp-minded. Competitive. Aggressive. Determined. Driven. Uptight.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature thread',
      m: 'Evasive. Will try to wiggle out of situations.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature looks like Morse code',
      m: 'Very secretive and cryptic. May have used Morse code in the military.',
    ),
    Observation(
      c: 'sst',
      d: false,
      f: 'Signature angles and threads',
      m: 'Hard-driven and sneaky. Makes a brilliant politician.',
    ),
    Observation(
      c: 'sst',
      d: true,
      f: 'Signature far right and ends touching the edge of paper',
      m: 'Will stop at nothing for love.',
    ),
    //////////////////////// SIGNATURE CAPITALS ////////////////////////
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals well formed',
      m: 'Sense of pride and dignity.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals poorly formed',
      m: 'Self-concept is poorly developed and needs help improving self-image.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals copybook in signature',
      m: 'Little interest in breaking away from what was taught in school and going out on a limb.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals plain and simple',
      m: 'Manner is direct and up front.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals ornate',
      m: 'Overly impressed with self. Attracted by status and wealth. Some degree of narcissism.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals very small',
      m: 'Modesty and constraint. May be submissive and pliable or just plain spineless.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals large',
      m: 'Self-confidence, pride, ambition.',
    ),
    Observation(
      c: 'scp',
      d: false,
      f: 'Capitals extremely large',
      m: 'Makes him/herself the center of attention. Exaggerates own accomplishments.',
    ),
    //////////////////////// PERSONAL PRONOUN I ////////////////////////
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI angle in upper loop',
      m: 'Anger towards mother.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI loops that are insignificant/small',
      m: 'That parent is insignificant.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI printed (single stroke or Roman I with a crossbar at the top and bottom)',
      m: 'A sign of independence. Making him/herself number one.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI copybook',
      m: 'Conventional attitudes. Normal family life in a two parent home. No long term damage to her ego.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI reversed/underhanded (when not taught or left handed)',
      m: 'Rebellion. Sees self differently than how others see them. Pretends to follow the rules.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI with upper loop only',
      m: 'Strongly influenced by mother or another strong female figure. Father may have been missing physically or emotionally or both.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI with lower loop only',
      m: 'Stronger male influence. Mother may have been missing physically or emotionally or both.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI oversized',
      m: 'Delusions of grandeur. Thinks they are smarter and better.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI very small',
      m: 'Modest and unassuming. Hasn\'t developed a strong self-image.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI lower case',
      m: 'Poor self-concept. Immature and insecure.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI large and wide',
      m: 'Takes up a lot of space.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'Upper loop is wide',
      m: 'Open view of women in their life.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'Lower loop is wide',
      m: 'Open view of men in their life.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI lower loop turns left',
      m: 'Rejection from father.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI angular',
      m: 'Inflexibility and aggression towards mother or father depending on the loop.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI retraced',
      m: 'Blames mother or father depending on the loop that’s retraced.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI distorted',
      m: 'Distorted view of self.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI bold and heavy',
      m: 'Intense and aggressive.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI very round',
      m: 'Needs a lot of mothering. May have been pampered and overindulged. Has a hard time standing up for him/herself.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI with a figure 8',
      m: 'Unresolved conflicts with father/males.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI looks like the number 2',
      m: 'Sees him/herself as a second class citizen. Puts everyone else first.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI top and bottom loops are separated',
      m: 'May have separated parents.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI is isolated',
      m: 'Feels alone or needs to be alone.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI leans left',
      m: 'Guilt (usually with sex or religion).',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI lays on the baseline',
      m: 'Disappointed in father but accepts him for who he is.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI looks like an X',
      m: 'Self-destructive.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI varying in different shapes and forms',
      m: 'Identity crisis.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI split',
      m: 'Disconnected or "split" personality.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI peculiar / often with counterstrokes',
      m: 'Bizarre and compulsive behavior.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI large gap between loops',
      m: 'Parents didn\'t have a good relationship.',
    ),
    Observation(
      c: 'ppi',
      d: false,
      f: 'PPI incomplete loops',
      m: 'The parent whose loop is incomplete didn\'t play as much of a part as the other parent.',
    ),
    //////////////////////// BEGINNING & ENDING STROKES ////////////////////////
    Observation(
      c: 'bes',
      d: false,
      f: 'Removing the initial beginning stroke',
      m: 'Independence.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Retaining the initial stroke',
      m: 'Unable or unwilling to remove the training wheels. Must be prepared before going out on their own.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Beginning strokes like angular check marks ("tick marks")',
      m: 'Often throws temper tantrums. Rage. Antagonism. Irritability. Frustration.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Long, straight initial stroke below the baseline ("springboard stroke")',
      m: 'Difficulty in the past.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'If also strong energy going into the middle zone',
      m: 'Strong desire to take past difficulties and turn them into achievements.',
    ),
    Observation(
      c: 'bes',
      d: true,
      f: 'Extremely long, hooked strokes coming from below the baseline (“harpoons”)',
      m: 'Hidden aggression that is compulsively acted out. Ted Bundy did this.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Short, straight stroke leading into an angle ("resentment stroke")',
      m: 'Sign of tension and aggression. Always on the defensive. Sees him/herself as a victim.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Long, curved initial stroke',
      m: 'Was likely babied at home.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Beginning strokes that cup',
      m: 'Hey, baby! Fill me with nice things like chocolate or diamonds!',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Curved initial strokes that start high in the upper zone (looks like a smile)',
      m: 'Cheery. Likes to smile a lot. Good sense of humor. Optimistic.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'End stroke cut off abruptly',
      m: 'Often rude in social transactions. Hates wasting time. Impatient.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Fragmented strokes (bent, broken, soldered)',
      m: 'Trying to make self look better.',
    ),
    Observation(
      c: 'bes',
      d: true,
      f: 'Excessively complicated strokes',
      m: 'Reduced clarity and covering up information.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'The long, garland final stroke',
      m: 'Kindly empathetic. Willing to share resources and time. Readiness to give and receive.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Long, straight final stroke',
      m: 'Trying to keep others away. Doesn\'t trust people.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'If also only at end of line trying to touch the end of page',
      m: 'Safety, like touching the wall.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Final stroke that returns to the left over the word',
      m: 'Self-protective.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Final stroke that returns to the left under the word',
      m: 'Trying to draw attention to own achievements.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Ending strokes crossing into lower zone ("lurking lunatic stroke")',
      m: 'Stealthy, sneaky and secretive. Hidden agenda. Matter of fact. Possible pessimism.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Final strokes going into upper zone',
      m: 'Interested in philosophy. Exercises own intellect whenever they can. Ambitious. Optimistic.',
    ),
    Observation(
      c: 'bes',
      d: true,
      f: 'Ending strokes suspended above baseline',
      m: 'Information is dropped and not telling the whole truth.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Heavy down trending final strokes',
      m: 'Surges of emotion.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'If also in middle zone',
      m: 'Temper and aggressiveness.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'If also in lower zone',
      m: 'Depression and self-sabotage.',
    ),
    Observation(
      c: 'bes',
      d: false,
      f: 'Last letter grows bigger than the rest of the word',
      m: 'Immature. Childish. Demanding what they want. Blurts out whatever is on their mind.',
    ),
    //////////////////////// PUNCTUATION ////////////////////////
    Observation(
      c: 'pnc',
      d: false,
      f: 'When turning punctuation into ornamentation',
      m: 'Doesn\'t understand where things belong. Melodramatic. Doesn\'t know when to quit.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Overdone punctuation',
      m: 'Obligated to draw attention to self in some way. Can\'t sit still. Always on the move. Looking for action.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Exclamation points where they don\'t belong',
      m: 'What I\'m saying is really important.',
    ),
    Observation(
      c: 'pnc',
      d: true,
      f: 'Several misplaced punctuations and forms',
      m: 'Possible con artist.',
    ),
    Observation(
      c: 'pnc',
      d: true,
      f: 'Unnecessary punctuation, underlines, and quotations',
      m: 'Enough is enough. Obsession.',
    ),
    Observation(
      c: 'pnc',
      d: true,
      f: 'Dot grinding',
      m: 'Compulsion. Often found by abusers and victims.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Round careful periods',
      m: 'Careful. Meticulous mind. Methodical thinker. Often conventional.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Periods that look like commas',
      m: 'Impatience. Irritable. Quick temper.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Excessive punctuation with heavy pressure combined with taking up a lot of space',
      m: 'Could be a sign of mental illness.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Inappropriate or lavish underlining',
      m: 'Wants to feel important.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'If also heavy pressure',
      m: 'Anger or frustration.',
    ),
    Observation(
      c: 'pnc',
      d: false,
      f: 'Heavy crossing out',
      m: 'Needs to be right. Doesn\'t want you to see they made a mistake. Can\'t bear criticism or to be wrong. Demands their own way.',
    ),
    //////////////////////// HOOKS ////////////////////////
    Observation(
      c: 'huk',
      d: false,
      f: 'Hooks at beginning of letter or word',
      m: 'Holding on to the past.',
    ),
    Observation(
      c: 'huk',
      d: false,
      f: 'Small initial hooks',
      m: 'Impatience and irritability.',
    ),
    Observation(
      c: 'huk',
      d: false,
      f: 'Large initial hooks',
      m: 'Holding on to past experiences.',
    ),
    Observation(
      c: 'huk',
      d: false,
      f: 'Large final hooks',
      m: 'Greed. Possibly possessive.',
    ),
    Observation(
      c: 'huk',
      d: true,
      f: 'Devil\'s Fork',
      m: 'Believes they are possessed by the devil.',
    ),
    //////////////////////// DIACRITICS - I-DOTS ////////////////////////
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS careful, precise, placed close to the stem',
      m: 'Loyal.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS flying high',
      m: 'Impatient. Adventurous.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS missing',
      m: 'Poor memory, procrastination or rebellion.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS circular',
      m: 'Immaturity. Gullible. Wants to stand out but needs other people’s acceptance.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS heavy slash',
      m: 'Brutal. Rude. Hot tempered. Sharp objects as weapons of choice.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS dash or comma',
      m: 'Ironic sense of humor.',
    ),
    Observation(
      c: 'idt',
      d: false,
      f: 'i-DOTS little hook',
      m: 'Irritability.',
    ),
    //////////////////////// DIACRITICS - T-CROSSES ////////////////////////
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-STEM copybook',
      m: 'More comfortable following than leading.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-STEM moderately tall',
      m: 'Feels good about self.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-STEM very tall',
      m: 'Pride turned into vanity. May have a demanding father; tries to impress him.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-STEM short',
      m: 'Independent. Self-approval is more important than what other people think.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-STEM looped',
      m: 'Sensitive to criticism about own work.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR HEIGHT copybook',
      m: 'Practical. Knows they can accomplish their goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR HEIGHT low',
      m: 'May be depression. Makes sure they set low goals so they can reach them.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR HEIGHT high',
      m: 'High goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR HEIGHT above the stem',
      m: 'Visionary.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR LENGTH copybook',
      m: 'Decent willpower towards attaining goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR LENGTH short',
      m: 'Sticks to what they know. Laziness.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR LENGTH long thrust',
      m: 'Knows what they want and pushes forward to get it.',
    ),
    Observation(
      c: 'tcr',
      d: true,
      f: 'T-BAR LENGTH extremely long',
      m: 'Extremely controlling and forceful. Bully.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR PRESSURE moderate',
      m: 'Good stamina to withhold pressure in the pursuit of their goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR PRESSURE light',
      m: 'Minimal stamina to withhold pressure in the pursuit of their goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR PRESSURE heavy',
      m: 'A lot of stamina to withhold pressure in the pursuit of their goals.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM slants down',
      m: 'Domineering. Control freak.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM points upward',
      m: 'Optimism, ambition, and hopefulness.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM concave (drooping downward)',
      m: 'Easily persuaded and allows others to take advantage of them.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM convex',
      m: 'Self-protection. Rejects help.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM connected to the next letter',
      m: 'Quick intellect. Resourceful.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM lassolike',
      m: 'Suffers guilty feelings and returns to the past. Often they were close to someone who died and they blame themselves.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM uncrossed',
      m: 'Procrastination.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM crossed from single stroke',
      m: 'Initiative. Jumps right in.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM crossed twice',
      m: 'Anxious and insecure.',
    ),
    Observation(
      c: 'tcr',
      d: false,
      f: 'T-BAR FORM reversed',
      m: 'Second-guessing themselves.',
    ),
    Observation(
      c: 'tcr',
      d: true,
      f: 'Bizarre t-crosses',
      m: 'The writer\'s willingness to go to whatever ends are necessary to achieve own goals. May include torture.',
    ),
    //////////////////////// OTHER LETTERS & SYMBOLS ////////////////////////
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - bigger upper loops',
      m: 'Plans better than he/she executes.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - bigger lower loops',
      m: 'Interested in doing rather than planning.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F\'s - fat',
      m: 'Thoughts about food or thinks his/her belly is fat.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - in one single stroke',
      m: 'Efficiency. Altruism.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - large knot in middle',
      m: 'Family pride.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - the old school tie',
      m: 'Stubbornly persists in their beliefs. Gets caught up in the small details.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'If also in form of a double looped oval in the middle zone',
      m: 'Has something to hide.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'F’s - missing lower loop',
      m: 'May be missing father.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'R\'s - looks like a backwards 3',
      m: 'Pays attention to the way he/she is dressed.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'R\'s - flat top',
      m: 'Works well with hands and enjoys tools.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'R\'s - needle point',
      m: 'Lives by their intellect. Curious about learning new facts.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'R\'s - printed among cursive',
      m: 'Creativity.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Maniac d or diabolical d (flops over to far right side)',
      m: 'Prone to extreme emotional outbursts. Wants other people to see them as a big shot, but actually has a fragile ego and can become easily defensive. Falls off the deep end.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Lowercase d unrecognizable',
      m: 'Warped personal values.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Pugilistic P\'s (the initial stroke of a lower case p strikes far above the middle zone)',
      m: 'Extremely argumentative and can\'t be wrong.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Greek E (capital that\'s supposed to be lower case; looks like a figure 8)',
      m: 'Interest in literature. Quick mind.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Spoon-e (starts in the middle and circles around it almost like an @ symbol)',
      m: 'Calculating and cautious. Strong premeditated self-control. Hides own motives behind a pleasant face.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Elliptical g (squeezed oval diagonal of baseline, then curves right to the lower zone like a backwards C)',
      m: 'Sly and devious. Sabotage. Hiding true intentions. Deliberately misleading. They seem so nice. Self-centered motivations. Often brags.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS that are closed',
      m: 'Close-mouthed. Careful in what they reveal.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS tightly sealed and finished at bottom',
      m: 'So secretive he/she won\'t even tell him/herself the truth.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS that are wide open at top',
      m: 'Loose lips. Gossip. Has difficulty keeping a secret.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS when forming a circle before forming the letter',
      m: 'Talking around a subject. Often family problems such as alcohol abuse.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS with intrusions ("forked tongue strokes")',
      m: 'Distortion of information. Signs of abuse. Conniving, scheming liar.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS sharp point inside the ovals (“stingers”)',
      m: 'Communicates with sharp, piercing words. Sneaky nasty ways of communicating. Perhaps a pathological liar.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS extra loops on the left',
      m: 'Has secrets from self.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS extra loops on the right',
      m: 'Has secrets from others.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS tiny loops that hang down inside ovals',
      m: 'Unreleased emotion.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'OVALS deliberately filled in (called Black spots)',
      m: 'Communicates in dark, muddied ways. Excessive and uncontrollable needs. Guilt. Hiding something from their past. Found with several attorneys.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'OVALS reversed',
      m: 'Underhanded and devious.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'OVALS in form of a double loop',
      m: 'Has something to hide.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'OVALS that are open at the bottom ("embezzlers oval")',
      m: 'Many commit heinous crimes.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Lower case “a” that has a covering stroke',
      m: 'Has something they\'d rather not discuss. Many cases there is childhood sexual abuse. Could also be creative artistic form.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'E’s - open wide',
      m: 'Good listener.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'E’s - squeezed shut',
      m: 'Poor listener.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'X-formations (crossing out)',
      m: 'Canceling self out. Feels defeated. Personal despair.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'X-formations of other people\'s names',
      m: 'The writer doesn\'t like the person. Wants them cancelled out.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Slashes where they shouldn\'t be (often looks like an X)',
      m: 'Preoccupied with death.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Drawings, unusual shapes, and symbols in signature and other areas',
      m: 'Indicates feelings and thoughts about image.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Thick globs of ink at the bottom of a letter (club-shaped)',
      m: 'Likely to strike first and ask questions later.',
    ),
    Observation(
      c: 'ols',
      d: false,
      f: 'Letters that look like numbers',
      m: 'Sign of someone who is mathematically inclined. May be involved with numbers like an accountant or meteorologist.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Letters are omitted',
      m: 'Deliberately leaving out information.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Letters made to look like other letters',
      m: 'Deliberate attempt to distort information.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Ambiguous letter and word formations (often combing letters)',
      m: 'Knows how to disguise the truth. Tricky. Leaves interpretation unclear so they have an out when they need it.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Ambiguous or trick numbers',
      m: 'Possible embezzler.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Phallic symbols',
      m: 'Obsession with sex. Vivid erotic fantasies. Can be seen in various places including unconnected loops of lowecase F\'s and in B\'s. Gets their kicks sexually only in a bizarre and abnormal manner.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Ink blotches anywhere',
      m: 'Murky, unclear thinking. Obsessive. Morbid fantasies.',
    ),
    Observation(
      c: 'ols',
      d: true,
      f: 'Unpredictable script',
      m: 'Unpredictable behavior.',
    ),
  ];

  //All items in list
  int getCount() {
    return _observationBank.length;
  }

  bool getDanger() {
    return _observationBank[_observationNumber].danger;
  }

  bool getSpecificDanger(index) {
    return _observationBank[index].danger;
  }

  String getFinding() {
    return _observationBank[_observationNumber].finding;
  }

  String getSpecificFinding(index) {
    return _observationBank[index].finding;
  }

  String getMeaning() {
    return _observationBank[_observationNumber].meaning;
  }

  String getSpecificMeaning(index) {
    return _observationBank[index].meaning;
  }

  String getSpecificCategory(index) {
    return _observationBank[index].category;
  }

  // By Category
  List<Observation> getCategory(String cat) {
    var results;
    results = _observationBank.where((i) => i.category == cat).toList();
    return results;
  }

  List<Observation> getQueryResults(String queryArg) {
    return _observationBank.where((i) => i.finding.contains(queryArg)).toList();
  }

  String getQueryFinding(String queryArg, int index) {
    return getQueryResults(queryArg)[index].finding;
  }

  String getQueryMeaning(String queryArg, int index) {
    return getQueryResults(queryArg)[index].meaning;
  }

  // By Category
  int getQueryCount(String queryArg) {
    return getQueryResults(queryArg).length;
  }

  int getCategoryCount(String cat) {
    return getCategory(cat).length;
  }

  bool getCategoryDanger(String cat) {
    return getCategory(cat)[_observationNumber].danger;
  }

  bool getCategorySpecificDanger(String cat, int index) {
    return getCategory(cat)[index].danger;
  }

  String getCategoryFinding(String cat) {
    return getCategory(cat)[_observationNumber].finding;
  }

  String getCategorySpecificFinding(String cat, int index) {
    return getCategory(cat)[index].finding;
  }

  String getCategoryMeaning(String cat) {
    return getCategory(cat)[_observationNumber].meaning;
  }

  String getCategorySpecificMeaning(String cat, int index) {
    return getCategory(cat)[index].meaning;
  }

  // Get Master Id from Category Finding
  int getObsId(String find) {
    int obsIndex = _observationBank.indexWhere((f) => f.finding == find);
    return obsIndex;
  }

  List<Observation> getDangerSigns() {
    return _observationBank.where((i) => i.danger == true).toList();
  }

  String getDangerSignFinding(int index) {
    return getDangerSigns()[index].finding;
  }

  String getDangerSignMeaning(int index) {
    return getDangerSigns()[index].meaning;
  }
}
