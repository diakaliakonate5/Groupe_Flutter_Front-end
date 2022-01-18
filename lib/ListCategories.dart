// ignore_for_file: file_names

import 'package:siraba_chariaw/ListPanneaux.dart';

///List of panels!
List categoryLists = ["assets/images/dangers/danger.png", "assets/images/obligations/obligation.png",
  "assets/images/interdictions/interdiction.png", "assets/images/indications/indication.png"];

///List panels name!
List categoryName = ["Dangers", "Obligations", "Interdictions", "Indications"];

///List panels description
List categoryDescription = ["Ils montrent la présence du danger", "Ils montrent l'obligation", "Ils indiquent les interdictions.", "Ils peuvent indiquer des services."];

///List panels audios
List categoryAudio = ["voices/danger/Danger.mp3", "voices/obligation/obligation.mp3",
  "voices/interdiction/interdiction.mp3", "voices/indication/indication.mp3"];

///List of panels by category
List categoryPanels = [dangerPanels, obligationPanels, interdictionPanels, indicationPanels];

///List of panels descriptions by category
List categoryPanelsDesc = [dangerSubPanelsDescriptions, obligationSubPanelsDescription, interdictionSubPanelsDescription, indicationSubPanelsDescription];

List categoryPanelsAudios = [dangerSubPanelsAudio, obligationsSubPanelsAudio, interdictionSubPanelsAudio, indicationSubPanelsAudio];