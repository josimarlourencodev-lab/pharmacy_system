USE jinpdv;

CREATE TABLE produtos(
id INT AUTO_INCREMENT PRIMARY KEY,
linha INT,
coluna INT,
medicamento VARCHAR(50),
principio_ativo TEXT NOT NULL,
preco DOUBLE,
quantidade FLOAT NOT NULL,
unidade_medida VARCHAR(10) NOT NULL,
fabricante TEXT NOT NULL,
lote_compra INT NOT NULL,
validade DATE,
tarja VARCHAR(20) NOT NULL
);

INSERT INTO produtos
(linha, coluna, principio_ativo, quantidade, unidade_medida, fabricante, lote_compra, validade, tarja)
VALUES
(0,0,"brometo_de_ipratrópio",0.02,"mg","EMS",1,"2027-07-28","vermelha"),
(0,0,"brometo de ipratrópio",0.25,"mg","Boehringer Ingelheim",1,"2027-02-01","vermelha"),
(0,0,"dipropionato de beclometasona",200,"mcg","Chiesi Farmacêutica",1,"2027-01-01","vermelha"),
(0,0,"dipropionato de beclometasona",250,"mcg","Chiesi Farmacêutica",1,"2027-01-01","vermelha"),
(0,1,"dipropionato de beclometasona",50,"mcg","Chiesi Farmacêutica",1,"2027-01-01","vermelha"),
(0,1,"sulfato de salbutamol",100,"mcg","GlaxoSmithKline",1,"2027-03-01","vermelha"),
(0,1,"sulfato de salbutamol",5,"mg","Teuto",1,"2027-03-01","vermelha"),
(1,0,"cloridrato de metformina",500,"mg","EMS",1,"2028-02-01","vermelha"),
(1,0,"cloridrato de metformina (ação prolongada)",500,"mg","Merck",1,"2028-02-01","vermelha"),
(1,0,"cloridrato de metformina",850,"mg","Eurofarma",1,"2028-02-01","vermelha"),
(1,0,"glibenclamida",5,"mg","Neo Química",1,"2028-03-01","vermelha"),
(1,1,"insulina humana regular",100,"UI/ml","Novo Nordisk",1,"2027-04-01","vermelha"),
(1,1,"insulina humana",100,"UI/ml","Eli Lily",1,"2027-04-01","vermelha"),
(1,1,"dapagliflozina",10,"mg","AstraZeneca",1,"2028-02-01","vermelha"),
(2,0,"atenolol",25,"mg","Aché",1,"2028-01-01","vermelha"),
(2,0,"besilato de anlodipino",5,"mg","Pfizer",1,"2028-01-01","vermelha"),
(2,0,"captopril",25,"mg","EMS",1,"2028-01-01","vermelha"),
(2,0,"cloridrato de propranolol",40,"mg","EMS",1,"2028-01-01","vermelha"),
(2,1,"hidrocloritiazida",25,"mg","Eurofarma",1,"2028-01-01","vermelha"),
(2,1,"losartana potássica",50,"mg","Neo Química",1,"2028-01-01","vermelha"),
(2,1,"maleato de enalapril",10,"mg","EMS",1,"2028-01-01","vermelha"),
(2,1,"espironolactona",25,"mg","Eurofarma",1,"2028-02-01","vermelha"),
(2,2,"furosemida",40,"mg","Sanofi",1,"2028-02-01","vermelha"),
(2,2,"succinato de metoprolol",25,"mg","AstraZeneca",1,"2028-03-01","vermelha");