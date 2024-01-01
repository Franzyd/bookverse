DROP
  TABLE IF EXISTS review;
DROP
  TABLE IF EXISTS users;

CREATE TABLE review (
  id integer not null,
  user_login varchar(255),
  book varchar(255),
  review varchar(10000),
  comments_amount integer,
  likes_amount integer,
  share_amount integer,
  date timestamp(6),
  primary key (id)
);

CREATE TABLE users (
  login varchar(255) not null,
  name varchar(255),
  last_name varchar(255),
  email varchar(255),
  password varchar(255),
  primary key (login)
);

INSERT INTO users (
  email, last_name, login, name, password
)
VALUES
  (
    'john.doe@example.com', 'Doe', 'johnson',
    'Johnson', 'securepassword1'
  ),
  (
    'maitiri.smith@example.com', 'Maitiri',
    'maitiri_books_2', 'Books', 'strongpassword2'
  ),
  (
    'zofia.przezdziecka@email.com', 'Zofia',
    'madalenakw', 'Przeździecka', 'Zofia2024!'
  ),
  (
    'katarzyna.wojciechowska@email.com', 'Katarzyna',
    'chomiczek71', 'Wojciechowska', 'Katarzyna123!'
  );

INSERT INTO review (
  id, book, review, user_login, date,
  likes_amount, comments_amount, share_amount
)
VALUES
  (
    1223, 'Trzy królowe',
    '
    <p>Powieść „Trzy królowe” miała być ekscytującym finałem pełnej namiętności i niebezpieczeństw serii „Filthy Rich Vampires”. Pełna namiętności i niebezpieczeństw książka oczywiście jest, okazuje się jednak, że nie jest to ostatni tom, z czego osobiście bardzo się cieszę, bo polubiłam tę serię. Nie sądziłam, że aż tak ją polubię, chociaż są w niej moje ukochane wampiry. Ale stało się, pokochałam ją całym sercem i z niecierpliwością wyczekuję kolejnego tomu.</p>

    <p>Autorka stworzyła fascynującą opowieść o świecie bogatych wampirów, którzy mimo swojego luksusowego stylu życia muszą stawiać czoła własnym problemom, przestrzegać obowiązujących ich norm i szanować obyczajowość. W tych okolicznościach Thea i Julian decydują się ogłosić status swojego związku wampirom i mają zamiar zrobić to podczas balu z okazji przesilenia zimowego. Jednak tej nocy nie zabraknie niespodzianek, a bohaterowie będą musieli stawić czoła nowym wyzwaniom, zarówno w sferze uczuć, jak i zagrożeń z przeszłości.</p>

    <p>Lee udało się doskonale przedstawić świat wampirów i ich tajemnice, tworząc fascynującą lecz czasem przerażającą atmosferę. Opowieść skupia się głównie na Thei i Julianie, których relacja nacechowana jest napięciem i elektryzującymi potyczkami słownymi. Autorka doskonale zbudowała fabułę, utrzymując czytelnika w napięciu poprzez cały czas, do czego bez wątpienia przyczyniły się nieoczekiwane zwroty akcji.</p>

    <p>Zaginięcie matki Thei i ślady prowadzące do Wenecji dodają narracji elementu tajemnicy i niepewności. Wątek porwania Thei intensyfikuje dramat, a Julian musi zmierzyć się z własną przeszłością, by ocalić ukochaną. Konflikty narastają, a świat magiczny staje przed możliwością wojny, co dodaje powieści głębokości i napięcia. Autorka bawi się różnymi elementami romansu, intrygi i akcji, co sprawia z kolei, że ta historia ze strony na stronę staje się coraz bardziej zagmatwana i jeszcze bardziej emocjonująca.</p>

    <p>Czytając tę kontynuację, nie mogłam oderwać się od książki, zafascynowana opisem miłości między głównymi bohaterami. Geneva Lee potrafiła wzbogacić swoją narrację o dojrzałość i emocjonalność, nadając w ten sposób bohaterom świadomość i autentyczność. Oprócz dobrze znanych czytelnikowi, lubianych bohaterów, trzeci tom wprowadza nowe, interesujące postacie, które sprawiają, że fabuła staje się jeszcze bardziej intrygująca.</p>

    <p>Geneva Lee w najnowszej części kreuje atmosferę pełną namiętności, intrygi i zagrożeń, a jej styl pisania wzbogaca wyobraźnię czytelnika. „Trzy Królowe” to dynamiczna opowieść, która dostarcza czytelnikowi całą gamę emocji, które pozostaną w pamięci również po zakończeniu lektury. Powieść spełni oczekiwania wielbicieli romansów paranormalnych, ale również każdego, kto lubi historie pełne nieprzewidywalnych zwrotów akcji. Serdecznie polecam!</p>

    <p>We współpracy z Wydawnictwem Niegrzeczne Książki.
    ',
    'maitiri_books_2', DATEADD('HOUR', -10, CURRENT_TIMESTAMP),
    300,1, 2
  ),
  (
    1224, 'Klątwa prawdziwej miłości',
    '
    <p>Stephanie Garber zamyka swoją epicką trylogię wybuchowym finałem, który łączy w sobie magię, emocje i niebezpieczeństwo w równych proporcjach. „Klątwa prawdziwej miłości” to niestety ostatni tom tej cudownej opowieści (chociaż osobiście mam nadzieję, że jednak nie ostatni), która oczarowała czytelników od pierwszych stron. W finałowym tomie autorka po raz kolejny buduje baśniową atmosferę pełną tajemniczości i magii, zanurzając czytelnika w fantastycznym świecie, w którym miłość i namiętność są kluczowymi motywami.</p>

    <p>Evangelina Fox prowadzi pozornie szczęśliwe, bo przecież wymarzone, życie jako żona kochającego księcia na Cudownej Północy. Jednak nie wie, jak wiele za to zapłaciła, bo nie pamięta swojego poprzedniego życia. Nie pamięta niczego, również Jacksa. To, co wydaje się być bajką, staje się czymś, co Evangelina odczuwa jako nieprawdziwe. Jej poszukiwania prawdy stawiają ją w centrum spisków, intryg, a także walki między prawdziwą miłością a lojalnością.</p>

    <p>Garber mistrzowsko przedstawia napięcia emocjonalne, jakie towarzyszą bohaterom w miłosnym trójkącie, tworząc tym samym niezwykle porywającą narrację. W trzecim tomie widzimy ewolucję postaci, zwłaszcza Apolla, który staje się kluczową postacią w rozwoju historii, co mnie osobiście nie za bardzo przypadło do gustu, bo było go zwyczajnie zbyt dużo, szczególnie w porównaniu do postaci, które miałam ochotę widzieć w powieści częściej. Zmiany w charakterach bohaterów, ich emocjach i podejściu do siebie nawzajem dodają głębi fabule. Co oczywiście wypada na plus dla finałowej części. Szczególnie, jeśli chodzi o postać Evy, której ewolucję z ciekawością obserwowałam od pierwszego tomu. Lekkomyślna, naiwna i nieostrożna dziewczyna staje się nieco bardziej rozważna. I to mi się podoba. Jednak oprócz zdominowania fabuły powieści przez niezbyt lubianego przeze mnie księcia, odczułam również pewien niedosyt z powodu braku ekspozycji niektórych postaci drugoplanowych, o których losach spodziewałam się czegoś dowiedzieć i które mogłyby mieć większy wpływ na całą opowieść. A nie miały, bo zostały pozbawione głosu.</p>

    <p>Mimo pewnych uwag dotyczących bohaterów, jestem zachwycona powieścią. Szczególnie w kontekście cliffhangera, jaki autorka zastosowała w zakończeniu poprzedniego tomu. Garber znakomicie zamyka wątki poprzednich części, serwując czytelnikom satysfakcjonujące zakończenie. Jednakże, jak to często bywa w finałowych częściach serii, niektóre kwestie mogłyby zostać rozwinięte bardziej lub miały potencjał do pogłębienia. Kluczowym elementem całej serii i tego tomu również jest intensywne emocjonalne napięcie, szczególnie w kontekście miłosnego trójkąta, które utrzymuje emocjonalne zaangażowanie czytelników przez całą opowieść. Autorka mistrzowsko łączy elementy baśniowego świata z dramatycznymi wydarzeniami, tworząc historię, która jest zarówno urzekająca, jak i trzymająca w napięciu do ostatniej strony.</p>

    <p>„Klątwa prawdziwej miłości” to fascynujący finał, który zamyka porywającą trylogię. Mimo pewnych niedoskonałości, na które zwróciłam uwagę, jestem usatysfakcjonowana z lektury. Autorka dostarczyła emocjonującą i pełną magii podróż, której warto było doświadczyć. Stephanie Garber udowadnia, że miłość, magia i niebezpieczeństwo mogą stworzyć opowieść poruszającą i porywającą wyobraźnię. Serdecznie polecam! Szczególnie wszystkim, którzy pokochali poprzednie części.</p>

    <p>We współpracy z Wydawnictwem Poradnia K.</p>
    ',
    'maitiri_books_2', DATEADD('HOUR', -20, CURRENT_TIMESTAMP),
    800,2, 1
  ),
  (
    1225, 'Stars Among Us',
    '
    <p>„Stars Among Us” to urocza opowieść o nastolatce, której życie diametralnie się zmienia po tym, kiedy jej babcia, która ją wychowuje, trafia do szpitala, a ona musi przeprowadzić się do znienawidzonej ciotki i zmienić szkołę. Przyznam, że kiedy przeczytałam opis, od razu skojarzył mi się on z „Rodziną Monet”. No bo zamysł i tu i tu jest dość podobny. Nawet imię głównej bohaterki to Hayley, dlatego o podobne skojarzenia nietrudno. Nie powiem, żeby mi to przeszkadzało, gdyby powieść okazała się podobna, bo „Rodzinę Monet” lubię, chociaż nadal twierdzę, że to nie jest lektura dla młodszych czytelników. Jednak powieść „Stars Among Us”, mimo podobieństw, okazała się zupełnie inna.</p>

    <p>Przede wszystkim inna jest główna bohaterka. Mimo młodego wieku Hayley (ma siedemnaście lat) jest dojrzała i bardzo ambitna. Wie, czego chce od życia i wytrwale dąży do realizacji swoich celów. Przede wszystkim wie, co chce robić w przyszłości. Chce zostać lekarzem, dlatego pracuje nad tym, aby tak właśnie się stało. Jej idealny plan na życie staje pod znakiem zapytania i nie tylko z powodu przeprowadzki, ale też dlatego, że dziewczyna trafia do szkoły dla artystów, elitarnej szkoły, gdzie musi uczęszczać na obowiązkowe zajęcia muzyczne. Problem w tym, że muzyka jej już nie interesuje, poza tym jej priorytetem jest przygotowanie się do egzaminów na studia. Musi się jednak ogarnąć, bo w tej szkole zajęcia muzyczne są ważne, a ona nie robi postępów, za co otrzymuje od dyrektora naganę i istnieje ryzyko, że zostanie wydalona ze szkoły i trafi do rodziny zastępczej.</p>

    <p>Trzeba przyznać, że nastolatka nie ma lekko. A żeby było jeszcze trudniej, życie stawia na jej drodze kolejne przeszkody, jak chociażby współlokatorka, która jest wredna i skutecznie uprzykrza jej życie, dwóch przystojnych młodzieńców, z którymi połączy ją pewna więź, w tym jedna zakazana i presja ze strony nauczycieli i dyrekcji. Hayley jest jednak mądrą dziewczyną, wie, co jest dla niej ważne, na co nie warto tracić energii. Potrafi się dostosować do zmieniających się warunków. Poza tym ma coś, co może pomóc jej przetrwać w tej szkole. Talent i miłość do muzyki, którą zepchnęła na dalszy plan. Hayley jest zdeterminowana i silna, mimo zła, które do tej pory zgotowało jej życie.</p>

    <p>Ta pięknie wydana powieść to mój najnowszy comfort book, książka do której będę wracać w gorszych chwilach. Jest pełna pasji, miłości do muzyki w każdej jej postaci, ambitnych młodych ludzi, którzy mimo stale rzucanych im pod nogi kłód, ciągle się podnoszą i walczą o swoje. Uwielbiam! Ta historia jest tak inspirująca, że chce się od razu wstać z fotela i zacząć działać. Zawalczyć o swoje marzenia już teraz, nie odkładać ich na bardziej sprzyjający czas. Mam ochotę czytać ją wciąż i wciąż od nowa. Bo dała mi takiego kopa do działania, jakiego nie dostałam po przeczytaniu żadnej powieści od dawna. Rozpiera mnie energia, roznosi mnie wręcz. Tak działa ta fantastyczna powieść. Która, mimo tak pozytywnego oddziaływania na czytelnika, nie jest wypakowana po brzegi jedynie pozytywnymi momentami. Nie, obecne są w niej również smutne chwile. Jest wiele momentów, w których bohaterowie muszą poradzić sobie z własnymi, często bardzo trudnymi emocjami. A, że są tak świetnie skrojeni, że dosłownie wchodzimy w ich skórę, odczuwamy te wszystkie chwile razem z nimi. Jestem zachwycona również tym, jak z biegiem lektury zmienia się główna bohaterka. Dorasta, powoli odkrywa siebie, a raczej te swoje strony, które przez długi czas pozostawały w niej uśpione. Wiele się uczy, nie tylko o sobie, ale też o otaczającym ją świecie.</p>

    <p>Piękna i wartościowa jest to młodzieżówka, która pokazuje, co naprawdę jest w życiu ważne. Zachęca, aby walczyć o siebie i swoje marzenia, nie poddawać się, zawsze przeć do przodu. Troszczyć się o innych, o dobre przyjacielskie i rodzinne relacje, ale nie zapominać o sobie. Dużą część książki zajmuje świetnie przedstawiony wątek muzyczny, na który składają się artystyczne dusze bohaterów, śpiew, taniec, gra na instrumentach. W powieści pojawiają się również fragmenty piosenek, a na końcu znajduje się playlista, czyli piosenki, których autorka słuchała podczas tworzenia historii Hayley i które pozwolą czytelnikowi odczuć tę opowieść większą liczbą zmysłów. Muzyka stanowi ważny element powieści, ale nie tylko na niej się ona skupia. Mówi wiele o stracie najbliższych i radzeniu sobie z życiem, kiedy ich zabraknie. Porusza problemy ważne dla wieku dorastania, ale też bardzo uniwersalne, jak brak wiary we własne siły i umiejętności, a tym samym brak motywacji, lęk przed podejmowaniem nowych wyzwań i przed zmianą. Ta napisana z pierwszoosobowej perspektywy powieść pozwala zajrzeć w głąb głównej bohaterki, dobrze poznać jej motywacje i uczucia. Inni bohaterowie zresztą również dają się poznać całkiem dobrze. Ich relacje pełne są różnorodnych emocji, tym bardziej, że każdy skrywa jakąś tajemnicę, którą nie chce się dzielić ze światem. Nie brakuje tu również dobrego humoru, które nadaje powieści lekkości. Dzięki temu czyta się ją z prawdziwą przyjemnością.</p>

    <p>Jestem dumna, że mogłam wziąć tę powieść pod swoje patronackie skrzydła. Jest nie tylko wizualnie piękna, jej wnętrze jest równie zachwycające. To taki dobry duszek na złe chwile w życiu, który sprawi, że na twarzy pojawi się uśmiech, doda sił we własne możliwości i zachęci, aby ruszyć z życiem w kierunku, jaki sobie wymarzyliśmy. Bardzo, bardzo polecam!</p>

    <p>We współpracy z Wydawnictwem HarperCollins Polska.</p>
    ',
    'maitiri_books_2', DATEADD('DAY', -2, CURRENT_TIMESTAMP),
    231, 2, 10
  ),
  (
    1226, 'Motyl i Śmierć',
    '
    <p>Myślałam, że pierwszy tom „Dylogii Róży” jest grubaskiem i w sumie jest, bo to tomiszcze ma aż 460 stron. Kiedy jednak zobaczyłam drugi tom, oczy dosłownie wyszły mi z orbit. Książka ma ponad 600 stron. Nie do wiary, co nie? Jeszcze ciężej uwierzyć w to, że tę powieść pochłania się bardzo szybko. Gdyby nie fakt, że czytałam ją w wersji elektronicznej, nie dałabym rady się od niej oderwać. Od wersji elektronicznych z powodu problemów ze wzrokiem jednak odrywać się muszę, dlatego siłą rzeczy poznawanie tej fascynującej historii trwało w moim przypadku dłużej. Ale tę cegiełkę w wersji papierowej już mam i już wiem, że będę robić reread całej dylogii, bo zdecydowanie jest tego warta. Warta jest zresztą o wiele więcej. Tego mikro zawału i załamania nerwowego, które zafundowała mi autorka, morza wylanych łez, palpitacji serca za każdym razem, kiedy fabuła toczyła się nie po mojej myśli, a nawet wielokrotnej chęci zamordowania autorki za to, co wyczyniała w tej serii, a już w szczególności w tym tomie. Mogę tak wymieniać do jutra, bo lista jest długa, ale na pewno nie znajdziecie na niej alergii, bo to mnie podczas lektury tego książkowego giganta nie spotkało. Bo ten książkowy gigant jest cudowny!</p>

    <p>Przejdźmy jednak do konkretów. A konkrety są takie, że nie dzieje się dobrze. Nie między Esterą a Ivanem, chociaż i u nich z powodu rozdzielenia zacznie się robić nieciekawie, ale nie uprzedzajmy faktów. Bo zanim to nastąpi młodzi zdążą dotrzeć do kolejnej bazy, jeszcze bardziej się na siebie otworzą, przez co później jeszcze bardziej będą cierpieć, a czytelnikom rozrywać serca. Chłonę w ogóle tę ich relację jak gąbka wodę. Nie wiem, czy pamiętacie z pierwszego tomu, ale ta dwójka od początku nie miała lekko. Bo nie dość, że wojna (tak od siedmiu lat ta wojna), to weszli w związek, a właściwie małżeństwo nie do końca z własnej woli, bo ich małżeństwo było aranżowane. Musieli spłacić dług krwi i kropka. W drugim tomie okazuje się, że to nie honorowa umowa splotła ich losy, a przeznaczenie, które postawiło ich sobie na drodze dużo wcześniej. Niczego więcej nie zdradzę, bo to jeden z tych uroczych smaczków, które wzbogacają i pięknie dopełniają lekturę. Odbiegłam trochę od tematu, a miałam mówić o tym, że nie dzieje się dobrze. No nie dzieje się. Landongczycy są bezlitośni i okrutni. Nie dają odsapnąć Krystalianom, poczynają sobie zresztą coraz śmielej, dlatego Ivan i Estera razem z najbardziej oddanymi ludźmi udają się do Królestwa Elfów, aby zawrzeć z Grandwalią sojusz. W konsekwencji, jak już pisałam, młodzi zostają rozdzieleni. Przewodnicząca Gildii Kupców musi wrócić do stolicy, aby chronić cesarza i odkryć tożsamość szpiegów, Ivan wraca na front. Co się wydarzy? Czy Ivan i Estera doczekają szczęśliwego końca?</p>

    <p>Wydawało się wcześniej, że w tej wojnie chodzi o magię i nienawiść do niej ze strony Landongczyków. Okazuje się, że to nie wszystko. Intryga jest dużo bardziej skomplikowana niż myślimy na początku i doskonale skrojona. Do końca nie wiadomo, kto tak naprawdę jest sojusznikiem, a kto wrogiem i nikomu nie można ufać. Istnieje też pewien mały przedmiot, którego pożądają wrogowie. Jaka szkoda, że nie mogę napisać dokładniej, o co z tym drobiazgiem chodzi i jak wiele potrafi. Musicie jednak wiedzieć, że podobnie jak cały system magiczny i jego działanie, tak i ta mała rzecz, są doskonale pomyślane. I są totalną nowością. Chociaż magia nie wylewa się z każdej strony tej opowieści, jak już się pojawia, robi kolosalne wrażenie. Do tego jest nowa, świeża, niespotykana. I różnorodna, bo mamy tu do czynienia również z magią leczniczą i bojową, które są równie widowiskowe. Gwarantuję, że takiej magii nie znajdziecie nigdzie indziej.</p>

    <p>Akcja ma odpowiednie tempo, nie gna na złamanie karku ani się nie wlecze. Autorka piórem dojrzałej pisarki odmalowuje niezwykle plastyczny obraz niebezpiecznego, brutalnego świata, w którym tocząca się wojna zmienia wszystko i wszystkich. Nawet tak dobre osoby jak Estera mierzą się z konsekwencjami trwającego już zbyt długo, wyniszczającego konfliktu i następstwami swoich decyzji i czynów. Opisaną w powieści historię poznajemy z perspektywy obojga głównych bohaterów, dzięki czemu, kiedy zostają rozdzieleni, zyskujemy wgląd w toczące się w różnych miejscach wydarzenia i trochę w przeszłość głównych i pobocznych bohaterów. W przypadku Ivana są to doniesienia z frontu, epickie walki, planowanie strategii, zawiązywanie sojuszy i ostateczne starcie. Estera w tym czasie zajmuje się odkryciem tożsamości szpiegów, sprawami Gildii Kupców i tymi bardziej prywatnymi, związanymi głównie z rodziną. W obu przypadkach nie brakuje zwrotów akcji i zaskoczeń. Na jaw zaczynają wychodzić pewne tajemnice z życia małżonków i nie tylko, bo niektórzy bohaterowie zrzucają maski i pokazują swoją prawdziwą twarz.</p>

    <p>Podobają mi się bohaterowie. A właściwie ich kreacja. Są skomplikowani i niejednoznaczni, przez co ciężko jest przewidzieć ich ruchy. Niektórzy dodatkowo są obarczeni ogromnym ciężarem, który muszą dźwigać na swoich barkach. Widać też wyraźnie, jak duży wpływ miał na nich długotrwały wojenny konflikt, jak wiele ich kosztował i jak bardzo się w związku z tym zmienili. Również w tej części zachwycają przekomarzanki słowne między bohaterami, pełne doskonałego humoru i ciętych ripost. I w ogóle relacje między nimi. I nie chodzi tu jedynie o tę wyjątkową więź, jaką mają Ivan i Estera, ale też o relacje przyjacielskie. W obie łatwo jest uwierzyć. Również w te, które ciężko nazwać poprawnymi, jak chociażby relacja Estery z Ireną, która, swoją drogą, swoim ciężkim charakterkiem znów nie zawodzi. Chociaż w powieści dużo się dzieje, akcja znacząco przyspiesza pod koniec. Wtedy następuje prawdziwa jazda bez trzymanki, która kosztuje czytelnika wiele emocji. A finał jest wisienką na torcie tej emocjonującej, pełnej spisków, zdrad, nietuzinkowej magii i spektakularnych plot twistów powieści. Zaskakuje i wyciska z oczu łzy.</p>

    <p>No co tu dużo mówić, powieść jest rewelacyjna. Kompletna, przemyślana, drobiazgowo dopracowana, a przy tym lekko podana. Hipnotyzuje i porywa. Dokładnie taką fantastykę chcę czytać. I oczywiście serdecznie Wam obie części „Dylogii Róży” polecam.</p>
    ',
    'maitiri_books_2', DATEADD('DAY', -3, CURRENT_TIMESTAMP),
    21, 2, 1
  ),
  (
    1227, 'Fałszywe intencje',
    '
    <p>Mike Omer jest izraelskim autorem kryminałów i thrillerów. Pisze również horrory i powieści fantasy. Jego książki zostały przetłumaczone na ponad 14 języków i sprzedały się w ponad milionie egzemplarzy. „Fałszywe intencje” to już ósma powieść autora, która ukazuje się w Polsce i drugi tom cyklu o Abby Mullen.</p>

    <p>"Fałszywe intencje" Mika Omera to drugi tom cyklu o Abby Mullen, negocjatorce policji w Nowym Jorku, która w przeszłości przebywała w sekcie Wilcox. Po latach, gdy w wyniku ataku na miejscową szkołę zostaje porwana jej córka Samantha, Abby musi zmierzyć się z uzbrojonymi zwolennikami teorii spiskowych, którzy sami siebie nazywają Watchers.</p>

    <p>Mike Omer wraca w świetnej formie, oferując czytelnikom intensywną i mrożącą krew w żyłach rozrywkę. W mistrzowski sposób wplata w fabułę elementy psychologiczne, ukazując nie tylko dramatyczną sytuację porwania, ale też wewnętrzne konflikty, z jakimi zmaga się główna bohaterka. Powieść wciąga czytelnika w wir emocji, nieprzewidywalnych zwrotów akcji i psychologicznych zagadek. Autor zgrabnie konstruuje fabułę, wplatając elementy teorii spiskowych, fanatyzmu i manipulacji, co prowadzi do niezwykle napiętej akcji. Książka składa się z krótkich, dynamicznych rozdziałów pisanych z perspektywy różnych postaci, co dodaje powieści tempa i trzyma czytelnika w stałym napięciu.</p>

    </p>Autor kreuje barwnych i różnorodnych, a przy tym autentycznych bohaterów. Zarówno negatywni, jak i pozytywni bohaterowie są wyraźnie zarysowani i pełni życia, co sprawia, że czytelnik łatwo utożsamia się z ich losami i emocjami. Abby Mullen staje w obliczu dramatycznej sytuacji porwania swojej córki. Jej siła wewnętrzna, spokój w trudnych sytuacjach i determinacja w walce o bezpieczeństwo bliskich sprawiają, że czytelnik szybko zaczyna współczuć i identyfikować się z jej postacią. Przeszłość głównej bohaterki w sekcji Wilcox stanowi ważny wątek fabularny, dodając tajemniczości jej osobie. Córka Abby staje się zakładniczką, co wywołuje w kobiecie skrajne emocje i pozwala czytelnikowi zobaczyć jej determinację i wewnętrzną siłę w obliczu niebezpieczeństwa. To silna postać, która stara się zachować zimną krew w ekstremalnej sytuacji. Porywacze, znani jako Watchers, są barwną, niejednoznaczną grupą postaci. Gąsienica i Czerwona Królowa, dwójka z trójki porywaczy, są przekonani o swojej misji i podążają ścieżką, którą uznali za słuszną. Omer doskonale kreuje ich psychikę, ukazując manipulację i fanatyzm, które wpłynęły na ich sposób myślenia i działania. Autor świetnie ukazuje różnice między bohaterami, ich emocje, wewnętrzne konflikty i sposób reagowania na trudne sytuacje. Dzięki temu czytelnik otrzymuje wyraziste postacie, które pozwalają lepiej zrozumieć dynamikę wydarzeń.</p>

    </p>Przeszłość Abby w sektach jest motywem przewodnim, łączącym całą serię. Autentyczność postaci, szczególnie psychologiczna głównej bohaterki, jest godna uwagi. Autor świetnie oddaje jej emocje, strategie komunikacyjne podczas negocjacji oraz jej nieustające zmartwienie o córkę. Książka porusza ważne tematy, takie jak obsesja, manipulacja czy fanatyzm, ukazując, jak Internet może wpływać na ludzi i prowadzić do nieprzewidywalnych zachowań. Omer przedstawia świat teorii spiskowych, w którym fikcja i rzeczywistość zlewają się w sposób, który może zaskoczyć nawet najbardziej sceptycznych czytelników. Zmusza tym samym czytelnika do refleksji nad zagrożeniami, jakie mogą czyhać w świecie wirtualnym.</p>

    </p>"Fałszywe intencje" to kryminalna powieść pełna emocji, zwrotów akcji i wciągających wątków psychologicznych. Nie tylko trzyma w napięciu, ale też zmusza do refleksji nad aktualnymi problemami społecznymi. Autor stworzył fascynującą opowieść, w której thriller miesza się z głębokimi rozważaniami nad naturą ludzkich zachowań. To lektura, która pozostaje w pamięci długo po jej zakończeniu. Polecam!</p>
    ',
    'maitiri_books_2', DATEADD('DAY', -10, CURRENT_TIMESTAMP),
    32, 1, 1
  ),
  (
    1228, 'Kraina Czarów',
    '
    <p>Uwielbiam to uczucie po przeczytaniu naprawdę dobrej książki. Jest przyjemnie, czasem euforycznie, ale najczęściej tak cudownie błogo. Proszę Państwa, Dallas 63 Stephena Kinga to jedna z tych lektur, aż chciałoby się rzec, wspaniała to była powieść, nie zapomnę jej nigdy!</p>

    <p>O czym jest powieść? Otóż informuje nas o tym bezlitośnie okładka, Prószyński i Ska ma nawyki rynkowe, więc facjatę Johna Fitzgeralda Kennedyego wbija się nam w twarz w miksie z krzyżami celowniczymi lunet karabinowych i jakąś zaciemnioną nieznaną postacią. Czyli wydawnicza wieś tańczy i śpiewa wraz z tradycyjnym brakiem poszanowania wiedzy ogólnej potencjalnego czytacza. To tak na wszelki wypadek, gdyby czytelnik nie domyślił się na podstawie tytułu, co było w Dallas w 1963 r. - motywem przewodnim powieści jest zabójstwo 35 prezydenta Stanów Zjednoczonych, Johna Fitzgeralda Kennedyego.</p>

    <p>Zastanawiałem się mocno, jak Pan Autor zamieni iście polityczną sprawę w horror z elementami nadprzyrodzonymi, jakie zwykł był nam serwować? Odpowiedź jest prosta, otóż podróż w czasie. Młodszy ode mnie główny bohater, o zgrozo starości, jest nauczycielem w amerykańskim miasteczku i na skutek pewnych zawiłości fabularnych ma zamiar przenieść się w czasie aby zapobiec zabójstwu Pana Prezydenta. Przyznam, że pomysł świetny, byłem ciekawy czy jako podróżnik w czasie ma na ten przykład ostrzec ówczesne służby, czy też osłonić cel własną piersią? W tym miejscu należy oddać, że Stephen King po mistrzowsku uplata wiele teorii spiskowych funkcjonujących do dzisiaj tworząc niejako ich żywy odpowiednik powieściowy, też jako obawy naszego bohatera, czy myśli i słowa poszczególnych postaci. Jak tu więc ostrzec służby, skoro przecież mogą brać udział, albo też CIA samo odpaliło własnego prezydenta? Ilu było strzelców? Przecież nawet przy zamachu na WTC z 2011 nadal mówi się o inside job. To jest niesamowite jak na podstawie realnej historii można utkać tak zawiłą i jednocześnie nieprawdopodobną fabułę. Poza tym, czy przy możliwości podróży w czasie nikogo nie kusiło by poprawić życia znanym sobie ludziom? Cofnąć błędy życiowe innych lub nawet swoje? Nie zdradzając fabuły zanadto, Autor odpowiada na te pytania. I tak nasz bohater niczym pewna Alicja nurkuje w króliczej norze czasoprzestrzeni aby znaleźć się, no właśnie, w przeszłości.</p>

    <p>Co mi się najbardziej podobało w tej powieści to wspaniały klimat tej amerykańskości lat sześćdziesiątych w Ameryce, czas najlepszy na romanse fabularnie, filmy o małych miejscowościach, serie szpiegowskie i, a jakże, horrory. Pomijając westerny, jestem fanatykiem klimatów amerykańskich, natomiast narracja robi robotę. Sceneria, sklepiki, ówczesne bary czy nawet (!) apteki, po prostu czytelnik jest tam razem z postaciami, widzi te półki, czuje te zapachy. Nie bez znaczenia dla ogólnego odbioru dzieła jest znakomita kreacja postaci, tak ważna dla każdej powieści. Fascynują nie tylko bohaterowie wymyśleni, ale też ożywione na kartach powieści historycznie istniejące postacie, gdzie Autor idealnie dodał ich prywatnym żywotom nieco kolorytu lat ówczesnych. Mentalność ludzka tamtych czasów, świetne nakreślona, i tak nie było mnie wtedy na świecie, ale to jest tak bardzo mocno odczuwalne przez czytelnika. Bardzo wyraźnie zarysowane są problemy społeczne jak choćby segregacja rasowa, dość głośno wybrzmiewają w powieści. Smutne jest tylko to, że zasady moralne ludzie mieli wtedy chyba jakoś lepsze, ale to już taki element refleksyjnym choć z drugiej strony mamy też traktowanie kobiet jak mebla i właściwie jedynie akceptowalnej roli matki żony.</p>

    <p>I tak powiem, książka ta została wybrana dość przypadkowo, choć doradzona przez fankę Stephena Kinga, jako jedna z lepszych książek pisarza. Pierwotnie miała być przeznaczona na podróż, tam i z powrotem, ale jakby nie sprawdziłem, że ma milion stron. Ale zaskoczyła od pierwszych stron i jak zwykle nakręca na dalsze czytanie twórczości Autora. Dodam, że jeszcze nie nazwę Pana Kinga moim mistrzem, gdyż póki co przeczytałem jednak więcej książek pewnego Remigiusza, stosunek jest mniej więcej 20:7, natomiast jestem na dobrej drodze. Nie mniej jednak uczciwie muszę przyznać, że rację mieli Ci, co pisali że King leciutko rozciąga i pewne fragmenty można było skrócić czy w ogóle pominąć. Subtelne dłużyzny się zdarzają.</p>

    <p>Dla mocnego klimatu Stanów lat sześćdziesiątych, świetnej fabuły i ciekawych postaci myślę, że warto tę podróż w czasie uderzyć.</p>
    ',
    'johnson', DATEADD('HOUR', -9, CURRENT_TIMESTAMP),
    78, 2, 1
  ),
  (
    1229, 'Małpi szał',
    '
    <p>To jest chore! I dobre! I jeszcze raz chore!</p>

    <p>Twórczość Pana Mellicka znam choćby z „Nawiedzonej Waginy”, więc wiedziałem czego mniej więcej mogę się spodziewać sięgając po tę lekturę. Natomiast nie wiedziałem, że będzie to tak wciągająca i jednocześnie odrażająca jazda bez trzymanki. Książka jest bardzo brutalna, wręcz obrzydliwie makabryczna, z domieszką najbardziej zwyrodniałych fantazji seksualnych, związanych np. z aborcją (jednak innych niż te od DeSade’a) i magicznej, klasycznej scenerii domku w lesie.</p>

    <p>Otóż grupka młodych ludzi uderza na wycieczkę do takiego domku w lesie, by oddawać się rozpuście rozrywki typowej dla siebie, seks, alkohol, ogólna balanga. Co się wydarza w trakcie, przed i po – to są rzeczy wytworzone przez zarówno genialny, jak i zwyrodniały umysł Autora. Zęby w pochwie? Nie ma sprawy! Fellatio w wykonaniu partnerki, która ma przestrzeloną głowę i możesz przez otwór wylotowy (po kuli) widzieć swojego penisa? A jakże! A to tylko wierzchołek, by to rzec, atrakcji, zafundowanych przez Autora czytelnikowi w tym gatunkowym, splatterpunkowym* horrorze. A to wszystko opakowane w wyrafinowaną i niezwykle ciekawie prowadzoną narrację. Czyta się ciekawie, choć chwilami miałem wrażenie klasycznego „co tu się kurka wodna dzieje?!”, albo „co ten gość ma w głowie”.</p>

    <p>Historię poznajemy perspektywą poszczególnych bohaterów, których imionami tytułowane są kolejne rozdziały. Nie jest to dzieło wybitne, jak sami wydawcy na okładce, czy autor w przedmowie, zwracają honor, że jest to literatura rozrywkowa, będąca swoistym ukłonem w stronę lat osiemdziesiątych, horrorów klasy B, kina mającego straszyć, ale jednocześnie tanim kosztem. Może nawet parodią takich tematów. Książeczka w dodatku bardzo krotka, więc przy spięciu czasowym do oblecenia w jeden wieczór.</p>

    <p>Czy polecam? Raczej nie wszystkim. Nie dlatego, że to zła publikacja, bo książka mi się podobała, ale jest to raczej temat dla wielbicieli tego gatunku, wąskiego grona ludzi, którzy lubują się w mocno brutalnej, horrorowej i choć to trochę sprzeczne, jednocześnie zabawnej literaturze.</p>

    <p>*splatterpunk – nurt szeroko rozumianej fantastyki, a szczególnie współczesnego horroru, powstały w latach 80. XX wieku. Zakłada wywołanie u odbiorcy odrazy, epatując obrazami przemocy i okrucieństwa.</p>
    ',
    'johnson', DATEADD('HOUR', -4, CURRENT_TIMESTAMP),
    30, 0, 1
  ),
  (
    1230, 'Genesis',
    '
    <p>To część długiego już cyklu, więc zawartość książki z grubsza nie będzie zaskoczeniem dla fanów serii. Czytelnicy zaznajomieni z bohaterem wykreowanym przez Chrisa Cartera spotkają go znowu w towarzystwie partnera Garcii i szefowej Lindy.</p>
    <p>Co się zmieniło? I jak się trzyma dwunastka wobec poprzednich tomów?</p>

    <p>Tak sobie, powiedziałbym. Nie jest źle, ale były już lepsze tomy serii. Niestety Garcia jest znowuż mniej lub bardziej bezużyteczny w roli raczej lustra myśli i adresata wypowiedzi głównego protagonisty, by od czasu do czasu rzucić zdziwieniem bezbrzeżnym tak, jakby w Policji, a już na pewno w wydziale do spraw zbrodni dokonanych ze szczególnym okrucieństwem, znalazł się dzień wcześniej. Sympatyczny jednak niezmiennie, wraz ze wspomnianą jednym zdaniem, żoną Anną.</p>

    <p>Zaczynając od końca, podsumuję intrygę i scenariusz książki, jako udaną historię, aczkolwiek dziwnie dość prowadzoną. Autor we wcześniejszych tomach, dokładniej budował tło zdarzeń, opisywał miasta, miejsca i postaci, ich historie i ewentualne konotacje obyczajowe, ba! Nawet romantyczne. Rozumiem, że w kolejnej już części, tym bardziej dwunastej, nie powinniśmy już czytać o życiorysie Roberta Huntera, bo każdy już go zna.</p>

    <p>Ale historie osobiste, bieżące, życie prywatne, jest tym razem potraktowane po macoszemu, po jednej stronie na rodzinnego grilla u Garcii, chętną na randkę singielkę i… koniec. Carter to bardzo dobry twórca swojego własnego cyklu, jednak przyzwyczaiłem się, że pomiędzy kolejnymi morderstwami będą jakieś urealniające rzeczywistość powieści wstawki „normalnego życia” bohaterów.</p>

    <p>Tutaj natomiast przez całą właściwie powieść skupiamy się na śledztwie, i kolejnych morderstwach. Żebym był dobrze zrozumiany, intryga jest dobra, łącznie z finałem (wynagradzającym nieco subtelne dłużyzny), ale akcenty nierówno rozłożone jakoś mi trochę popsuły odbiór generalny powieści.</p>

    <p>Czy warto czytać Chrisa Cartera? Niezmiennie odpowiadam, że tak! To literatura rozrywkowa, czysto thrillerowa, z dużą dawką brutalności mniej lub bardziej uzasadnionej. Morderca jest, zabija, i owszem, we właściwy Carterowski sposób, bardzo brutalnie, wymyślnie, tworzy jakiś obraz ze sceny zbrodni. Giną ludzie, a nasi dzielni policjanci próbują połączyć kropki i wpaść na trop zbója.</p>

    <p>To jest szczególnie ciekawe, jak prowadzone jest śledztwo, Carter wykazuje się dużą wiedzą merytoryczną i czuć, że research był robiony solidnie, łącznie z elementami psychologii, co tylko dodaje smaku lekturze. W końcu należy zadać pytanie, dlaczego ofiary giną i czy tak do końca są niewinne? Bardzo dobry pomysł na kolejny tom przygód Roberta Huntera.</p>

    <p>Poza drobnymi mankamentami z tytułu spłycenia powieści i wyłączenia zeń obyczajowych wątków, na rzecz bardziej rozbudowanej fabuły kryminalnej jestem z lektury zadowolony. Czyta się zadziwiająco szybko.</p>
    ',
    'johnson', DATEADD('DAY', -2, CURRENT_TIMESTAMP),
    92, 0, 4
  ),
  (
    1231, 'Dawno temu w Warszawie',
    '
    <p>Zanim zabrałem się za lekturę Dawno temu w Warszawie, nieopatrznie przeczytałem kilka tekstów na temat tej książki, i to szczerze mówiąc, zaskakująco negatywnych. Kim jest Jakub Żulczyk mówić książkowym maniakom nie trzeba, Jego książki mogą się podobać mniej lub bardziej, finalnie jest to jednak pisarz bardzo dobry. Można nie zgadzać się z Jego publicznymi wypowiedziami, czy poglądami, ale nie można przez ich pryzmat oceniać twórczości Autora.</p>

    <p>I tak czytam, że zabieg literacki nowy, że to złe, tamto złe i jakoś tak za nowocześnie miejscami, że tematy niepotrzebne i ogólnie trochę Jakuba poniosło. Mówię, no nie, nie można tak się nastawiać negatywnie, zacząłem, i wciągnięty (tak!) przepadłem aż do momentu zamknięcia ostatniej strony, okładki, z niewielką przerwą na opłatek i kolację wigilijną.</p>

    <p>Faktycznie nowością jest inna konstrukcja powieści, bo tym razem mamy do czynienia z narracją kilku osób, ludzi których losy przeplatają się tworząc spójną całość fabularną. Nastawiałem się do tego negatywnie (na skutek wspomnianych opinii), ale po lekturze uważam, że to był bardzo dobry pomysł, daje to czytelnikowi ciekawe spojrzenie na perspektywę innych bohaterów, ich interes w „tym wszystkim”, indywidualne rozterki, myśli, motywacje. I przede wszystkim nie pozwala się nudzić czytelnikowi, bowiem objętość książki mogłaby niektórych odstraszyć, a strumień świadomości głównego bohatera Jacka, jak to było w Ślepnąć od świateł, mógłby być nieco nużący.</p>

    <p>Fabuła to bezpośrednia kontynuacja poprzedniej części, i mocno z nią siłą rzeczy związana, więc nie polecam lektury osobom, które poprzedniego tomu nie czytały. I mimo że Ślepnąc od Świateł to książka, która choć dobra nie wywarła na mnie wrażenia, to Dawno temu w Warszawie weszło jak złoto. Zakładam, że jest to też stety/niestety wpływ doskonałych kreacji aktorskich dostarczonych nam przez serial będący adaptacją pierwszej książki. Jacek, Dario, Marta Pazińska „Pazina” czy dealer o pseudonimie „Kurtka” to główne filary, wokół których obraca się świat mrocznej Warszawy osadzony dodatkowo w czasach pandemii Covidowej. Trudne czasy dla Warszawiaków i kolejne przymusowe zamknięcia wzmagają warszawskie potrzeby narkotykowe, które za pomocą nowego, groźnego dla zdrowia narkotyku zaspokoić ma Dario i jego mafia. Oczywiście w przedsięwzięciu uczestniczy Jacek coraz bardziej popadający w macki zła, który sam mówi ze „wypisał się z klubu ludzi”. Marta Pazińska, która usilnie stara się pomagać prześladowanym czy obarczonym problemami mniejszościom i młodzi dealerzy, którzy muszą się mierzyć z nowym układem sił. Można dyskutować czy to dobra kontynuacja, ja uważam, że tak i choć niektóre kwestie, powiedzmy, zakończenia nie do końca mi się podobały, trzeba przyznać, że Autor jest konsekwentny, a życiorysy bohaterów zmierzają ku nieuniknionym drogom ich przeznaczenia, tego które sami sobie zgotowali.</p>

    <p>Żulczyk pisze wspaniale, i nawet jeśli wkurza mnie to, że bohater ten czy inny robi złe rzeczy, albo dobre rzeczy, ale nie tak jak ja, czytelnik, tego chcę, denerwuje mnie, drażni, drwi sobie ze mnie. Pragnę dobrych zakończeń, pragnę szczęścia dla tak wyrazistych postaci, jakby wyjętych z realnego świata, bo to niemożliwe tak wymyślić, tak dobrze, tak realnie. I ostatecznie jak Dario, z tą swoją śmieszną mową i zdrobnieniami, Jakub Żulczyk kartami powieści mówi do mnie:</p>

    <p>Jesteś sobie moim czytelnikiem takim, takie moje książki sobie czytasz ze mną. Czytelniczku ty mój słodziutki. Już jesteś mój. Do mnie należysz sobie.</p>

    <p>Chcesz czy nie, tak właśnie jest. Bogactwo literackie tej książki to doskonała uczta, a pisanie Jakubowe jest teraz jednym z najlepszych, jeśli nie najlepsze w Polsce. I jak sam pisał
    ',
    'johnson', DATEADD('DAY', -3, CURRENT_TIMESTAMP),
    28, 2, 1
  ),
  (
    1232, 'Przedpiekle',
    '
    <p>Nie miałem świadomości aż do ostatnich dni, kiedy to prawie jednym tchem wciągnąłem aż dwa tytuły jej autorstwa, kończąc na niniejszym „Przedpieklu”.</p>
    <p>Książka jest najlepszym polskim kryminałem policyjnym, jaki do tej pory przeczytałem, a to wszystko głównie dzięki AKCJI, która w niniejszym tytule ani chwili nie pozwala czytelnikowi zwolnić.</p>
    <p>Najważniejsze w cyklu „między prawami” jest to, jak Żwirełło, pisząca także pod pseudonimem Vera Eikon, zbudowała BOHATERÓW.</p>
    <p>Główny bohater, Alan Berg, pseudonim Proca, oficer Centralnego Biura Śledczego Policji z wydziału narkotykowego nie jest typowym policyjnym wykidajłem. Owszem, jest szefem, nieustępliwym i dość solidnym charakterologicznym, nieco aroganckim typem.</p>
    <p>ZAWIŁOŚĆ intrygi jest tutaj przepyszna! Każdy czytelnik, a już na pewno fan kryminałów, powinien być zadowolony.</p>
    <p>WARSZTAT Autorki i solidne przygotowanie do popełnienia niniejszej powieści są niesamowite.</p>
    <p>EMOCJE bohaterów, myśli im towarzyszące - to niesamowity element książki.</p>
    <p>FABULARNIE oczywiście jest bardzo gęsto i bardzo ciekawie. CBA, afery korupcyjne, mafia, narkotyki i umierające młode prostytutki - mieszanka wspaniała.</p>
    <p>Przedpiekle to drugi tom cyklu "między prawami", tak jak poprzedni, ten również jest dobry, i nie tylko trzyma poziom poprzedniego, ale dodaje wartości i po lekturze mam ochotę sięgnąć już po tom następny.</p>
    <p>Książkę przeżyłem w towarzystwie Przemysława Bluszcza, który nieco wpłynął na pozytywny odbiór powieści, idealnie oddając klimat tego Kryminału.</p>
    <p>Czy polecam? Oczywiście.</p>
    ',
    'johnson', DATEADD('DAY', -11, CURRENT_TIMESTAMP),
    100, 1, 10
  ),
  (
     1233, 'Ogrody ciszy',
     '
     <p>Czy w życiu wszystko powinno przychodzić łatwo i gładko? Czy jednak są sytuacje, w których potrzebne jest podjęcie trudu, by później lepiej docenić efekt, poczuć, że się żyje? Ja uważam, że zawsze to, o co muszę mocniej walczyć lepiej satysfakcjonuje na koniec, chociaż z drugiej strony chciałabym żeby pewne rzeczy przychodziły mi łatwiej....</p>

     <p>Natomiast w życiu postaci z "Ogrodów ciszy" autorstwa Marka Adama Grabowskiego, wydanych przez bookEdit wszystko jest łatwe, życie podane jak na tacy. Społeczeństwo nad niczym nie musi myśleć, tylko żyć według jasno określonych reguł. Większość przedmiotów użytku codziennego ma w sobie dereż- składnik pochodzący z ciał zabitych ludzi. Tych ludzi, poprzez specjalną terapię, przygotowuje na śmierć Orfeusz- psycholog pracujący w obozie koncentracyjnym. Wszystkie numery dzięki niemu grzecznie idą na śmierć, z wyjątkiem jednego, który jakby nie chce się pogodzić ze swoim losem. Ale czy to możliwe? Czy numer może nie chcieć śmierci? Czy numer może chcieć żyć? Co to zmieni w życiu Orfeusza?</p>

     <p>Ależ to była lektura! Doskonała dawka groteski w najlepszym wydaniu! Autor ukazuje społeczeństwo nastawione na konsumpcje. Główni bohaterowie to małżeństwo "mieć" z "czy być?" i mieć w tej parze bardzo mnie wkurzało, ale myślę, że takie było założenie autora. W dobie, gdy wszystko ma być z założenia szybsze, łatwiej dostępne i piękniejsze taka lektura niepokoi mocno! Świetne jest to, że nie poznajemy tu przemyśleń autora, za to - chcąc nie chcąc - snujemy własne przez całą książkę. Ciekawy jest wątek odejścia od Jedynego Boga na cześć bogów z mitologii greckiej. Jestem pod wrażeniem wyobraźni autora, która w połączeniu z bardzo dobrym stylem dała książkę niebanalną i niesztampową. Na początku byłam zwiedziona niewielką objetością książki - niecałe 100 stron, ale teraz wiem, że taka jest idealna, by historia nie stała się przegadana lub przerysowana. W pewien sposób "Ogrody ciszy" przypominają mi "Wybornego trupa" Augustiny Bazterrica, chociaż jak dla mnie są nawet mocniejsze. Jeśli podobała Ci się tamta książka, "Ogrody ciszy" też z całą pewnością Ci się spodobają</p>
     ',
     'chomiczek71', DATEADD('HOUR', -1, CURRENT_TIMESTAMP),
     254, 2, 5
   ),
   (
     1234, 'Santa Clown',
     '
     <p>Hej ho</p>

     <p>Jak długo po świętach można czytać świąteczne książki? Myślicie, że jest jakaś zasada? Czy zasada brzmi "tak długo, jak masz na to ochotę"? W moim przypadku ta zasada właściwie odnosi się do wszystkiego</p>

     <p>Jako wielbicielka mrocznych historii rzadko mam okazję czytać świąteczne książki, ale w tym roku świątecznie zadbał o moje gusta Julius Throne wraz z Wydawnictwem Papierowy Księżyc wydając książkę "Santa Clown" i muszę przyznać, że to pozycja niesztampowa.</p>

     <p>Obserwujemy tu jak od początku grudnia małe amerykańskie miasteczko szykuje się do świąt Bożego Narodzenia - takich magicznych i bajkowych, jednak poczynając od drobiazgów przygotowania idą coraz gorzej. Być może ma to związek z szajką elfów, dowodzoną przez hybrydę strasznego clowna na miarę Pennywise ze świętym Mikołajem z charakterem Jokera (może ma w sobie coś z Grincha, jednak pamiętajmy, że on na koniec okazał się być dobrym).Ta podejrzana grupka zajmuje się... napaściami na banki na obrzeżach Waszyngtonu, a gdy nie rabują rozdają dzieciom zabawki, jednak czy prezenty od takiej gromadki będą prawdziwie cieszyć? Policja średnio sobie radzi ze śledztwem, czy grupka dzieciaków poradzi sobie lepiej? Czy cokolwiek jest w stanie uratować święta w Rockville w 1985 roku?</p>

     <p>Bardzo podobało mi się jak autor doskonale stworzył klimat. Myślę, że książkę można traktować jako swoisty przewodnik po amerykańskiej popkulturze lat osiemdziesiątych ubiegłego wieku! Co się z tym wiąże jest tu dużo długich opisów. Mamy też próbę stworzenia małej grupki dzieciaków na wzór tych wykreowanych przez Kinga w "To" lub w "Stranger things" i niestety ja tu nie czułam tej dynamiki a jednocześnie więzi między młodymi ludźmi, zwłaszcza, że w większości przypadków wyrażali się jak dorośli, więc byli mało przekonujący, jednak pomysł był fajny. Nie przekonuje mnie też nieuchwytność jakże charakterystycznych przestępców i szalone pościgi samochodowe, ale miłośnikom sensacji mogą przypaść do gustu. Spodziewałam się, że książka będzie mieszanką horroru i kryminału, jednak według mnie to kryminał w psychodelicznej otoczce i naprawdę świetna alternatywa dla słodkich, romantycznych świątecznych powieści</p>
     ',
     'chomiczek71', DATEADD('HOUR', -11, CURRENT_TIMESTAMP),
     123, 0, 5
   ),
   (
     1235, 'Gen 56',
     '
     <p>Lubisz miksy gatunków? Co byś powiedział* na połączenie biopunk, postapo, military, survival horror i elementy komediowe ? Ja bardzo lubię książki, które mieszają w sobie różne gatunki i widząc taki misz-masz w książce "Gen 56" Adrianny Biełowiec wydanej przez Wydawnictwo Hm postanowiłam sprawdzić, co z tego wyszło, choć gdzieś tam w tyle głowy kołatała się myśl czy nie za dużo tego? Zwłaszcza w tak krótkiej książce?</p>

     <p>Aksel Sikora jest dziewiętnastoletnim szeregowcem. Właśnie trwa czwarta wojna światowa, a on mocno narozrabiał we własnych szeregach; grozi mu więzienie lub udział w kolonizacji obcej planety. Akselowi nie uśmiecha się gnicie w więzieniu, ale druga opcja okazuje się bardziej niebezpieczna niż sobie wyobrażał. Trafia prosto w dżunglę żywych roślin, przerażających stworów i straszliwych hybryd. Trafiają się też ludzie, wrogie nacje . Być może część z nich jest również wewnętrznie potworami, ale skąd chłopak ma wiedzieć czyją stronę ma wybrać, by stanąć po stronie dobra? A że wybrać musi to jest pewne....</p>

     <p>Muszę przyznać, że ta książka była doskonałą rozrywką. O ile trudno było mi się przedrzeć przez militarne perypetie i (na początku) futurystyczne opisy postępu nauki, to później dałam się porwać przygodzie. Jestem pod wielkim wrażeniem wyobraźni autorki - kreatury, które tu dla nas tworzy są naprawdę przerażające i niespotykane! Humor trafia w moje gusta i język - dosadny, ale nie wulgarny. Opisy są jak trzeba - bez dłużyzny, ale dość plastyczne by móc sobie wszystko wyobrazić. No i gdzieś tam jednak jakaś nutka filozofii miga, ponieważ ostateczną zagładę planety może spowodować tylko człowiek, który ma w sobie gen czystego człowieczeństwa, nie ma w sobie skażenia ani mutacji, takich już nie ma wielu. A jakiego wyboru dokona wybraniec? Jeśli chodzi o kosmiczne potwory czuję lekki niedosyt- chciałbym ich więcej, ale muszę przyznać, że mimo krótkiej formy i wielu wątków książka jest idealna w swojej długości- nie jest przeładowana, a jest doskonałą rozrywką na wieczór czy dwa.</p>
     ',
     'chomiczek71', DATEADD('DAY', -6, CURRENT_TIMESTAMP),
     13, 0, 0
   ),
   (
     1236, '40.Raków',
     '
     <p>Jaką narrację wolisz? Pierwszo- czy trzecioosobową?</p>

     <p>Ja przeważnie wolę tę drugą, chyba, że mowa o thrillerach lub kryminałach; wtedy lubię gdy poczynania policji są opisane w trzeciej osobie, a złoczyńca osobiście zdradza nam swoje plany i myśli, lubię kiedy morderca wpuszcza m ie do swojej głowny.</p>

     <p>Absolutne mistrzostwo w takiej narracji osiągnęła Agnieszka Peszek w swojej powieści "40 raków" łącząc w jednej powieści oba rodzaje narracji 🔥! Otóż mamy tu dwoje morderców i rozdziały podzielone między jednego -z narracją trzecioosobową, drugą- z narracją pierwszoosobową i szukających podejrzanych policjantów - znów z narracją trzecioosobową.... A całość jest dynamiczna, pełna akcji i świetnie napisana 🔥🔥.</p>

     <p>W Warszawie giną piękne kobiety, a odnalezione zostają tylko ich fragmenty - większe lub mniejsze. Wszystko wskazuje na seryjnego mordercę, ale czy ma z tym związek morderstwo starszej pani i próba morderstwa jej chorej, niewstającej z łóżka córki? Co z chłopcem, którego naiwność i niewinność została kiedyś wykorzystana? Co z dziewczyną dręczoną, tortutowaną przez tych, którzy powinni ją chronić i kochać? Na koniec czy dadzą sobie radę ze sprawą dwaj młodzi policjanci, przydzieleni do niej z prewencji, którzy z trudem ogarniają własne życie prywatne?</p>

     <p>Muszę przyznać, że tytuł sam w sobie był dla mnie od początku zagadką. Najpierw obstawiałam, że to adres, a ostatecznie muszę przyznać, że dobrany jest idealnie, ale aby to zrozumieć trzeba przeczytać książkę 😁. Najlepiej czytało mi się o poczynaniach mordercy i wyglądałam kolejnych "jego" rozdziałów. Autorka tak prowadziła akcję, że w połowie książki mamy wrażenie, że podała go nam na tacy, ale później co jakiś czas zasiewa niepewność czy to na pewno on? Natomiast morderczyni jest do samego końca tajemnicza. Nie brakuje tu dobrze wyważonych opisów - nie przytłaczają, ale pozwalają zobaczyć miejsca i osoby w każdym szczególe. No i tam gdzie trzeba są odpowiednio krwawe i brutalne, a takie w kryminałach lubię najbardziej! Polecam wszystkim wielbicielom gatunku!</p>
     ',
     'chomiczek71', DATEADD('DAY', -1, CURRENT_TIMESTAMP),
     191, 2, 0
   ),
   (
     1237, 'Przewoźniczka dusz',
     '
     <p>Na samym początku przyznaję, że urban fantasy nie jest moim najukochańszym gatunkiem. Jednak fantastykę kocham całym sercem, mityczne, fantastyczne stwory tym bardziej. Urban fantasy, którego tak nie kocham znam tylko z filmów, więc postanowiłam dać mu szansę w formie książkowej. Co z tego wyszło?</p>

     <p>Myślę, że dobrą decyzją było rozpocząć znajomość z tym gatunkiem od książki autorstwa pani Malwiny A. Tylewicz, gdyż jej pióro urzeka na każdej stronie. Styl jest zarazem lekki, eteryczny, ale też realistyczny w opisach, dzięki czemu miałam wrażenie, że sama przebywam w sytuacjach,o których czytam i znam osobiście postaci występujące w książce. Postaci mamy zarysowane tak, że wiemy kto kim jest i jaki jest, ale opisy nie są nachalne i zostawiają naszej wyobraźni akurat tyle, ile trzeba.</p>

     <p>Aaron jest aniołem stróżem, który za swoje hulaszcze życie został zdegradowany do stróża nocnego. Stracił część swoich magicznych zdolności, a jego obowiązki sprowadzają się do pilnowania snów śpiącej osoby, by nie ukazały jej zbyt wiele z przyszłości. Ale co robić gdy podopieczna prawie w ogóle nie sypia, a w dodatku nie jest tak do końca zwykłym człowiekiem? Nika jest za to odważna, przebojowa i wyszczekana. Trochę raziła mnie w tej dwójce nieporadność i ciapowatość anioła, one raczej kojarzą mi się z silnymi, inteligentnymi istotami, ale z drugiej strony stereotypy są po to, by je łamać. Tutaj są przełamywane również przez to, że im więcej "zakazanych" magicznych istot poznaje nasz anioł (je t ich naprawdę duuużo) tym bardziej chwieje to jego oceną świata i twardą wiarą w podział między dobro, a zło. Być może nie wszystko, co złe z założenia jest takie naprawdę? Fajnym dodatkiem do powieści jest wątek kryminalny. Jest to lekki kryminał, nic bardzo krwawego, ale podnosi emocje i dodaje historii barw.</p>

     <p>Podoba mi się też okładka. Jej mroczność i tajemniczość w zestawieniu z tajemniczym tytułem sprawiła, że chciałam przeczytać tę książkę jeszcze zanim zapoznałam się z opisem. Cieszę się, że coraz więcej mamy samowydawców na naszym rynku książkowym i to z takimi niesztampowymi pomysłami na książki 🖤.</p>

     <p>Książkę otrzymałam z Klubu Recenzenta portalu nakanapie.pl i serdecznie za nią dziękuję.</p>
     ',
     'chomiczek71', DATEADD('DAY', -9, CURRENT_TIMESTAMP),
     56, 0, 0
   ),
   (
     1238, 'Grudniowy dom',
     '
     <p>"Grudniowy dom" Magdy Knedler to lektura, która w pełni zasługuje na uwagę nie tylko w okresie świątecznym, ale przez cały rok. Autorka tym razem przenosi nas w niezwykłą podróż do przeszłości, rodzinnych tajemnic i poszukiwania własnej tożsamości.</p>
     <p>Akcja rozgrywa się na początku grudnia, gdy Kami przybywa do niewielkiej miejscowości, gdzie znajduje się poniemiecki dom, który odziedziczyła po swojej babci. To dziedzictwo staje się dla niej nie tylko miejscem, ale i pretekstem do odkrywania rodzinnych historii skrywających się za zamkniętymi drzwiami domu. W świecie pełnym wspomnień Kami poszukuje odpowiedzi na pytania dotyczące swojego dziadka i tajemnic skrzętnie ukrywanych przez babcię. Ta sekretna spuścizna staje się dla dziewczyny okazją do zrozumienia swojej tożsamości, a także do napotkania miłości, która być może otworzy nowy rozdział w życiu Kami. Jednakże, droga do odkrycia prawdy nie jest łatwa, a mistrzowsko skonstruowane przez babcię kolejne zagadki przypominają klasyczny kryminał.</p>
     <p>Powieść nie sprowadza się jedynie do rodzinnych tajemnic. To także historia o odnalezieniu siebie i szansie na nowy start. Kami, mimo sukcesów zawodowych, zmaga się z wewnętrznymi niepewnościami. Dziedzictwo, jakie otrzymuje, staje się dla niej nie tylko dziedzictwem materialnym, ale i duchowym.</p>
     <p>Magda Knedler zręcznie buduje atmosferę tajemnicy, trzymając czytelnika w napięciu od pierwszej do ostatniej strony. Jej narracja pełna jest detali, które ożywiają opisy miejsc i postaci. Choć tematycznie związana z okresem grudnia, powieść nie ogranicza się jedynie do świątecznego klimatu. Autorce udało się uniknąć pułapki przesłodzenia i stworzyć opowieść, która porusza uniwersalne tematy. Mimo że nie brak w tej powieści trudnych tematów - wojna, śmierć, strata, żałoba, porzucenie - pozostaje ona pełną nadziei historią, o tym, że każdy z nas może znaleźć swoje miejsce na ziemi, przyjaźń i miłość.</p>
     <p>“Grudniowy dom” nie tylko przyciąga czytelnika swoją atrakcyjną fabułą, ale też porusza, wzrusza, wreszcie przytula do serca. A jednym z najmocniejszych elementów książki są relacje między postaciami. Głęboka więź między babką a wnuczką, trudne relacje przyjacielskie i subtelnie rozwijający się wątek miłosny - to wszystko sprawia, że bohaterowie stają się bliscy czytelnikowi. Knedler doskonale oddaje złożoność ludzkich emocji, ukazując, że nawet najbliżsi sobie ludzie mają swoje tajemnice i trudne sekrety.</p>
     <p>Magda Knedler, jak zawsze, czerpie z historii, tym razem w powieści znajdziemy odwołania do trudnej historii Dolnego Śląska oraz wspomnienia z I wojny światowej, przedwojennej i powojennej Warszawy, Wrocławia, a także historię pewnego dziś już zapomnianego malarza. Autorka umiejętnie łączy te wątki, nadając powieści dodatkowy muzyczno-malarski wymiar. Muzyka i malarstwo pięknie łączą się ze sobą, stając się bardzo ważną częścią fabuły. A te delikatne i subtelne, artystyczne opisy świadczą o wrażliwości autorki i jej wyjątkowych umiejętnościach pisarskich.</p>
     <p>"Grudniowy dom" to zdecydowanie więcej niż tylko świąteczna opowieść. Magda Knedler, poprzez wciągającą fabułę i głębokie charakterystyki postaci, tworzy powieść, która pozostaje w pamięci czytelnika. To lektura, która porusza, skłania do refleksji i zostawia uczucie satysfakcji po ostatniej stronie</p>
     ',
     'madalenakw', DATEADD('DAY', -3, CURRENT_TIMESTAMP),
     123, 1, 3
   ),
   (
     1239, 'Dwadzieścioro czworo oczu',
     '
     <p>Literatura japońska oferuje możliwość zanurzenia się w zupełnie innym świecie, który często różni się od zachodnich konwencji literackich. Unikalne spojrzenie na życie, filozofia i wartości kulturowe stanowią fascynujące doświadczenie dla czytelników. Tak było i w przypadku mojej ostatniej lektury, książki “Dwadzieścioro czworo oczu" Sakae Tsuboi.

     <p>Akcja powieści obejmuje okres od późnych lat 20. do końca II wojny światowej, ukazując życie codzienne wiejskiej społeczności na tle globalnych wydarzeń.

     <p>Za sprawą tej właśnie książki przenosimy się w odległe lata 20. XX wieku do japońskiej wioski, gdzie młoda nauczycielka, Hisako Ōishi, rozpoczyna pracę i nawiązuje niezwykłą więź ze swoimi dwunastoma uczniami. Już samo pojawienie się nauczycielki wywołuje niezłe zamieszanie w obrośniętej tradycjami i konwenansami małej społeczności. Przyjeżdża bowiem na rowerze(!), ubrana, zdaniem niektórych, zbyt nowocześnie. Mimo początkowej niechęci Hisako zdobywa zaufanie uczniów i ich rodziców, nawiązuje serdeczne relacje. Wydaje nam się zatem, że książka będzie dość przyjemną opowieścią o wiejskim życiu w Japonii, zajęciach mieszkańców, ich codziennych troskach, podejściu do wychowaniu dzieci.</p>

     <p>Stopniowo zmienia się narracja książki, nie tylko za sprawą przyspieszenia akcji, jej fragmentaryczności, ale głównie z powodu wprowadzenia innej tematyki do jej treści. Czytamy więc o wzroście nastrojów nacjonalistycznych, wojnie chińsko-japońskiej, mobilizacji, indoktrynacji społeczeństwa. I w tych momentach książka przechodzi w poruszający obraz zwykłych ludzi skonfrontowanych z tragicznymi konsekwencjami wojny.</p>

     <p>Wojna wpływa też na życie głównej bohaterki, Hisako Ōishi. Z upływem lat ta dojrzała kobieta, matka dwójki synów, jest coraz przytłoczona trudnymi doświadczeniami. Przede wszystkim Ōishi ma świadomość ogromu zła, jakie niesie wojna. Stąd jej pacyfistyczne podejście do wysyłania młodych mężczyzn na front, co staje się przyczyną dramatu wielu rodzin, pozbawionych mężów, ojców, braci. Nauczycielka na pewno nie jest już tą samą osobą, jaką była na początku swojej pracy. Nadal jednak utrzymuje kontakt ze swoimi uczniami, uważnie śledzi ich losy, przejmuje się nimi. Jej byli podopieczni to przecież już nie dzieci, które niefrasobliwie wybrały się dawno temu na wycieczkę, by ją, chorą, odwiedzić w domu. Zmienili się z beztroskich uczniów w dojrzałych dorosłych. Śledzimy ich wewnętrzny rozwój i zmiany poglądów, a losy dwunastu uczniów ukazują realny wpływ wojny na ich życie. Książka rzuca światło na niełatwe wybory, przed którymi stawali mieszkańcy wioski oraz na sposób, w jaki konflikty wpływają na japońskie społeczeństwo.</p>

     <p>Niezwykle poruszające są opisy zróżnicowanych reakcji ludzi na udział w wojnie, zwłaszcza perspektywa rodzin, które utraciły bliskich w konflikcie. Autorka podkreśla, że nawet najmniejsze społeczności odczuwają ogromne skutki globalnych wydarzeń, a wojna wszędzie, nawet w maleńkiej japońskiej wiosce, gdzieś na drugim końcu świata, ma taki sam okrutny wymiar i tak samo niesie z sobą głód, tragedie rodzin, śmierć i zniszczenia.</p>

     <p>Książka, mimo że opowiada o wojnie, unika frontowych scen, epatowania wojennym okrucieństwem, skupiając się raczej na niezwykłej kobiecej perspektywie. Autorka podkreśla trudy życia kobiet zarówno przed, jak i w trakcie wojny, ukazując ich wewnętrzną siłę i wytrwałość.</p>

     <p>"Dwadzieścioro czworo oczu" to nie tylko nostalgiczna podróż do przeszłości, ale także głęboko poruszająca opowieść o życiu wiejskiej społeczności, która musi stawić czoła tragedii wojny. Książka emanuje ciepłem relacji między nauczycielką a uczniami, a jednocześnie przedstawia trudne wybory i ich bolesne konsekwencje. Autorka zręcznie połączyła elementy pacyfistycznego przesłania z kameralnym portretem życia wiejskiego, tworząc niezwykle subtelny, a jednocześnie niezapomniany obraz tragicznych losów zwykłych ludzi.</p>

     <p>Polecam tę niezwykłą, minimalistyczną w formie, ale budzącą emocje książkę, nie tylko miłośnikom japońskiej literatury, ale wszystkim lubiącym naprawdę dobrą literaturę.</p>
     ',
     'madalenakw', DATEADD('DAY', -9, CURRENT_TIMESTAMP),
     21, 0, 0
   ),
   (
     1240, 'Kraina Chichów',
     '
     <p>"Kraina Chichów" to niezwykła powieść Jonathana Carrolla, która łączy w sobie elementy humoru i horroru, tworząc fascynującą mieszankę.</p>
     <p>Bohaterem tej książki uczynił Carroll Toma Abbeya, młodego nauczyciela, który wyrusza śladem swojego ukochanego pisarza, Marshalla Francea i trafia do jego rodzinnego miasteczka Galen. Tam zamierza napisać biografię pisarza. W tej niecodziennej wyprawie towarzyszy bohaterowi Saxony, podobnie jak Tom zakochana w twórczości Marshalla Francea. Tom zauważa, że mieszkańcy Galen, zachowują się co najmniej dziwnie i ma wrażenie, że coś przed nim ukrywają. Wraz z rozwojem fabuły główny bohater odkrywa sekrety związane ze swym ulubionym pisarzem, samym miasteczkiem i jego mieszkańcami.</p>

     <p>Dla mnie jednym z fascynujących aspektów "Krainy Chichów" jest przedstawienie Galen, miejsca, gdzie ludzie zrzekli się swojej wolności i odpowiedzialności, pozostawiając decyzje o swoim życiu w rękach innych. To nawiązuje do ważnych kwestii społecznych i politycznych, wskazując na ryzyko utraty indywidualności i wolności.</p>

     <p>Książka skupia się również na tematach artystycznego tworzenia i zdolności pisarza do przekształcania słów w rzeczywistość. Czy taka moc jest wspaniała czy przerażająca?</p>

     <p>W "Krainie Chichów" Carroll tworzy surrealistyczny świat, gdzie pojawiają się mówiące zwierzęta, dybuki i dialogi z samym sobą sprzed wielu lat, pokazując że każdy ma swoją własną rzeczywistość i sposób postrzegania świata. Książka sugeruje, że różnice w percepcji i wrażliwości mogą prowadzić do nieszczęścia, a nie szczęścia.</p>

     <p>Autor eksperymentuje z gatunkiem literackim, łącząc elementy powieści obyczajowej, suspensu i grozy. Subtelność w opisie niewyjaśnionych zdarzeń sprawia, że czytelnik pozostaje w niepewności, co do natury wydarzeń, co tylko zwiększa napięcie. Przywodzi to na myśl twórczość Stephena Kinga, który również potrafi budować napięcie i prowadzić czytelnika przez małe miasteczka, pełne tajemniczych wydarzeń.</p>

     <p>Zakończenie "Krainy Chichów" może być przewidywalne, ale jednocześnie jest zaskakujące i pozostawia czytelnika z uczuciem przerażenia.</p>

     <p>"Kraina Chichów" to pozycja, która niejednoznacznie wpisuje się w gatunki literackie, ale to właśnie czyni ją tak fascynującą. Dla miłośników tajemnicy, subtelnej grozy i psychologicznych zagadek, ta powieść będzie stanowi niezwykłe doświadczenie i na pewno zostanie w pamięci czytelnika na długo.</p>
     ',
     'madalenakw', DATEADD('DAY', -5, CURRENT_TIMESTAMP),
     221, 2, 12
   ),
   (
     1241, 'Wierzyliśmy jak nikt',
     '
     <p>Książka "Wierzyliśmy jak nikt" Rebecci Makkai to poruszająca i niezwykle ważna opowieść, która przedstawia środowisko homoseksualistów w Ameryce w latach 80-tych, w okresie, gdy epidemia AIDS zaczęła siać spustoszenie. Autorka wnikliwie ukazuje życie głównych bohaterów w tym trudnym czasie, przynosząc czytelnikom wyjątkową historię - o chorobie, walce o przetrwanie, o stracie, historię pełną cierpienia i strachu, ale i przyjaźni i miłości.</p>

     <p>Książka w sposób autentyczny oddaje atmosferę tamtych lat, ukazując narastający strach i dezinformację w związku z AIDS. Bohaterowie są dobrze wykreowani, a ich emocje i przeżycia są głęboko przemyślane. Wśród nich na pierwszy plan wysuwa się Yale, który właśnie stracił przyjaciela - Nica. AIDS wyniszczyło jego organizm, pozostawiając w żałobie jego najbliższych – siostrę Fionę, Richarda, Charliego, Terrence’a i Teddy’ego. Jest rok 1985 i świat nie zna żadnego skutecznego leku na AIDS. W takich oto okolicznościach będziemy towarzyszyć Yale’owi, przeżywając wraz z nim radości i smutki, ciesząc się jego pracą w galerii sztuki oraz wraz z nim martwiąc się o mniej rozważnych przyjaciół, którzy wolą cieszyć się życiem, nie zważając na konsekwencje.</p>

     <p>Jednocześnie z historią Yale’a śledzimy losy Fiony, ale akcja tych fragmentów książki toczy się wiele lat później, bo w 2015 roku. Fiona przylatuje do Paryża w poszukiwaniu śladów swej jedynej córki. Bardzo pragnie ją odnaleźć i odbudować rodzinną relację. Przypadkiem trafia na dawno niewidzianego znajomego z lat 80-tych z Chicago. Tym samym w trakcie lektury powoli odkrywamy losy przyjaciół zarówno w chwili, gdy są młodzi i pełni radości życia, jak i po wielu latach we wspomnieniach Fiony.</p>

     <p>Dla mnie książka Makkai była przede wszystkim opowieścią o sile przyjaźni, potrzebie więzów rodzinnych, trudnych relacjach między rodzicami a dorosłymi dziećmi. To też opowieść o tym, że nigdy nikogo nie zna się do końca i że nawet najbliższy nam człowiek może zawieść. Być może trochę przydługa, bo ma ponad 600 stron, momentami przegadana, to i tak sądzę, że to wartościowa lektura, bo jednym z najważniejszych aspektów tej książki jest jej zdolność do budowania empatii. Czytelnik zostaje wciągnięty w historię bohaterów i odczuwa ich radości, smutki i obawy. To nie tylko opowieść o AIDS, ale także o miłości, determinacji i solidarności.</p>

     <p>Mimo że temat AIDS i jego wpływu na społeczność homoseksualistów jest trudny, autorka potrafi dodać książce odrobinę nadziei i optymizmu. "Wierzyliśmy jak nikt" to lektura, która może otworzyć oczy czytelników na ważność równości i wspierania tych, którzy borykają się z dyskryminacją.</p>

     <p>Podsumowując, książka "Wierzyliśmy jak nikt" to literatura, która porusza i inspiruje do refleksji nad ludzką kondycją. To lektura, którą na pewno warto przeczytać.</p>
     ',
     'madalenakw', DATEADD('DAY', -1, CURRENT_TIMESTAMP),
     10, 0, 0
   ),
   (
     1242, 'Schronisko, które przestało istnieć',
     '
     <p>Ostatnie dni wakacji to dobry czas, by udać się na górską wędrówkę. Zapraszam zatem w Karkonosze. a to za sprawą książki Sławomira Gortycha “Schronisko, które przestało istnieć”.</p>
     <p>Akcja powieści rozpoczyna się w momencie, gdy jej główny bohater, Maksymilian Rajczakowski, wyrusza na urlop właśnie w Karkonosze, do Śnieżnych Kotłów. To tam w tragicznych okolicznościach zginął jego ulubiony wujek, Artur, który porzucił dochodową karierę na rzecz zakupu i odbudowania nieczynnego schroniska w Śnieżnych Kotłach. Maks zamierza odkryć, co skłoniło wuja do takiej decyzji i zamieszkania w odludnym miejscu, w środku smaganych wiatrem i śniegiem gór. Nie spodziewa się, że tam na jaw wyjdą głęboko skrywane rodzinne tajemnice dotyczące nie tylko Artura, ale i jego samego, z tym że te sekrety wymagają cofnięcia się do czasów końca II wojny światowej i tuż powojennych. W tle tych tragicznych wydarzeń są także ukryte skarby pozostawione przez uciekających Niemców w 1945 roku. A te wszystkie wydarzenia rozgrywają się pośród cudnej urody górskiej przyrody.</p>

     <p>Książka Sławomira Gortycha zabiera nas bowiem w magiczną wędrówkę po Karkonoszach, pokazuje ich piękno, potęgę, majestat. Zauroczyłam się opisami karkonoskich szczytów, szlaków, zabytków. Przy okazji poznałam też wiele legend związanych z tymi terenami, no i baśniową ( albo i nie, zdaniem niektórych bohaterów książki) postać Liczyrzepy vel Karkonosza. Odnalazłam także w powieści kilka miejsc, w których nie tak dawno byłam i miałam je jeszcze w pamięci.</p>

     <p>Zainteresowała mnie też trudna przeszłość tych Ziem Odzyskanych, nieprzypadkowo zwanych również Dzikim Zachodem. Konflikty narodowościowe między Polakami, Niemcami a Czechami, napływ osiedleńców z niemalże całej Europy, dywersyjna działalność Werfwolfu, tak wyglądała codzienność w tamtych czasach. A za tymi suchymi stwierdzeniami kryły się prawdziwe dramaty ludzi.</p>

     <p>“Schronisko.. “ to zatem spora dawka wiedzy historycznej i chwała autorowi za to. Może tylko momentami ta wiedza była przekazywana w sposób przypominający Wikipedię. Trochę sztywne były również dialogi między bohaterami, a im samym brakło naturalności i oryginalności.</p>

     <p>W sumie debiut powieściowy Sławomira Gortycha podobał mi się, przede wszystkim z uwagi na osadzenie akcji w pięknych Karkonoszach, których dostojną urodę autor tak pięknie oddał.</p>
     <p>A może znajdzie się ktoś, kto przywróci dawną świetność schronisku nad Śnieżnymi Kotłami. Chętnie bym je odwiedziła, a może spotkałabym tam Liczyrzepę…</p>
     ',
     'madalenakw', DATEADD('HOUR', -20, CURRENT_TIMESTAMP),
     102, 2, 3
   ),
   (
     1243, 'Schronisko, które przetrwało',
     '
     <p>“Schronisko, które przetrwało” Sławomira Gortycha to kolejna , po “Schronisku, które przestało istnieć” książka z tzw. serii karkonoskiej. Oczywiście, obydwie pozycje można czytać niezależnie od siebie.</p>

     <p>Tym razem bohaterem wszystkich wydarzeń staje się schronisko Odrodzenie, które teraz służy turystom wędrującym po Karkonoszach, w przeszłości, w czasach II wojny światowej pełniło funkcję ośrodka Hitlerjugend. Schroniskiem zarządza Justyna Skała, przyjaciółka znanej nam z pierwszego tomu Marty i Maksymiliana. Justyna, korzystając z urlopu, wybiera się do Jeleniej Góry, ale niespodziewanie wraca do schroniska, w którym grasują włamywacze. Czego szukali i czy ma to związek z ponurą przeszłością tego miejsca? Jaką tajemnicę skrywa schronisko?</p>

     <p>Fabuła tej powieści jest nielinearna, toczy się bowiem w dwóch planach czasowych - mamy wątki sięgające czasów II wojny światowej i okresu tuż po wojnie oraz na początku XXI wieku. Wątki te nakładają się na siebie i wzajemnie uzupełniają, by ostatecznie wyjaśnić wszystkie tajemnice i zagadki z przeszłości, a było co wyjaśniać.</p>
     <p>Książka, podobnie jak wcześniejsza, trzyma w napięciu, a jej surowy, górski klimat doskonale wpisuje się w nastrój powieści, w której pojawia się wiele wątków z czasów wojennych i trudnych lat tuż powojennych. Wśród nich moją uwagę zwrócił wątek obozów organizowanych w karkonoskich schroniskach dla chłopców z Hitlerjugend. Wychowywano ich w duchu bezwzględnego posłuszeństwa, ślepego wykonywania rozkazów i surowej dyscypliny. Kolejny wątek poruszany w powieści to losy zbrodniarzy wojennych, którzy ukrywali się w górach, chowając kosztowności zrabowane podczas wojny.</p>
     <p>Jeśli do tego dołożymy sensacyjne wydarzenia, tajemnicze zgony, strzały, wyścigi samochodowe w górskiej scenerii to otrzymamy powieść w iście bondowskim stylu.</p>

     <p>Ciekawa fabuła z dramatycznymi zwrotami akcji jest dużym atutem tej książki, oczywiście oprócz opisów pięknych, karkonoskich krajobrazów czy ciekawych miejsc. Myślę tu nie tylko o Schronisku Odrodzenie, ale i o muzeum Gerharta Hauptmanna. Chętnie wybrałabym się więc w Karkonosze, by przejść się śladami bohaterów ,,Schroniska, które przetrwało’’, a was zapraszam do lektury książki Sławomira Gortycha.</p>
     ',
     'madalenakw', DATEADD('HOUR', -10, CURRENT_TIMESTAMP),
     45, 0, 3
   );