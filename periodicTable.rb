# Periodic Table
# by Luke Stanley
# for storing the standard periodic table!

require "./element"  # Don't need to have file extension

table = [
holder = nil,  # See comment below

# I've never built an array like this. It screams "Java", rather than Ruby to me (but I may just be a Ruby elitist?)
# I put comments below on build an array. I would do something like this with arrays and an 
# iterative block using ranges, which is essentially your program in about 1/10 the code:
#
# symbols = [nil, 'H', 'He', 'Li',...]
# names = [nil, 'Hydrogen', 'Helium', 'Lithium',...]
# abbreviations = [nil, 'hydr', 'hel', 'lith',...]
# weights = [nil, 1.01, 4.00, 6.94,...]
# charges = [nil, 1, 0, 1,...]
# table = Array.new
# (1..109).each { |n| table[n] = Element.new(n, symbols[n], names[n], abbreviations[n], weights[n], charges[n]) }
# puts table[1].name
#
# Or if you did a hash, with element names, say, as the key, replace the lines above with:
# table = Hash.new
# (1..109).each { |n| table[names[n]] = Element.new(n, symbols[n], names[n], abbreviations[n], weights[n], charges[n]) }
# puts table['Hydrogen'].atomicMass

h  = Element.new(  1, "H",  "Hydrogen",	"hydr", 		1.01,	 	1),   # See comments above and below in the comments
he = Element.new(  2, "He", "Helium",		"hel", 			4.00,		0),     # for various other changes
li = Element.new(  3, "Li", "Lithium",		"lith", 		6.94,		1),
be = Element.new(  4, "Be", "Beryllium",	"beryll", 		9.01,		2),
b  = Element.new(  5, "B",  "Boron",		"bor", 			10.81,		0),
c  = Element.new(  6, "C",  "Carbon",		"carbon", 		12.01,		0),
n  = Element.new(  7, "N",  "Nitrogen",	"nitr", 		14.01,		-3),
o  = Element.new(  8, "O",  "Oxygen", 		"ox", 			16.00,		-2),
fl = Element.new(  9, "Fl", "Florine",		"flor", 		19.00,		-1),
ne = Element.new( 10, "Ne", "Neon", 		"neon", 		20.18,		0),
na = Element.new( 11, "Na", "Sodium", 		"sod", 			22.99,		1),
mg = Element.new( 12, "Mg", "Magnesium",	"magnes", 		24.31,		2),
al = Element.new( 13, "Al", "Aluminium",	"alumin",		26.98,		3),
si = Element.new( 14, "Si", "Silicon",		"silic", 		28.09,		0),
p  = Element.new( 15, "P",  "Phosphorus",	"phosphor", 	30.97,		-3),
s  = Element.new( 16, "S",  "Sulfur",		"sulfur", 		32.07,		-2),
cl = Element.new( 17, "Cl", "Chlorine",	"chlor", 		35.45,		-1),
ar = Element.new( 18, "Ar", "Argon",		"argon", 		39.95,		0),
k  = Element.new( 19, "K",  "Potassium",	"potass", 		39.10,		1),
ca = Element.new( 20, "Ca", "Calcium",		"calc", 		40.08,		2),
sc = Element.new( 21, "Sc", "Scandium",	"scand", 		44.96,		0),
ti = Element.new( 22, "Ti", "Titanium",	"titan", 		47.87,		0),
v  = Element.new( 23, "V",  "Vanadium",	"vanad", 		50.94,		0),
cr = Element.new( 24, "Cr", "Chromium",	"chrom", 		52.00,		0),
mn = Element.new( 25, "Mn", "Manganese", 	"mangan", 		54.94,		0),
fe = Element.new( 26, "Fe", "Iron", 		"ferr", 		55.85,		0),
co = Element.new( 27, "Co", "Cobalt", 		"cobalt", 		58.93,		0),
ni = Element.new( 28, "Ni", "Nickel", 		"nick", 		58.69,		0),
cu = Element.new( 29, "Cu", "Copper", 		"copp", 		63.55,		0),
zn = Element.new( 30, "Zn", "Zinc", 		"zinc", 		65.39,		0),
ga = Element.new( 31, "Ga", "Gallium",		"gall", 		69.72,		0),
ge = Element.new( 32, "Ge", "Germanium",	"german", 		72.61,		0),
as = Element.new( 33, "As", "Arsenic",		"arsen", 		74.92,		-3),
se = Element.new( 34, "Se", "Selenium",	"selen", 		78.96,		-2),
br = Element.new( 35, "Br", "Bromine", 	"brom", 		79.90,		-1),
kr = Element.new( 36, "Kr", "Krypton",		"krypton", 		83.80,		0),
rb = Element.new( 37, "Rb", "Rubidium",	"rubid", 		85.47,		1),
sr = Element.new( 38, "Sr", "Strontium",	"stront", 		87.62,		2),
y  = Element.new( 39, "Y",  "Yttrium", 	"yttr", 		88.91,		0),
zr = Element.new( 40, "Zr", "Zirconium",	"zircon", 		91.22,		0),
nb = Element.new( 41, "Nb", "Niobium",		"niob", 		92.91,		0),
mo = Element.new( 42, "Mo", "Molybdenum",	"molybden", 	95.94,		0),
tc = Element.new( 43, "Tc", "Technium",	"techn", 		98.00,		0),
ru = Element.new( 44, "Ru", "Ruthenium",	"ruthen", 		101.07,		0),
rh = Element.new( 45, "Rh", "Rhodium",		"rhod", 		102.91,		0),
pd = Element.new( 46, "Pd", "Palladium", 	"pallad", 		106.42,		0),
ag = Element.new( 47, "Ag", "Silver",	 	"silv", 		107.87,		0),
cd = Element.new( 48, "Cd", "Cadmium", 	"cadm", 		11102.41,		0),
ind= Element.new( 49, "In", "Indium",	 	"ind", 			114.82,		0),
sn = Element.new( 50, "Sn", "Tin",		 	"tin", 			118.71,		0),
sb = Element.new( 51, "Sb", "Antimony", 	"antimon", 		121.76,		0),
te = Element.new( 52, "Te", "Tellurium", 	"tellur", 		127.60,		-2),
i  = Element.new( 53, "I",  "Iodine",	 	"iod", 			126.90,		-1),
xe = Element.new( 54, "Xe", "Xenon",	 	"xen", 			131.29,		0),
cs = Element.new( 55, "Cs", "Cesium",	 	"ces", 			132.91,		1),
ba = Element.new( 56, "Ba", "Barium",	 	"bar", 			137.33,		2),
la = Element.new.make( 57, "La", "Lanthanum",	"lanthan", 		138.91,		0),    # I stopped here
ce = Element.new.make( 58, "Ce", "Cerium",		"cer", 			140.12,		0),
pr = Element.new.make( 59, "Pr", "Praseodymium","praseodym", 	140.91,		0),
nd = Element.new.make( 60, "Nd", "Neodymium",	"neodym", 		144.24,		0),
pm = Element.new.make( 61, "Pm", "Promethium",	"prometh", 		145.00,		0),
sm = Element.new.make( 62, "Sm", "Samarium",	"samar", 		150.36,		0),
eu = Element.new.make( 63, "Eu", "Europium",	"europ", 		151.96,		0),
gd = Element.new.make( 64, "Gd", "Gadolinium",	"gadolin", 		157.25,		0),
tb = Element.new.make( 65, "Tb", "Terbium",		"terb", 		158.93,		0),
dy = Element.new.make( 66, "Dy", "Dysprosium",	"dyspros", 		162.50,		0),
ho = Element.new.make( 67, "Ho", "Holmium",		"holm", 		164.93,		0),
er = Element.new.make( 68, "Er", "Erbium",		"erb", 			167.26,		0),
tm = Element.new.make( 69, "Tm", "Thulium",		"thul", 		168.93,		0),
yb = Element.new.make( 70, "Yb", "Ytterbium",	"ytterb", 		173.04,		0),
lu = Element.new.make( 71, "Lu", "Luteium", 	"lut", 			174.97,		0),
 
hf = Element.new.make( 72, "Hf", "Hafnium",		"hafn", 		178.49,		0),
ta = Element.new.make( 73, "Ta", "Tantalum",	"tantal", 		180.95,		0),
w  = Element.new.make( 74, "W",  "Tungsten",	"tungst", 		183.84,		0),
re = Element.new.make( 75, "Re", "Rhenium",		"rhen", 		186.21,		0),
os = Element.new.make( 76, "Os", "Osmium", 		"osm", 			190.23,		0),
ir = Element.new.make( 77, "Ir", "Iridium",		"irid", 		192.22,		0),
pt = Element.new.make( 78, "Pt", "Platinum",	"platin", 		195.08,		0),
au = Element.new.make( 79, "Au", "Gold", 		"gold", 		196.97,		0),
hg = Element.new.make( 80, "Hg", "Mercury",		"mercur", 		200.59,		0),
tl = Element.new.make( 81, "Tl", "Thallium", 	"thall", 		204.38,		0),
pb = Element.new.make( 82, "Pb", "Lead", 		"lead", 		207.20,		0),
bi = Element.new.make( 83, "Bi", "Bismuth", 	"bism", 		208.98,		0),
po = Element.new.make( 84, "Po", "Polonium", 	"polon", 		209.00,		0),
at = Element.new.make( 85, "At", "Astatine", 	"astat", 		210.00,		-1),
rn = Element.new.make( 86, "Rn", "Radon",	 	"radon", 		222.00,		0),
fr = Element.new.make( 87, "Fr", "Francium", 	"franc", 		223.00,		1),
ra = Element.new.make( 88, "Ra", "Radium",	 	"rad", 			226.00,		2),
ac = Element.new.make( 89, "Ac", "Actinium", 	"actin", 		227.00,		0),

th = Element.new.make( 90, "Th", "Thorium", 	"thor", 		232.04,		0),
pa = Element.new.make( 91, "Pa", "Protactinium","protactin", 	231.04,		0),
u  = Element.new.make( 92, "U",  "Uranium", 	"uran", 		238.03,		0),
np = Element.new.make( 93, "Np", "Neptunium", 	"neptun", 		237.00,		0),
pu = Element.new.make( 94, "Pu", "Plutonium", 	"pluton", 		244.00,		0),
am = Element.new.make( 95, "Am", "Americium", 	"amer", 		243.00,		0),
cm = Element.new.make( 96, "Cm", "Curium",	 	"cur", 			247.00,		0),
bk = Element.new.make( 97, "Bk", "Berkelium", 	"berkel", 		247.00,		0),
cf = Element.new.make( 98, "Cf", "Californium",	"californ", 	251.00,		0),
es = Element.new.make( 99, "Es", "Einsteinium", "einstein", 	252.00,		0),
fm = Element.new.make(100, "Fm", "Fermium", 	"ferm", 		257.00,		0),
md = Element.new.make(101, "Md", "Mendelevium",	"mendelev",		258.00,		0),
no = Element.new.make(102, "No", "Nobelium", 	"nobel", 		259.00,		0),
lr = Element.new.make(103, "Lr", "Lawrencium", 	"lawrenc", 		262.00,		0),

rf = Element.new.make(104, "Rf", "Rutherfordium","rutherford", 	261.00,		0),
db = Element.new.make(105, "Db", "Dubnium", 	"dubn", 		262.00,		0),
sg = Element.new.make(106, "Sg", "Seaborgium", 	"seaborg", 		266.00,		0),
bh = Element.new.make(107, "Bh", "Bohrium", 	"bohr", 		264.00,		0),
hs = Element.new.make(108, "Hs", "Hassium", 	"hass", 		269.00,		0),
mt = Element.new.make(109, "Mt", "Meitnerium", 	"meitner", 		268.00,		0),
]

puts table[0].name
