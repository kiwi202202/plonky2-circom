// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Groth16Verifier {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 20491192805390485299153009773594534940189261866228447918068658471970481763042;
    uint256 constant alphay  = 9383485363053290200918347156157836566562967994039712273449902621266178545958;
    uint256 constant betax1  = 4252822878758300859123897981450591353533073413197771768651442665752259397132;
    uint256 constant betax2  = 6375614351688725206403948262868962793625744043794305715222011528459656738731;
    uint256 constant betay1  = 21847035105528745403288232691147584728191162732299865338377159692350059136679;
    uint256 constant betay2  = 10505242626370262277552901082094356697409835680220590971873171140371331206856;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 2612686811214609480670053764513816389788945577677647535775077329861180449147;
    uint256 constant deltax2 = 9010503137851876203165844182029385277856469073426300024515015311130429591403;
    uint256 constant deltay1 = 13890068965938333823966939774114376457638614465634282657898482331480748475376;
    uint256 constant deltay2 = 13591259927406102792187800510149322956811371776242458660540019359524890027264;

    
    uint256 constant IC0x = 1523838248718632230107473895080867109513404705134376042051223208938728155022;
    uint256 constant IC0y = 16310347306047499829190223775648682773123875508872203582384796596713668835391;
    
    uint256 constant IC1x = 21769666751346916987142292468403295079327219085637473107862861498225303918352;
    uint256 constant IC1y = 14838934210338641024175539288879834007299867925709070538619504281679276626149;
    
    uint256 constant IC2x = 14139842751554607893494477506648023258093519078814571610420151631639938173227;
    uint256 constant IC2y = 6025509619169106086873089734092529510692081679534025622180659633757625546743;
    
    uint256 constant IC3x = 2248194660819969556914524119063679543725083604266114055525480751504918080917;
    uint256 constant IC3y = 9729657161929338069827150644545968338141270174735208375818474018644406967548;
    
    uint256 constant IC4x = 17859750289524953869496330309063218366466483960555690490296464424250437642111;
    uint256 constant IC4y = 21763601663391808496663809291325797637021586074987510147027940576836458437406;
    
    uint256 constant IC5x = 13361366332416174805965856099244053684541151469844036185125467175006644788379;
    uint256 constant IC5y = 3359908562013688401187505457140609854579217222427343673066514197289164039851;
    
    uint256 constant IC6x = 11499790651752452520181877569128936661717931014522524102858233513369197586941;
    uint256 constant IC6y = 17142967992357623376386471073231502519004083922073899089763080772405865282074;
    
    uint256 constant IC7x = 11624989333951929537657212578275838565015014228807721154720254565567601850968;
    uint256 constant IC7y = 10508958357794821417335988004574644689268735744452570736406511751517335904688;
    
    uint256 constant IC8x = 4225587732317746786714262416101626403929682717335692508781725890577683042024;
    uint256 constant IC8y = 10755540577482792300538656773155517403213127027185906819348135322726279479405;
    
    uint256 constant IC9x = 5391011186462735837682719406923036790011509834143781387347813528372891285965;
    uint256 constant IC9y = 19613449256439846308891837534908461122678538087261471863511130141191454319606;
    
    uint256 constant IC10x = 9753317564351936447219316424184227025279438940955212588452042655202872295522;
    uint256 constant IC10y = 11028893137024811921356905635557065747908082644117672477794438755125245057336;
    
    uint256 constant IC11x = 18172278038415689016938727959385085270283666461182024024516102153061069711663;
    uint256 constant IC11y = 2531324222404791140411667068715050185596318596359382216113782274912537718955;
    
    uint256 constant IC12x = 16303280292970785688326486052722514674826016442589400059561848462267356782982;
    uint256 constant IC12y = 12329405389806458175731378050121072061266757297649575363005087250187883794855;
    
    uint256 constant IC13x = 1975900546313764703458936720866758048597998604010609317766051767334015527601;
    uint256 constant IC13y = 2874892117526084243194135344962727811494605091143399118100925388580451932612;
    
    uint256 constant IC14x = 14835139190010310673070793898628922076767764657249645782878754103180374319256;
    uint256 constant IC14y = 6901645688312036759572818549648379485939469284150709609074469700149573865609;
    
    uint256 constant IC15x = 19508571998250174949838199648042641481984167494177405048151793044482478326793;
    uint256 constant IC15y = 1008043576966914754772108383233985568690371142986502621822311014652283499859;
    
    uint256 constant IC16x = 16804195416619799978881765287855914028177259201727594881348224771784988327105;
    uint256 constant IC16y = 12127609646916950375487516188262474328169756924611572549789485646616466338412;
    
    uint256 constant IC17x = 12894804404073340036861120355448674987904507841988778889003553288312922505992;
    uint256 constant IC17y = 21280967755878690292769611094049445628801292688265653190426934827499624512185;
    
    uint256 constant IC18x = 724775525772517634223579333610313991281351786433760044528919670689892042658;
    uint256 constant IC18y = 14997874227495716122891146917299652610675458688898182764642008707304188632558;
    
    uint256 constant IC19x = 18434589095982470470560816095932197670477629267251837627463420213753949346536;
    uint256 constant IC19y = 20153796217863426424768588052285794650418183657272558847026530671629236143523;
    
    uint256 constant IC20x = 19729885957305112749156964310462629320503824738710330099169204059667561796870;
    uint256 constant IC20y = 4697748871176612594813544939183716306573315519068440774434624638836499613930;
    
    uint256 constant IC21x = 3785223178998268578066407659467973689525978804588577445931320305955573286102;
    uint256 constant IC21y = 3948735947408689581134285721969388303278206846040747258377386113747634213678;
    
    uint256 constant IC22x = 11842002252261234713113736090547503061470294855691321220037821439473837614589;
    uint256 constant IC22y = 10456668408822810640896142693787363941464162651045759463839219478602221834586;
    
    uint256 constant IC23x = 426760236899312834163125248249646321909101283540287388491034097690260846676;
    uint256 constant IC23y = 15989997523911337449116317783584901573305557306908584334323773258542256879708;
    
    uint256 constant IC24x = 13410617198921344515299889485657399188378641703739503311600302433076848036494;
    uint256 constant IC24y = 985190265411554851384633940852660187546836874615804020584097524703622914696;
    
    uint256 constant IC25x = 11968359235988819289725456551155345331107861177674131414414659632482828689214;
    uint256 constant IC25y = 6258448654975109918180550870891480020534435942074969446776382874518723577115;
    
    uint256 constant IC26x = 15251558267395891629111645122324250782231276016682034805485726677049588846371;
    uint256 constant IC26y = 8979693186680171851442311823508869736358801141277349682925671443093568562042;
    
    uint256 constant IC27x = 19297499196853048055082870024789031339782643758065009077192489372875918434796;
    uint256 constant IC27y = 13221562771397822546505702787034060890422192958368415035803963275025873250421;
    
    uint256 constant IC28x = 8762721655502356304910157723216643168548137461665976831589281846598733745770;
    uint256 constant IC28y = 17622644147832549669146625406774432265833619335978998842413073366193657258792;
    
    uint256 constant IC29x = 6650816804522378048451660092732473153439119860739208246586355982136271338076;
    uint256 constant IC29y = 10309733871714964834780885244172886750646184774823995672050503147421312039957;
    
    uint256 constant IC30x = 12758939059120460309232240336334878727357930252214443641926565820699016259574;
    uint256 constant IC30y = 13733458203902889948821096830000676253356652225295546674039631039725657704348;
    
    uint256 constant IC31x = 4214968667854357180660960169000029162557849079408443116456074839755278636666;
    uint256 constant IC31y = 16445283343296419349684131125084462557735240268789656810385422284186368007468;
    
    uint256 constant IC32x = 8123036358429873600498169506138087701736536687996927362526675185967162691902;
    uint256 constant IC32y = 21186976753134475417328353869385004220108759696666384707441816618921185957379;
    
    uint256 constant IC33x = 12995402131978824843274209252420400949443921117219594622588732893920459848655;
    uint256 constant IC33y = 10748938259921684167358927553358142584521212274569293435311283027948981531427;
    
    uint256 constant IC34x = 14936827948117731145675096665836707791243872866557135380421053402956871901757;
    uint256 constant IC34y = 1703062354201602061123573384330884735323110630018197823392160419859879342028;
    
    uint256 constant IC35x = 9676488025797404054342061237780561731890281304933178395745795062152793144063;
    uint256 constant IC35y = 15460930111887099878289850616758650328999436672652951701954251698946414864644;
    
    uint256 constant IC36x = 14308807135956944128176115206376111319977760551476288031872080237187363654157;
    uint256 constant IC36y = 19698191188017687983587865814647637363580904279976015676952587134182830826042;
    
    uint256 constant IC37x = 14781775842603972877744709319494648419399479008270901499978020063031374169369;
    uint256 constant IC37y = 6742861544667479648232584654064705181673491826355140797412945043486255778063;
    
    uint256 constant IC38x = 1481863185939026758996989856966114440424370099219777529357034053953567567480;
    uint256 constant IC38y = 18812140826788499793822592483586955580589391814966125460759269097378999437314;
    
    uint256 constant IC39x = 20198531177611546438885811195514925129677292535178824321230010990436196565682;
    uint256 constant IC39y = 10698930936334928710522851647803884255485177324590175737576581499295368726203;
    
    uint256 constant IC40x = 20445685061590900639960554403365839184593592201477703387103082335766278810737;
    uint256 constant IC40y = 681428547394512260547422274642346518975053936227540090415800164137284307508;
    
    uint256 constant IC41x = 793169261634093064645135844290097923131799325996210491188572381567980544943;
    uint256 constant IC41y = 16373082781154395662655289519341567307272657622052959489061980571348163267384;
    
    uint256 constant IC42x = 9189474736546537902724370917682792749404111105763674117850602442480266804353;
    uint256 constant IC42y = 11115798715617131600995868632920401555543695805710266425409998086199444067367;
    
    uint256 constant IC43x = 9474126885045049806785292531770578379059150083991872800458709235906998310977;
    uint256 constant IC43y = 19497947942796146045422706782370808757702420124978348695040711416888745312153;
    
    uint256 constant IC44x = 600055611967996979735701764982705240820834459648222031694665588854746406625;
    uint256 constant IC44y = 18558449716842291566307019177986146601001994284302723226356714408630859380124;
    
    uint256 constant IC45x = 14525905705955713302038072997276804410723144301390139769705218568585806126862;
    uint256 constant IC45y = 21012987856491059079807433508473533287663426759709983568012221917125188032540;
    
    uint256 constant IC46x = 18085545883710407448744898059386770599200626105342727016020475401802433227810;
    uint256 constant IC46y = 16413755750884739462701495995420051932740933760619540637269314300553237606435;
    
    uint256 constant IC47x = 16504965912045792676022586169143732920813863000874391761320574488916420790405;
    uint256 constant IC47y = 1722644796490331220892831343481494005626598566297344235520442225507587615935;
    
    uint256 constant IC48x = 4390112974235644235764188005177171401635632309587852636651542346614873535979;
    uint256 constant IC48y = 14064389028782068854777937553002426457590440928580540068037705856484513751853;
    
    uint256 constant IC49x = 3436285179920532403848876872893661753127805431682053880886272705628578400543;
    uint256 constant IC49y = 4182244178228696050421202011859691946982096151729561850522544422380675876162;
    
    uint256 constant IC50x = 17188308087700306327097670470026849073188007635971907426270040776659222666514;
    uint256 constant IC50y = 10689524741102415022461937495037661940005021562934252240720331563168009125240;
    
    uint256 constant IC51x = 20990259315914204283309618799353758941973019010785665585917035247264753176100;
    uint256 constant IC51y = 18302026513916791119686896768166204508966914447190030998526354504348716236887;
    
    uint256 constant IC52x = 21224144514529557363318181201481070145222090305391066905059784792621581763482;
    uint256 constant IC52y = 16633401995526944458297382645636007056878697341051045812462485737510715306553;
    
    uint256 constant IC53x = 5750808726125013099332604039701791423364171272350383532382297077043379435171;
    uint256 constant IC53y = 3833560406328482435502175463633327533241915159408792290606821449144487003060;
    
    uint256 constant IC54x = 812932505649026268792623799246434881059371751999763717092414802933234492648;
    uint256 constant IC54y = 7575119795148263698043046837686844860908369629105497084058286915366452583339;
    
    uint256 constant IC55x = 14787114417601711747482375237523031119925143852359381689729976528545005017867;
    uint256 constant IC55y = 9213370666107211167576917234298250039930214718858664183268341317256658579398;
    
    uint256 constant IC56x = 6314675315133687339848381723264789950005749707111772079056725655892256278622;
    uint256 constant IC56y = 607138008350109587138633646801959286794431006067575914975973423738289885031;
    
    uint256 constant IC57x = 3348387916154161318280895667457568226544770110662722562021957145879722996047;
    uint256 constant IC57y = 20664306336967660763206305350178588668700572326087858651491257415631205547925;
    
    uint256 constant IC58x = 5061381211088134699519004523658707792060787364935117593229883779482606308361;
    uint256 constant IC58y = 6113963189404645280455158465829912775842298456522107211469894835139937173318;
    
    uint256 constant IC59x = 7989248344563730992126045971537815864476923230689119848853485485715716416911;
    uint256 constant IC59y = 1419907454322265268066789162040769175424467509898580379168518535892920763176;
    
    uint256 constant IC60x = 11089550735934100050204518092395708728663933227629789735984511755249356927395;
    uint256 constant IC60y = 18041950688013693720612719345273682110186284334454869649401732286059620758680;
    
    uint256 constant IC61x = 20033157239629037397070799923184245975808589602574551792645216655232797718085;
    uint256 constant IC61y = 12031960317866064556760835356805558186812914055036132760601139525448394263997;
    
    uint256 constant IC62x = 11755152001432159907025296712089950936799871627816737602868926314025951925288;
    uint256 constant IC62y = 6008608426682214402389214070264814603116287557990600621283131800415400860017;
    
    uint256 constant IC63x = 11359255578388971899051313556817455787453568026525308941325448821225697614325;
    uint256 constant IC63y = 16940481330396416146352822634934729118722030156932882371373661330106706256626;
    
    uint256 constant IC64x = 9838530465364070390472061430015342478732422265468045735760627217383735119441;
    uint256 constant IC64y = 10684656758673454775926494165787766881360435059568439611343846232638412224458;
    
    uint256 constant IC65x = 4386235701960495646384075008095372733636456471277160586914720275232734954546;
    uint256 constant IC65y = 8687551433985765852188439652723972252970819649615919314346746577397878295207;
    
    uint256 constant IC66x = 15370486478704944856232755400667313210444403586683211470602807080385930643831;
    uint256 constant IC66y = 12836525745308172014277514508121006455455450325993461895680197228809668679715;
    
    uint256 constant IC67x = 10759020806885070148909666999269024656902008734308164828000032485407910609773;
    uint256 constant IC67y = 13158477632445351869330728600852579185154418949585763702369328385688387114824;
    
    uint256 constant IC68x = 1238265175660254155441441980971563282870965703480251178320499984462467370349;
    uint256 constant IC68y = 5606675186248422786228175517186327003012963442017991030604676547721982771866;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[68] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, q)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                
                g1_mulAccC(_pVk, IC68x, IC68y, calldataload(add(pubSignals, 2144)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            
            checkField(calldataload(add(_pubSignals, 2144)))
            
            checkField(calldataload(add(_pubSignals, 2176)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
