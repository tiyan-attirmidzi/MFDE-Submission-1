import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Makanan Khas Indonesia",
      home: new Home(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Container> listFood = new List();

  var dataList = [
    {"id" : "1", "name" : "Ayam Betutu Bali", "image" : "ayam-betutu.jpg", "desc" : "Masakan ini merupakan salah satu masakan khas Indonesia dari daerah Bali. Ayam Betutu sangat banyak diproduksi oleh orang-orang Bali di daerah Desa Melinggih, kecamatan Payangan Kabupaten Gianyar. Makanan ini terbuat dari bahan dasar daging ayam yang utuh, kemudan daging ini biasanya di bubuhi bumbu yang diletakkan di bagian tengah dari ayamnya. Setelah itu, daging ini dipanggang dengan api sekan dan siap untuk dihidangkan. Kebanyakan dari orang terheran-heran cara memanggangnya karena begitu sangat lembut daging yang telah terpanggang seperti daging yang telah dikukus."},
    {"id" : "2", "name" : "Bandeng Presto Semarang", "image" : "bandeng-presto.jpg", "desc" : "Bandeng Presto adalah ikan bandeng yang dimasak dengan panci bertekanan tinggi biasanya disebut presto. Cara ini dilakukan untuk membuat duri ikan bandeng tersebut menjadi lunak sehingga enak untuk dimakan dan tahan lama jika di simpan dalam lemari es. Biasanya di hidangkan dengan sambal terasi dan nasi hangat. Jika kebetulan anda sedang berpergian ke Semarang dan ingin merasakan bandeng presto dari daerah asalnya, silahkan mampir di salah satu toko yang berderet di sepanjang Jalan Pandanaran atau Mataram Semarang."},
    {"id" : "3", "name" : "Bika Ambon", "image" : "bika-ambon.jpg", "desc" : "Bika Ambon adalah makanan khas Indonesia dari daerah Medan, Sumatera Utara. Bika ini terbuat dari berbagai bahan seperti telur, gula serta santan yang umumnya beraroma pandan wangi. Bika Ambon ini menjadi salah satu makanan favorit daerah Medan."},
    {"id" : "4", "name" : "Bubur Manado", "image" : "bubur-manado1.jpg", "desc" : "Bubur Manado atau bubur Tinutuan merupakan makanan khas favorit dari Pulau Sulawesi. Tinutuan dalam bahasa Manado berarti campur aduk. Di dalam bubur Manado terdapat sayur-sayuran yang beragam, lauk hewani seperti ikan, dan lauk nabati seperti tahu dan tempe."},
    {"id" : "5", "name" : "Coto Makasar", "image" : "coto-makassar.jpg", "desc" : "Sebenarnya Coto memiliki arti yang sama dengan Soto. Namun, khusus untuk Soto dari Makassar, masyarakat biasa mengenalnya dengan sebutan Coto. Coto Makassar memiliki keunikan tersendiri, yaitu berupa isi dan bumbunya. Isi dari Coto Makassar terdiri dari daging dan jeroan sapi. Rasa kacang tanah halus yang hanya terdapat pada kuah Coto Makassar."},
    {"id" : "6", "name" : "Empek-empek Palembang", "image" : "empek-empek.jpg", "desc" : "Empek-empek atau sering dinamakan dengan sebutan pempek merupakan makanan khas Indonesia yang berasal dari daerah Palembang, Sumatera Selatan. Makanan khas ini umumnya terbuat dari ikan dan sagu. Namun makanan ini tidak hanya terdapat di daerah Palembang saja akan tetapi sudah banyak masyarakat Sumatera Selatan yang memproduksinya."},
    {"id" : "7", "name" : "Gudeg Yogyakarta", "image" : "gudeg-jogja.jpg", "desc" : "Gudeg merupakan kuliner yang tidak bisa dipisahkan dengan kota Yogyakarta bahkan sampai-sampai Yogyakarta memiliki julukan sebagai kota Gudeg. Gudeg asli Yogyakarta memiliki rasa yang sangat manis. Gudeg terbuat dari sayur nangka muda bersantan yang biasa dinikmati dengan nasi, ayam kampung, dan telur kecap."},
    {"id" : "8", "name" : "Gulai Belacan Riau", "image" : "gulaibelacan.jpg", "desc" : "Gulai Belacan adalah makasan khas Indonesia yang berasal dari daerah Riau. Gulai ini seperti namanya terbuat dari bahan dasar Belacan yaitu masakan dengan bahan dasar kuah yang dicampur dengan terasi. Biasanya bahan dari Gulai Belacan yang lain adalah berupa daging ataupun dari udang dan ikan."},
    {"id" : "9", "name" : "Gulai Ikan Patin Jambi", "image" : "gulai-ikan-patin.jpg", "desc" : "Masakan ini adalah masakan yang terkenal dan populer di masyarakat Jambi yang menjadi salah satu masakan khas Indonesia. Gulai Ikan Patin dimasak dengan menggunakan tempoyak, yaitu daging buah durian yagn sudah difermentasi. Namun ada juga banyak orang yang memasak Gulai Ikan Patin yang mengganti tempoyak dengan santan kelapa untuk menghindari bau dan rasa tempoyak yang sangat menyengat."},
    {"id" : "10", "name" : "Kerak Telor Jakarta", "image" : "keraktelor.jpg", "desc" : "Makanan khas dari Jakarta yang satu ini sebenarnya merupakan perpaduan dari kuliner Portugis. Kerak telor mudah ditemui di Jakarta terutama pada saat diadakannya  Pekan Raya Jakarta bahkan kerak telor acap kali dijadikan simbol kuliner klasik budaya Betawi."},
    {"id" : "11", "name" : "Mie Aceh", "image" : "mie-aceh.jpg", "desc" : "Mie Aceh sangat jelas berasal dari daerah Aceh. Mie ini salah satu makanan khas daerah Aceh yang juga merupakan makanan khas Indonesia. Bahan dasar makanan ini adalah berasal dari mie kuning tebal dengan diirisi daging sapi, daging kambing ataupun makanan laut seperti udang dan cumi-cumi yang disajikan dalam bentuk sup dengan kuah sejenis kari yang gurih serta pedas."},
    {"id" : "12", "name" : "Mie Bangka", "image" : "mie-bangka.jpg", "desc" : "Mie Bangka merupakan salah satu makanan khas Indonesia yang berasal dari daerah Bangka. Mie Bangka ini menggambarkan ciri khas masyarakat pulau Bangka. Mie ini terbuat dari bahan dasar mie basah yang berwarna kuning yang biasanya disiram dengan kuah yang berbumbu. Kuah ini terbuat dari campuran ikan, udang, cumi-cumi atau kepiting. Adakalanya makanan ini ditambah dengan toge atau kecambah, mentimun atau timun serta kerupuk. Masakan ini biasanya dihidangkan dalam keadaan panas yang sangat lezat dengan sensasi pedas dari cabenya."},
    {"id" : "13", "name" : "Mie Kocok Bandung", "image" : "mie-kocok-bandung.jpg", "desc" : "Mie kocok tentu saja berbeda dengan mie bakso dari segi kuah maupun isian andalannya. Kuah mie bakso cenderung lebih encer, sedangkan kuah mie kocok lebih kental. Komponen mie bakso terdiri atas mie bulat, bihun, tauge, sawi hijau, dan bakso. Sementara itu, komponen mie kocok terdiri atas mie gepeng, tauge, dan kikil."},
    {"id" : "14", "name" : "Papeda Papua", "image" : "papeda.jpg", "desc" : "Papeda khas papua ini adalah makanan yang berupa bubur sagu khas Papua, makanan ini biasanya disajikan dengan ikan tongkol atau mubara yang dibumbui dengan kunyit. Makanan khas papeda berwarna putih dan bertekstur lengket menyerupai lem dengan rasa yang tawar. Di dalam makanan ini terdapat serat yang banyak, rendah kolesterol dan bernutrisi."},
    {"id" : "15", "name" : "Rendang Padang", "image" : "rendang.jpg", "desc" : "Rendang atau dalam bahasa Minangnya lebih dikenal dengan Randang makanan khas Indonesia yang berasal dari daerah Padang, Sumatera Barat. Rendang ini merupakan salah satu masakan tradisional Minangkabau yang menggunakan daginf dan santan kelapa sebagai bahan dasarnya. Rendang ini biasanya mempunyai kandungan bumbu repah-rempah yang sangat banyak."},
    {"id" : "16", "name" : "Seruit Lampung", "image" : "seruit.jpg", "desc" : "Seruit merupakan salah satu makanan khas Indonesia dari daerah Lampung. Makanan ini terbuat dari ikan yang digoreng ataupun dibakar dengan dicampur terasi, tempoyak atau olahan durian yang sudah difermentasi serta manga. Jenis ikan yang digunakan sebagai dasar pembuatan makanan ini biasanya adalah ikan yang besar-besar seperti belide, baung, layis dan lain – lain. Makanan ini akan menjadi sangat lezat jika dihidangkan dengan menggunakan lalapan seperi tomat ataupun mentimun."},
    {"id" : "17", "name" : "Soto Banjar", "image" : "soto-banjar.jpg", "desc" : "Soto Banjar adalah soto khas Banjarmasin, Kalimantan Selatan dengan bahan utama ayam dan beraroma harum rempah-rempah seperti kayu manis, biji pala, dan cengkeh. Soto berisi daging ayam yang sudah disuwir-suwir, dengan tambahan perkedel atau kentang rebus, rebusan telur, dan ketupat."},
    {"id" : "18", "name" : "Soto Rawon Surabaya", "image" : "soto-rawon.jpg", "desc" : "Nasi Rawon/Soto Rawon adalah Sup dengan potongan daging rawon asal Surabaya, ini sangat terkenal di daerah Pulau Jawa. Soto rawon Surabaya ini memiliki ciri khas yang terletak pada kuahnya. Kuah dari soto rawon ini tidak menggunakan kecap akan tetapi menggunakan kluwek."},
  ]; 

  _list()async {
    for (var i = 0; i < dataList.length; i++) {

      final data          = dataList[i];
      final String image  = data["image"];

      listFood.add(
        new Container(
          padding: new EdgeInsets.all(5.0),
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Hero(
                  tag: data["id"],
                  child: new Material(
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(id: data["id"], name: data["name"], image: data["image"], desc: data["desc"],)),);
                      },
                      child: new Image.asset('img/$image', fit: BoxFit.cover,),
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(3.0),),
                new Text(data["name"], style: new TextStyle(fontSize: 13.0),),
              ],
            ),
          ),
        )
      );

    }
  }

  @override
  void initState() {
    _list();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Makanan Khas Indonesia", style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: listFood,
      ),
    );
  }
}

class DetailView extends StatelessWidget {

  DetailView({this.id,this.name,this.image,this.desc});
  
  final String id;
  final String name;
  final String image;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Detail Makanan"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios), 
            onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 230.0,
            child :new Hero(
              tag: id,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$image", fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          new FoodDetail(name: name, desc: desc,),
        ],
      ),
    );
  }
}

class FoodDetail extends StatelessWidget {

  FoodDetail({this.name,this.desc});

  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(15.0),
      child: new Column(
        children: <Widget>[
          new Text(name, style: new TextStyle(fontSize: 20.0,),),
          new Padding(padding: EdgeInsets.only(bottom: 15.0)),
          new Text(desc, style: new TextStyle(fontSize: 15.0,),),
        ],
      ),
    );
  }
}


