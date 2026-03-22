USE jinpdv;

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    linha INT,
    coluna INT,
    medicamento VARCHAR(50) NULL,
    principio_ativo TEXT NOT NULL,
    preco DOUBLE DEFAULT 0.00,
    quantidade FLOAT NOT NULL,
    unidade_medida VARCHAR(10) NOT NULL,
    fabricante TEXT NOT NULL,
    lote_compra INT NOT NULL,
    validade DATE,
    tarja VARCHAR(20) NOT NULL
);

INSERT INTO produtos 
(linha, coluna, medicamento, principio_ativo, preco, quantidade, unidade_medida, fabricante, lote_compra, validade, tarja)
VALUES
-- (GENÉRICOS/POPULARES)
(0,0, NULL, "brometo de ipratrópio", 0.00, 0.02, "mg", "EMS", 1, "2027-07-28", "vermelha"),
(0,0, NULL, "brometo de ipratrópio", 0.00, 0.25, "mg", "Boehringer Ingelheim", 1, "2027-02-01", "vermelha"),
(0,0, NULL, "dipropionato de beclometasona", 0.00, 200, "mcg", "Chiesi Farmacêutica", 1, "2027-01-01", "vermelha"),
(0,0, NULL, "dipropionato de beclometasona", 0.00, 250, "mcg", "Chiesi Farmacêutica", 1, "2027-01-01", "vermelha"),
(0,1, NULL, "dipropionato de beclometasona", 0.00, 50, "mcg", "Chiesi Farmacêutica", 1, "2027-01-01", "vermelha"),
(0,1, NULL, "sulfato de salbutamol", 0.00, 100, "mcg", "GlaxoSmithKline", 1, "2027-03-01", "vermelha"),
(0,1, NULL, "sulfato de salbutamol", 0.00, 5, "mg", "Teuto", 1, "2027-03-01", "vermelha"),
(1,0, NULL, "cloridrato de metformina", 0.00, 500, "mg", "EMS", 1, "2028-02-01", "vermelha"),
(1,0, NULL, "cloridrato de metformina (ação prolongada)", 0.00, 500, "mg", "Merck", 1, "2028-02-01", "vermelha"),
(1,0, NULL, "cloridrato de metformina", 0.00, 850, "mg", "Eurofarma", 1, "2028-02-01", "vermelha"),
(1,0, NULL, "glibenclamida", 0.00, 5, "mg", "Neo Química", 1, "2028-03-01", "vermelha"),
(1,1, NULL, "insulina humana regular", 0.00, 100, "UI/ml", "Novo Nordisk", 1, "2027-04-01", "vermelha"),
(1,1, NULL, "insulina humana", 0.00, 100, "UI/ml", "Eli Lily", 1, "2027-04-01", "vermelha"),
(1,1, NULL, "dapagliflozina", 0.00, 10, "mg", "AstraZeneca", 1, "2028-02-01", "vermelha"),
(2,0, NULL, "atenolol", 0.00, 25, "mg", "Aché", 1, "2028-01-01", "vermelha"),
(2,0, NULL, "besilato de anlodipino", 0.00, 5, "mg", "Pfizer", 1, "2028-01-01", "vermelha"),
(2,0, NULL, "captopril", 0.00, 25, "mg", "EMS", 1, "2028-01-01", "vermelha"),
(2,0, NULL, "cloridrato de propranolol", 0.00, 40, "mg", "EMS", 1, "2028-01-01", "vermelha"),
(2,1, NULL, "hidrocloritiazida", 0.00, 25, "mg", "Eurofarma", 1, "2028-01-01", "vermelha"),
(2,1, NULL, "losartana potássica", 0.00, 50, "mg", "Neo Química", 1, "2028-01-01", "vermelha"),
(2,1, NULL, "maleato de enalapril", 0.00, 10, "mg", "EMS", 1, "2028-01-01", "vermelha"),
(2,1, NULL, "espironolactona", 0.00, 25, "mg", "Eurofarma", 1, "2028-02-01", "vermelha"),
(2,2, NULL, "furosemida", 0.00, 40, "mg", "Sanofi", 1, "2028-02-01", "vermelha"),
(2,2, NULL, "succinato de metoprolol", 0.00, 25, "mg", "AstraZeneca", 1, "2028-03-01", "vermelha"),
(2,2, NULL, "acetato de medroxiprogesterona", 0.00, 150, "mg", "Pfizer", 1, "2028-03-10", "vermelha"),
(2,2, NULL, "etinilestradiol + levonorgestrel", 0.00, 0.03+0.15, "mg", "Bayer", 1, "2028-03-15", "vermelha"),
(2,3, NULL, "noretisterona", 0.00, 0.35, "mg", "Biolab", 1, "2028-03-18", "vermelha"),
(2,3, NULL, "valerato de estradiol + enantato de noretisterona", 0.00, 5+50, "mg", "Bayer", 1, "2028-03-20", "vermelha"),
(2,3, NULL, "alendronato de sódio", 0.00, 70, "mg", "Merck", 1, "2028-04-05", "vermelha"),
(2,3, NULL, "sinvastatina", 0.00, 10, "mg", "EMS", 1, "2028-04-10", "vermelha"),
(2,4, NULL, "sinvastatina", 0.00, 20, "mg", "Neoquimica", 1, "2028-04-12", "vermelha"),
(2,4, NULL, "sinvastatina", 0.00, 40, "mg", "Eurofarma", 1, "2028-04-15", "vermelha"),
(2,4, NULL, "carbidopa + levedopa", 0.00, 25+250 , "mg", "Merck Sharp & Dohme", 1, "2028-04-20", "vermelha"),
(2,4, NULL, "cloridrato de benserazida + levedopa", 0.00, 25+100, "mg", "Roche", 1, "2028-04-22", "vermelha"),
(2,5, NULL, "maleato de timolol", 0.00, 2.5, "mg", "Novartis", 1, "2027-04-25", "vermelha"),
(2,5, NULL, "maleato de timolol", 0.00, 5, "mg", "Novartis", 1, "2027-04-28", "vermelha"),
(2,5, NULL, "budesonida", 0.00, 32, "mcg", "AstraZeneca", 1, "2027-05-02", "vermelha"),
(2,5, NULL, "budesonida", 0.00, 50, "mcg", "Eurofarma", 1, "2027-05-05", "vermelha"),
(2,6, NULL, "dipropionato de beclometasona", 0.00, 50, "mcg/dose", "Chiesi Farmacêutica", 1, "2027-05-08", "vermelha"),


-- (MARCAS)
-- LINHA 1 (ASMA / RINITE)
(1,1,"Atrovent","brometo de ipratrópio",25.90,0.02,"mg","EMS",1,"2027-07-28","vermelha"),
(1,2,"Clenil","dipropionato de beclometasona",30.00,200,"mcg","Chiesi",1,"2027-01-01","vermelha"),
(1,3,"Avamys","furoato de fluticasona",65.00,27.5,"mcg","GSK",1,"2027-03-01","vermelha"),
(1,4,"Allegra","fexofenadina",45.00,120,"mg","Sanofi",1,"2027-05-01","vermelha"),
(1,1,"Berotec","fenoterol",46.00,20,"mg","Chiesi",1,"2028-05-05","vermelha"),
(1,1,"Serevent","salmeterol",43.00,2,"mg","Fieri",1,"2027-07-05","vermelha"),
(1,2,"pulmicort","budesonida",30.00,3,"mg","AstraZeneca",2,"2029-01-01","vermelha"),
(1,2,"Aerolin","Sulfato de Salbutamol",30.00,10,"mg","GSK",3,"2027-09-11","vermelha"),
(1,2,"Clenil","Dipironato de Beclometasona",50.00,4,"mg","Chiesi",1,"2028-11-21","vermelha"),
(1,1,"Alenia","Fumarato de Formoterol + Budesonida",40.00,10,"mg","Eurofarma",1,"2027-05-05","vermelha"),
(1,1,"Busonid","Budesonida",79.99,3,"mg","AstraZeneca",1,"2028-05-05","vermelha"),

-- LINHA 2 (DIABETES)

(2,1,"Glifage","cloridrato de metformina",12.90,500,"mg","EMS",1,"2028-02-01","vermelha"),
(2,2,"Glifage XR","metformina ação prolongada",15.90,500,"mg","Merck",1,"2028-02-01","vermelha"),
(2,3,"Forxiga","dapagliflozina",120.00,10,"mg","AstraZeneca",1,"2028-02-01","vermelha"),
(2,4,"Daonil","glibenclamida",9.90,5,"mg","Neo Química",1,"2028-03-01","vermelha"),
(2,2,"Diamicron MR","Gliclazida",5.00,1,"mg","Servier",1,"2028-05-05","vermelha"),
(2,3,"Jardiance","Empagliflozina",10.00,4,"mg","Boehringer Ingelheim",1,"2028-05-05","vermelha"),

-- LINHA 3 (HIPERTENSÃO)

(3,1,"Atenol","atenolol",8.50,25,"mg","Aché",1,"2028-01-01","vermelha"),
(3,1,"Captopril","Captopril",14.99,5,"mg","Sandoz",2,"2028-05-13","vermelha"),
(3,2,"Capoten","captopril",7.50,25,"mg","EMS",1,"2028-01-01","vermelha"),
(3,2,"Hidroclorotiazida","Hidroclorotiazida",20.00,3,"mg","AstraZeneca",1,"2027-03-07","vermelha"),
(3,3,"Renitec","enalapril",11.00,10,"mg","EMS",1,"2028-01-01","vermelha"),
(3,3,"Enalapril","Meleato de Enalapril",12.99,9,"mg","Medley",1,"2027-09-23","vermelha"),
(3,4,"Losartana","losartana potássica",10.90,50,"mg","Neo Química",1,"2028-01-01","vermelha"),

-- LINHA 4 (OUTRAS DOENÇAS)

(4,1,"Lipitor","atorvastatina",55.00,20,"mg","Pfizer",1,"2028-04-01","vermelha"),
(4,2,"Fosamax","alendronato de sódio",40.00,70,"mg","MSD",1,"2028-06-01","vermelha"),
(4,3,"Prolopa","levodopa + benserazida",120.00,250,"mg","Roche",1,"2028-05-01","preta"),
(4,4,"Xalatan","latanoprosta",95.00,0.005,"mg","Pfizer",1,"2027-12-01","vermelha"),

-- LINHA 5 (ANTICONCEPCIONAL / HIGIENE)

(5,1,"Selene","etinilestradiol + acetato de ciproterona",35.00,2,"mg","Bayer",1,"2028-01-01","vermelha"),
(5,2,"Yasmin","etinilestradiol + drospirenona",40.00,3,"mg","Bayer",1,"2028-02-01","vermelha"),
(5,3,"Neosaldina Spray","cloreto de benzalcônio",18.00,10,"ml","Neo Química",1,"2027-11-01","sem tarja"),
(5,4,"Soro Fisiológico","cloreto de sódio",6.00,5,"ml","Farmax",1,"2027-09-01","sem tarja"),
(5,1,"Lumi","Drospirenona + Etinilestradiol",25.99,90,"g","Libbs",1,"2029-07-30","sem tarja"),
(5,3,"Ciclo 21","Etilinestradiol + Levonorgestrol",21.99,11,"g","União Química",1,"2029-11-21","azul"),
(5,4,"Mesigyna","Norestina + Estradiol", 30.00,30,"ml","Bayer",1,"2027-04-01","sem tarja");