  import 'package:flutter/material.dart';

  class MyData_MoviesAction{
    String name;
    String description;
    String imagUrl;
    String videoUrl;

    MyData_MoviesAction.items({
      this.name,
      this.description,
      this.imagUrl,
      this.videoUrl,
  });

  }
  List<MyData_MoviesAction> dataMoviesAction =[


    MyData_MoviesAction.items(
        name: "The Lost Viking 2018",
        description: " حول شاب محارب يدعى فيتهار يصل إلى بريطانيا مع أحلام الغزو والمغامرة ، ولكن عندما يتعرض أفراد عائلته وعشيرته لكمين ويقتلون ، يجب أن يعيش وحده في هذه الأرض الجديدة الغريبة والخطيرة بينما يبحث عن مستوطنة عمه.",
        imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BMjJhZTIzMGYtNTBiMC00ZDVkLTkzOWEtMGY5ZmYyYzMyMjM2XkEyXkFqcGdeQXVyNTA5Nzg5OTQ@._V1_SY1000_CR007051000_AL_-435x623.jpg",
        videoUrl: "https://youtu.be/pGhg6rCKSK4"
    ),


    MyData_MoviesAction.items(
        name: "Polar 2019",
        description: "يخرج قاتل محترف من تقاعده ليتعامل مع مجموعة من الشباب المنضمين لعصابة قتل بالأجر.",
        imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BMjAzNDkzODU3Ml5BMl5BanBnXkFtZTgwNDI4OTExNzM@._V1_-435x623.jpg",
        videoUrl: "https://youtu.be/7uWjMCO3tI4"
    ),


    MyData_MoviesAction.items(
        name: " Aquaman 2018",
        description: "يُدرك (آرثر كاري) أنه وريث مملكة (أتلانتيس) تحت الماء، وعليه أن يرنو إلى قيادة شعبه ليصبح بطلهم الأول، ومن ثَم بطل العالم",
        imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_SY1000_CR006741000_AL_-435x623.jpg",
        videoUrl: "https://youtu.be/WDkg3h8PCVU"
    ),

    MyData_MoviesAction.items(
      name: "Overlord 2018",
      description: "تدور الأحداث حول جنديين أمريكيين خلف خطوط العدو، في يوم عملية الإنزال في نورماندي خلال الحرب العالمية الثانية، حيث يتم إسقاط جنديين أميريكيين من جنود المظلات خلف خطوط العدو لتنفيذ مهمة حاسمة لنجاح الغزو، لكن مع اقترابهما من هدفهما ، بدآ يدركا أن هناك المزيد في هذه القرية التي تحتلها القوات النازية وأن هذه ليست عملية عسكرية بسيطة، وخاصة عندما يجدآ أنفسهما يقاتلا ضد قوى خارقة للطبيعة، كجزء من تجربة نازية.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/02/MV5BYTUzYmJlNDgtMzM2ZS00N2ZkLWJjY2ItNzM0ZmVjMWU5OTA3XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_SY1000_CR006661000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/USPd0vX2sdc"
    ),

    MyData_MoviesAction.items(
        name: "Bumblebee 2018",
        description: "تدور أحداث الفيلم عام 1987، أثناء رحلة هروب بامبلبي من المطاردة حيث يجد مأوى في مخبأ خردة ببلدة شاطئية صغيرة بكاليفورنيا، في الوقت نفسه تحاول تشارلي وهي في مطلع الـ18 سنة أن تجد مكانًا لها في العالم، فتكتشف بامبلي محطم وبه آثار معارك كثيرة، وعندما تتمكن من تجديد أجزاءه وإعادته للحياة تدرك سريعًا إنه ليس مجرد سيارة فولكس فاغن صفراء تقليدية.",
        imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BOTM3NzE5OTE1Nl5BMl5BanBnXkFtZTgwNzQwNjM3NjM@._V1_SY1000_CR006741000_AL_-435x623.jpg",
        videoUrl: "https://youtu.be/fAIX12F6958"
    ),

    MyData_MoviesAction.items(
      name: "Close 2019",
      description: " قريب ” حول حارس شخصي وخبير مكافحة الإرهاب (سام) يتوليان وظيفة حماية الوريثة الشابة الغنية (زوي). لكن تفلت بعض الأمور من احتياطاتهم فيقع اختطاف عنيف يجبرهم على الهروب",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BYzI5OTUzZjktMDE4Zi00YjE3LWIzNWQtNDFjZWQyMDVkY2I1XkEyXkFqcGdeQXVyMTg1MzYyMzQ@._V1_SY1000_SX664_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/BUac2f60zOQ"
    ),


    MyData_MoviesAction.items(
      name: "Reign Of The Supermen 2019",
      description: "“تدور أحداث الفيلم حول البطل الخارق المعروف باسم (سوبر مان)، حيث بعد وفاته، يقدم العديد من الناس أنفسهم كخلفاء محتملين”",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BYTY0OGIxNDMtNzIwZi00NTFmLThhYzUtYzUzYzc5ZjYwMThjXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_-435x623.jpg",
      videoUrl: "https://youtu.be/jMdcSTVPOFw"
    ),


    MyData_MoviesAction.items(
      name: "Godzilla City on the Edge of Battle 2018",
      description: "على الأرض، يتواصل “هارو” ورفاقه مع قبيلة “هوتووا” الأصلية. ولقهر “غودزيلا”، ينطلقون إلى منشأة “ميكاغودزيلا” القديمة",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BYmIyNGJhMmUtZDE5Zi00ZGZlLTlhMDktY2ZjNDcyYjJlZDYzXkEyXkFqcGdeQXVyNTU1Nzc3NjA@._V1_-435x623.jpg",
      videoUrl: "https://youtu.be/JkgYIxuQpo4"
    ),


    MyData_MoviesAction.items(
      name: "Corbin Nash 2018",
      description: "داخل العالم السفلي لمدينة لوس أنجلوس، وبينما يحاول أحد المحققين بشكل محموم عن الحقيقة الكامنة وراء الجريمة التي أودت بحياة والديه، ويؤدي به هذا البحث إلى التعرف على الثنائي كويني وفينس واللذان يجراه إلى عالم سفلي مليء باﻷشياء المرعبة.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/Corbin-Nash-poster-683x1024-435x623.jpg",
      videoUrl: "https://youtu.be/FLsxtwsuuMw"
    ),


    MyData_MoviesAction.items(
      name: "Scorched Earth 2018",
      description: "(أتيكوس جيدج) صائدة مكافآت محترفة، تقوم بملاحقة المجرمين بعد دمار مروّع أحلّ بكوكب الأرض.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BNDUyOTg1ODgyMF5BMl5BanBnXkFtZTgwNDY1Mjg4MTI@._V1_SY1000_CR006741000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/fsmldfshBhU"
    ),


    MyData_MoviesAction.items(
      name: "Mortal Engines 2018",
      description: "عقب سنوات من الحروب، تكافح المدن الناجية لأن تبقى وتظل على الأرض التي أمست مقفرة قاحلة، وذلك من خلال استخدامها – المدن الناجية – عجلات عملاقة للتحرك ومهاجمة مدن أصغر سعيًا لتجديد مواردها.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BNzY1MDA2OTQ0N15BMl5BanBnXkFtZTgwMTkzNjU2NTM@._V1_SY1000_CR006311000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/IRsFc2gguEg"
    ),


    MyData_MoviesAction.items(
      name: "The Girl in the Spider’s Web 2018",
      description: "القناصة الإلكترونية الشابة (ليزبيث سالاندر) والصحفي (ميكائيل بلومكفيست) يجدان أنفسهما مُحاصريْن في شبكة جواسيس، مجرمين إنترنت ومسئولين حكوميين فاسدين.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/p13937974_v_v8_ae-435x623.jpg",
      videoUrl: "https://youtu.be/XKMSP9OKspQ"
    ),


    MyData_MoviesAction.items(
      name: "Sharknado 2 The Second One",
      description: "بعد تجربتهما مع اﻹعصار الأول الحامل لأسماك القرش ، يعود كل من (فين شبرد) ، و(أبريل) ، و(ويكسلر) لمواجهة إعصار جديد من نفس النوع ، لكنه هذه المرة يستهدف مدينة (نيويورك) ، مما يهدد أبرز المعالم الحيوية للمدينة ، ولكن ترى هل سينجح (فين) ، و(أبريل) في إعادة الكرة هنا مرة أخرى ، وإنقاذ ما يمكن إنقاذه في هذه المدينة من آثار هذا اﻹعصار ؟",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/02/MV5BMjA0MTIxMDEwNF5BMl5BanBnXkFtZTgwMDk3ODIxMjE@._V1_SY1000_CR007131000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/fWY4-u9Ewdc"
    ),


    MyData_MoviesAction.items(
      name: "The Bouncer 2018",
      description: "يحاول حارس في الخمسينات من عمره ويعمل في إحدى الملاهي الليلية أن يهتم بتربية ابنته البالغة من العمر 8 سنوات",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/P_HO00005975.jpg",
      videoUrl: "https://youtu.be/iAldV5gU0Vo"
    ),


    MyData_MoviesAction.items(
      name: "Blood Brother 2018",
      description: "يحدث شقيق الدم في شوارع المدينة التي تشهد انحطاطًا ، حيث يبدأ أحد المدانين الذين تم إطلاق سراحهم مؤخرًا في الانتقام من أصدقاء طفولته ، الذين يعتقد أنه سمح له بالهبوط بسبب جريمة ارتكبوها جماعياً. وبينما تبدأ الجثث بالتراكم ، فإن أحد الأصدقاء ، وهو الآن شرطي ، لن يتوقف عند أي شيء لوضع حد للهيجان القاتلة وإلى تصحيح الأخطاء الكثيرة في ماضيهم العنيف المأساوي.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/blood-brother-2017.140361-435x623.jpg",
      videoUrl: "https://youtu.be/ZLgodNut1mQ"
    ),


    MyData_MoviesAction.items(
      name: "The Predator 2018",
      description: "يقع مجموعة من الرجال وجهًا لوجه مع وحش كاسر في غابة موحشة بمفردهم، وواحدًا تلو اﻵخر، يضيعون في الغابة ويصير كل منهم جثة مسلوخة معلقة على الشجر، ولذلك حينما يظهر الناجي الوحيد من مواجهة سابقة مع نفس الوحش، يكتشفون أنهم في مشكلة أكبر مما تخيلوا",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/11/MV5BMjM5MDk2NDIxMF5BMl5BanBnXkFtZTgwNjU5NDk3NTM@._V1_SY1000_CR006751000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/WaG1KZqrLvM"
    ),


    MyData_MoviesAction.items(
      name: "Venom 2018",
      description: "إيدي بروك/ فينوم (توم هاردي) واحد من أكثر شخصيات عالم (مارفل) غموضًا وتعقيدًا وشرًا، كما أنه العدو اللدود للرجل العنكبوت.. فينوم كان شخصًا عاديًا تمامًا، إلى أن تعرض لاستحواذ كائن فضائي منحه قدرات خارقة وغير مسبوقة؛ ومنذ هذه اللحظة تغير كل شيئ متعلق بحياته، فأمسى هو والكائن الفضائي كيانًا واحدًا لا يتجزأ.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/11/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_-435x623.jpg",
      videoUrl: "https://youtu.be/zX81KEqzy_M"
    ),


    MyData_MoviesAction.items(
      name: "Bernie The Dolphin 2018",
      description: "في سانت أوغسطين بولاية فلوريدا، يتصادق شقيق وشقيقة مع دولفين تأذى بشدة من الشمس وانفصل عن أسرته، ويكشفان عن مخطط شرير قد يؤدي لتدمير الشاطيء، وعلى الشقيقان الاضطلاع بخطة ذكية ﻹيقاف أولئك اﻷشرار وحماية الحياة البحرية.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BNDYzNmYxNjEtN2QyNC00NzdlLTk2ZWItYTMxZjFmY2U0MzNlXkEyXkFqcGdeQXVyOTg4MDYyNw@@._V1_SY1000_CR006771000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/KE3Fjwm2FiE"
    ),


    MyData_MoviesAction.items(
      name: "All the Devil’s Men 2018",
      description: "يجبر مكافح الإرهاب على الذهاب إلى لندن في مطاردة للناشط في وكالة الاستخبارات المركزية، والذي أدى به إلى معركة قاتلة مع رفيق عسكري سابق وجيشه الخاص.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BNjZkYTVjZjAtYzhiMy00NmFiLTg1ODEtZmE5NTE3YmRlZmIwXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SY999_CR00674999_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/1Lk5UZUeOxU"
    ),


    MyData_MoviesAction.items(
      name: "Johnny English Strikes Again 2018",
      description: "الجزء الجديد من سلسلة (جوني إنجليش)، بحيث يكون تتمة الجزء الماضي (Johnny English Reborn) من إنتاج عام 2011",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BMjI4MjQ3MjI5MV5BMl5BanBnXkFtZTgwNjczMDE4NTM@._V1_SY1000_CR006741000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/9cBN9_9oK4A"
    ),


    MyData_MoviesAction.items(
      name: "Neo Yokio Pink Christmas 2018",
      description: "يسعى “كاز كان” خلف الحب والموضة، كما يطارد القوى الخارقة للطبيعة إلى جانب خادمه الآلي الوفي وسط الطبقة الراقية والشريرة في “نيو يوكيو”.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BMTU1NDg0NTAwMl5BMl5BanBnXkFtZTgwODc1NTM4NjM@._V1_.jpg",
      videoUrl: "https://youtu.be/LLVazo8J9uE"
    ),


    MyData_MoviesAction.items(
      name: " Dead In A Week Or Your Money Back 2018",
      description: "بعد محاولته التاسعة غير الناجحة في حياته، يفكر في الانتحار، لكنه يقوم باللجوء إلى استئجار قاتل تبدو عليه الشيخوخة، بعد أن أنصت لجملة تقول “إذا كنت جادًا في إنهاء ذلك، فإنك تحتاج إلى مساعدة من محترف”",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BNDkxMjQzMzY3OF5BMl5BanBnXkFtZTgwOTk5OTE3NTM@._V1_SY1000_SX675_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/iBdH5uNf14Q"
    ),


    MyData_MoviesAction.items(
      name: "The Take Down 2017",
      description: "رجلٌ يُدعى (جاك)، وهو رجلًا ناجحًا من (لندن)، يمنح حياته مرةً آخرى لإنقاذ ابنته، فـيصبح في سباقٍ مع الزمن للقتل أو يُقتل.”",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/MV5BZTBlNDFkZmItYmUwMS00MzhhLTg4MDktNTk0NTIzN2IzNTA5XkEyXkFqcGdeQXVyNjgxMzY0MzA@._V1_SY1000_CR006871000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/sfL30GwObyU"
    ),


    MyData_MoviesAction.items(
      name: "Game of Thrones The Movie 2018",
      description: "يسرد الفيلم بأسلوب متفرد ملخص كل مواسم المسلسل والأحداث المهمة والشخصيات الرئيسية في إطار ملحمي غير اعتيادي، إن كنت من عشّاق المسلسل، فلا يمكنك تفويت فيلم كهذا.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2018/12/22746674f0774c5c3eaaf53fc75ebfe4-435x623.jpg",
      videoUrl: "https://youtu.be/v5gsVRxzzI4"
    ),


    MyData_MoviesAction.items(
      name: "Frenzy 2018",
      description: "تدير مجموعة من الأصدقاء مدونة سفر شعبية تساعد في تمويل مغامراتهم. تضم بيج (جينا فيتوري) ، زعيم المجموعة ، شقيقتها الصغرى ، ليندسي (أوبري رينولدز) ، في رحلة غوص الغوص التالية إلى خليج صغير معزول. ولكن عندما تحطمت طائرتهما ، يجب على الشقيقتين استخدام قوتهما وحيوتهما وشجاعتهما الهائلة من أجل البقاء على قيد الحياة في مجموعة من أسماك القرش البيضاء العظيمة.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BNjFiODQzNjItOGY3NS00YjE2LWI1NjgtZmZjNDA2Yzk4NzUwXkEyXkFqcGdeQXVyMTk5MDQ5NDg@._V1_SY1000_CR006841000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/8KWwYcO0rGA"
    ),


    MyData_MoviesAction.items(
      name: " Assassination Nation 2018",
      description: "قصة حقيقية حول كيفية تحول كل السكان الأمريكيين لبلدة سالم، بعد أن فقدوا عقولهم مطلقًا.",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BMjA5NTIwNDc3Ml5BMl5BanBnXkFtZTgwOTExNDM5NTM@._V1_SY1000_CR006741000_AL_-435x623.jpg",
      videoUrl: "https://youtu.be/d9qyOGEuLY4"
    ),


    MyData_MoviesAction.items(
      name: "Godzilla The Planet Eater 2018",
      description: "(فيلم غودزيلا كوكب الطعام ) فى اطار من المغامرات والانيميشن حول إن الإنسانية وحلفائها الغريبة و غودزيلا يدخلون في نهاية الأمر عندما يصل الكيان المدمر القوي المعروف باسم غادور إلى الأرض",
      imagUrl: "https://www.faselhd.co/wp-content/uploads/2019/01/MV5BZWE2MWQxZmUtZWY5ZS00MjUzLWEwNjMtZjAwYjQxM2IzYjc0XkEyXkFqcGdeQXVyNTU1Nzc3NjA@._V1_-435x623.jpg",
      videoUrl: "https://youtu.be/ZkIe8xlfolU"
    ),

  ];
