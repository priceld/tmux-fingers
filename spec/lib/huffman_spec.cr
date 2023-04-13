require "spec"
require "../../lib/huffman"

expected_5 = [
  "s",
  "d",
  "f",
  "aa",
  "as",
]

expected_50 = [
  "aaa",
  "aas",
  "aad",
  "aaf",
  "asa",
  "ass",
  "asd",
  "asf",
  "ada",
  "ads",
  "add",
  "adf",
  "afs",
  "afd",
  "aff",
  "saa",
  "sas",
  "sad",
  "saf",
  "ssa",
  "sss",
  "ssd",
  "ssf",
  "sda",
  "sds",
  "sdd",
  "sdf",
  "sfa",
  "afaa",
  "afas",
  "afad",
  "afaf",
  "sfsa",
  "sfss",
  "sfsd",
  "sfsf",
  "sfda",
  "sfds",
  "sfdd",
  "sfdf",
  "sffa",
  "sffs",
  "sfff",
  "sffda",
  "sffds",
  "sffdf",
  "sffdda",
  "sffdds",
  "sffddd",
  "sffddf",
]

expected_alot = [
  "aaaa",
  "aaas",
  "aaaf",
  "aasa",
  "aass",
  "aasd",
  "aasf",
  "aada",
  "aads",
  "aadd",
  "aadf",
  "aafa",
  "aafs",
  "aafd",
  "aaff",
  "asaa",
  "asad",
  "asaf",
  "assa",
  "asss",
  "assd",
  "assf",
  "asda",
  "asds",
  "asdd",
  "asdf",
  "asfa",
  "asfs",
  "asfd",
  "asff",
  "adaa",
  "adad",
  "adaf",
  "adsa",
  "adss",
  "adsd",
  "adsf",
  "adda",
  "adds",
  "addd",
  "addf",
  "adfa",
  "adfs",
  "adfd",
  "adff",
  "afaa",
  "afas",
  "afaf",
  "afsa",
  "afss",
  "afsd",
  "afsf",
  "afda",
  "afds",
  "afdd",
  "afdf",
  "affa",
  "affs",
  "affd",
  "afff",
  "saaa",
  "saas",
  "saad",
  "sasa",
  "sass",
  "sasd",
  "sasf",
  "sada",
  "sads",
  "sadd",
  "sadf",
  "safa",
  "safs",
  "safd",
  "saff",
  "ssaa",
  "ssas",
  "ssaf",
  "sssa",
  "ssss",
  "sssd",
  "sssf",
  "ssda",
  "ssds",
  "ssdd",
  "ssdf",
  "ssfa",
  "ssfs",
  "ssfd",
  "ssff",
  "sdaa",
  "sdad",
  "sdaf",
  "sdsa",
  "sdss",
  "sdsd",
  "sdsf",
  "sdda",
  "sdds",
  "sddd",
  "sddf",
  "sdfa",
  "sdfs",
  "sdfd",
  "sdff",
  "sfaa",
  "sfad",
  "sfaf",
  "sfsa",
  "sfss",
  "sfsd",
  "sfsf",
  "sfda",
  "sfds",
  "sfdd",
  "sfdf",
  "sffa",
  "sffs",
  "sffd",
  "sfff",
  "daaa",
  "daas",
  "daad",
  "dasa",
  "dass",
  "dasd",
  "dasf",
  "dada",
  "dads",
  "dadd",
  "dadf",
  "dafa",
  "dafs",
  "dafd",
  "daff",
  "dsaa",
  "dsad",
  "dsaf",
  "dssa",
  "dsss",
  "dssd",
  "dssf",
  "dsda",
  "dsds",
  "dsdd",
  "dsdf",
  "dsfa",
  "dsfs",
  "dsfd",
  "dsff",
  "ddas",
  "ddad",
  "ddaf",
  "ddsa",
  "ddss",
  "ddsd",
  "ddsf",
  "ddda",
  "ddds",
  "dddd",
  "dddf",
  "ddfa",
  "ddfs",
  "ddfd",
  "ddff",
  "dfaa",
  "dfas",
  "dfaf",
  "dfsa",
  "dfss",
  "dfsd",
  "aaada",
  "aaads",
  "aaadd",
  "aaadf",
  "asasa",
  "asasd",
  "asasf",
  "adasa",
  "adass",
  "adasd",
  "adasf",
  "afada",
  "afads",
  "afadd",
  "afadf",
  "saafa",
  "saafs",
  "saafd",
  "saaff",
  "ssada",
  "ssads",
  "ssadf",
  "sdasa",
  "sdass",
  "sdasd",
  "sdasf",
  "sfasa",
  "sfass",
  "sfasd",
  "sfasf",
  "daafa",
  "daafs",
  "daafd",
  "daaff",
  "dsasa",
  "dsasd",
  "dsasf",
  "ddaaa",
  "ddaas",
  "ddaad",
  "ddaaf",
  "dfada",
  "dfads",
  "dfadd",
  "dfadf",
  "dfsfa",
  "dfsfs",
  "dfsfd",
  "dfsff",
  "dfdas",
  "dfdad",
  "dfdaf",
  "dfdsa",
  "dfdss",
  "dfdsd",
  "dfdsf",
  "dfdda",
  "dfdds",
  "dfddd",
  "dfddf",
  "dfdfa",
  "dfdfs",
  "dfdfd",
  "dfdff",
  "dffaa",
  "dffad",
  "dffaf",
  "dffsa",
  "dffss",
  "dffsd",
  "dffsf",
  "dffda",
  "dffds",
  "dffdd",
  "dffdf",
  "dfffa",
  "dfffs",
  "dfffd",
  "dffff",
  "faaaa",
  "faaas",
  "faaaf",
  "faasa",
  "faass",
  "faasd",
  "faasf",
  "faada",
  "faads",
  "faadd",
  "faadf",
  "faafa",
  "faafs",
  "faafd",
  "faaff",
  "fasaa",
  "fasad",
  "fasaf",
  "fassa",
  "fasss",
  "fassd",
  "fassf",
  "fasda",
  "fasds",
  "fasdd",
  "fasdf",
  "fasfa",
  "fasfs",
  "fasfd",
  "fasff",
  "fadas",
  "fadad",
  "fadaf",
  "fadsa",
  "fadss",
  "fadsd",
  "fadsf",
  "fadda",
  "fadds",
  "faddd",
  "faddf",
  "fadfa",
  "fadfs",
  "fadfd",
  "fadff",
  "fafaa",
  "fafad",
  "fafaf",
  "fafsa",
  "fafss",
  "fafsd",
  "fafsf",
  "fafda",
  "fafds",
  "fafdd",
  "fafdf",
  "faffa",
  "faffs",
  "faffd",
  "fafff",
  "fsaaa",
  "fsaas",
  "fsaaf",
  "fsasa",
  "fsass",
  "fsasd",
  "fsasf",
  "fsada",
  "fsads",
  "fsadd",
  "fsadf",
  "fsafa",
  "fsafs",
  "fsafd",
  "fsaff",
  "fssaa",
  "fssas",
  "fssad",
  "fsssa",
  "fssss",
  "fsssd",
  "fsssf",
  "fssda",
  "fssds",
  "fssdd",
  "fssdf",
  "fssfa",
  "fssfs",
  "fssfd",
  "fssff",
  "fsdas",
  "fsdad",
  "fsdaf",
  "fsdsa",
  "fsdss",
  "fsdsd",
  "fsdsf",
  "fsdda",
  "fsdds",
  "fsddd",
  "fsddf",
  "fsdfa",
  "fsdfs",
  "fsdfd",
  "fsdff",
  "fsfaa",
  "fsfad",
  "fsfaf",
  "fsfsa",
  "fsfss",
  "fsfsd",
  "fsfsf",
  "fsfda",
  "fsfds",
  "fsfdd",
  "fsfdf",
  "fsffa",
  "fsffs",
  "fsffd",
  "fsfff",
  "fdaaa",
  "fdaas",
  "fdaaf",
  "fdasa",
  "fdass",
  "fdasd",
  "fdasf",
  "fdada",
  "fdads",
  "fdadd",
  "fdadf",
  "fdafa",
  "fdafs",
  "fdafd",
  "fdaff",
  "fdsaa",
  "fdsas",
  "fdsaf",
  "fdssa",
  "fdsss",
  "fdssd",
  "fdssf",
  "fdsda",
  "fdsds",
  "fdsdd",
  "fdsdf",
  "fdsfa",
  "fdsfs",
  "fdsfd",
  "fdsff",
  "fddaa",
  "fddad",
  "fddaf",
  "fddsa",
  "fddss",
  "fddsd",
  "fddsf",
  "fddda",
  "fddds",
  "fdddd",
  "fdddf",
  "fddfa",
  "fddfs",
  "fddfd",
  "fddff",
  "fdfaa",
  "fdfas",
  "fdfaf",
  "fdfsa",
  "fdfss",
  "fdfsd",
  "fdfsf",
  "fdfda",
  "fdfds",
  "fdfdd",
  "fdfdf",
  "fdffa",
  "fdffs",
  "fdffd",
  "fdfff",
  "ffaaa",
  "ffaas",
  "ffaaf",
  "ffasa",
  "ffass",
  "ffasd",
  "ffasf",
  "ffada",
  "ffads",
  "ffadd",
  "ffadf",
  "ffafa",
  "ffafs",
  "ffafd",
  "ffaff",
  "ffsas",
  "ffsad",
  "ffsaf",
  "ffssa",
  "ffsss",
  "ffssd",
  "ffssf",
  "ffsda",
  "ffsds",
  "ffsdd",
  "ffsdf",
  "ffsfa",
  "ffsfs",
  "ffsfd",
  "ffsff",
  "ffdas",
  "ffdad",
  "ffdaf",
  "ffdsa",
  "ffdss",
  "ffdsd",
  "ffdsf",
  "ffdda",
  "ffdds",
  "ffddd",
  "ffddf",
  "ffdfa",
  "ffdfs",
  "ffdfd",
  "ffdff",
  "fffaa",
  "fffad",
  "fffaf",
  "fffsa",
  "fffss",
  "fffsd",
  "fffsf",
  "fffda",
  "fffds",
  "fffdd",
  "fffdf",
  "ffffa",
  "ffffs",
  "ffffd",
  "fffff",
  "asassa",
  "asasss",
  "asassd",
  "asassf",
  "ssadda",
  "ssadds",
  "ssaddd",
  "ssaddf",
  "dsassa",
  "dsassd",
  "dsassf",
  "dfdaaa",
  "dfdaas",
  "dfdaad",
  "dfdaaf",
  "dffasa",
  "dffass",
  "dffasd",
  "dffasf",
  "faaada",
  "faaads",
  "faaadd",
  "faaadf",
  "fasasa",
  "fasasd",
  "fasasf",
  "fadaaa",
  "fadaas",
  "fadaad",
  "fadaaf",
  "fafasa",
  "fafass",
  "fafasd",
  "fafasf",
  "fsaada",
  "fsaads",
  "fsaadd",
  "fsaadf",
  "fssafa",
  "fssafs",
  "fssafd",
  "fsdaaa",
  "fsdaas",
  "fsdaad",
  "fsdaaf",
  "fsfasa",
  "fsfass",
  "fsfasd",
  "fsfasf",
  "fdaada",
  "fdaads",
  "fdaadd",
  "fdaadf",
  "fdsada",
  "fdsads",
  "fdsadf",
  "fddasa",
  "fddass",
  "fddasd",
  "fddasf",
  "fdfada",
  "fdfads",
  "fdfadd",
  "fdfadf",
  "ffaada",
  "ffaads",
  "ffaadd",
  "ffaadf",
  "ffsaas",
  "ffsaad",
  "ffsaaf",
  "ffdaaa",
  "ffdaas",
  "ffdaad",
  "ffdaaf",
  "fffasa",
  "fffass",
  "fffasd",
  "fffasf",
  "dsasssa",
  "dsassss",
  "dsasssd",
  "dsasssf",
  "fasassa",
  "fasasss",
  "fasassd",
  "fasassf",
  "fssaffa",
  "fssaffs",
  "fssaffd",
  "fssafff",
  "fdsadda",
  "fdsadds",
  "fdsaddf",
  "ffsaaaa",
  "ffsaaas",
  "ffsaaad",
  "ffsaaaf",
  "fdsaddda",
  "fdsaddds",
  "fdsadddf",
  "fdsadddda",
  "fdsadddds",
  "fdsaddddd",
  "fdsaddddf",
]

alphabet_a = ["a", "s", "d", "f"]
alphabet_b = ["a", "s", "d", "f", "j", "k", "l", "g", "h"]

describe Huffman do
  it "should work for 5" do
    huffman = Huffman.new

    result = huffman.generate_hints(alphabet = alphabet_a, n = 5)
    result.should eq expected_5
  end

  it "should work for 100" do
    huffman = Huffman.new

    result = huffman.generate_hints(alphabet = alphabet_a, n = 50)
    result.should eq expected_50
    # TODO make sure priority queue is popping the same elements
  end
end
