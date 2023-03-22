import 'package:aplikasi_state_management/views/models/done_makanan_tradisional.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/makanan_tradisional.dart';
import 'package:aplikasi_state_management/views/models/makanan_tradisional_list.dart';

class PercobaanSatu extends StatefulWidget {
  const PercobaanSatu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PercobaanSatuState createState() => _PercobaanSatuState();
}

class _PercobaanSatuState extends State<PercobaanSatu> {
  final List<MakananTradisional> doneMakananTradisionalList = [];
  final List<MakananTradisional> makananTradisionalList = [
    MakananTradisional(
      nama: 'Mi Aceh',
      daerah: 'Aceh',
      gambar:
      'https://o-cdn-cas.sirclocdn.com/parenting/images/Mi_Aceh1.width-800.format-webp.webp',
      deskripsi:
      'Mi Aceh adalah masakan khas Indonesia yang berasal dari Aceh.  Mi Aceh terbuat dari mie kuning, daging sapi, dan bumbu kacang.  Mi Aceh biasanya disajikan dengan sambal kacang atau sambal kecap.',
      hariBuka: 'Sabtu - Minggu',
      pukulBuka: '07.00 - 21.00',
      harga: 'Rp. 28.000',
      gambarList: [
        'https://asset.kompas.com/crops/7tBNI9-TCa-oOq8tQTahf0ua1fg=/0x0:968x645/750x500/data/photo/2021/01/27/6010ce2cc1805.jpg',
        'https://awsimages.detik.net.id/community/media/visual/2018/07/10/0c13e0e1-ecaa-4370-af3d-4ab52b7e4c31_43.jpeg?w=700&q=90',
        'https://upload.wikimedia.org/wikipedia/commons/f/f4/Mie_Aceh_with_beef.jpg',
      ],
    ),
    MakananTradisional(
      nama: 'Bika Ambon',
      daerah: 'Sumatera Utara',
      gambar:
      'https://o-cdn-cas.sirclocdn.com/parenting/images/Bika_Ambon1.width-800.format-webp.webp',
      deskripsi:
      'Bika Ambon adalah kue khas Indonesia yang berasal dari Ambon, Maluku.  Kue ini terbuat dari tepung beras, gula, telur, dan santan.  Kue ini biasanya disajikan dalam bentuk bulat kecil, dan dihiasi dengan potongan kelapa parut.  Bika Ambon juga biasanya disajikan dalam bentuk kue bolu, dan dihiasi dengan potongan kelapa parut dan kacang tanah goreng.',
      hariBuka: 'Senin - Kamis',
      pukulBuka: '08.00 - 20.00',
      harga: 'Rp. 15.000',
      gambarList: [
        'https://img.okezone.com/content/2017/03/23/298/1650518/resep-nenek-belajar-bikin-bika-ambon-khas-medan-yuk-6jvvWJhAf9.jpg',
        'https://img.okezone.com/content/2020/06/12/298/2229217/cara-membuat-bika-ambon-khas-medan-lembut-di-mulut-HWbOWCuHyP.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Kue_bika_ambon.JPG/640px-Kue_bika_ambon.JPG',
      ],
    ),
    MakananTradisional(
      nama: 'Rendang',
      daerah: 'Sumatera Barat',
      gambar:
      'https://o-cdn-cas.sirclocdn.com/parenting/images/Rendang.width-800.format-webp_bv7eR64.webp',
      deskripsi:
      'Rendang adalah masakan khas Indonesia yang berasal dari Minangkabau, Sumatera Barat.  Rendang terbuat dari daging sapi, daging kambing, atau daging babi yang direbus dengan santan, bumbu kacang, dan bumbu rempah-rempah.  Rendang biasanya disajikan dengan nasi putih, dan disajikan dengan sambal kacang atau sambal kecap.',
      hariBuka: 'Senin - Minggu',
      pukulBuka: '09.00 - 21.00',
      harga: 'Rp. 27.000',
      gambarList: [
        'https://cdn0-production-images-kly.akamaized.net/YHppKTMNcRz87-cP2Wrg5Ye8mFc=/1x112:1000x675/1200x675/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3245094/original/043061400_1600750232-shutterstock_1786027046.jpg',
        'https://www.warisankuliner.com/gfx/recipes/temp_thumb-1658299943.jpg',
        'https://asset.kompas.com/crops/a29yE_hzxM0nJBIId_Lh6aeDkok=/0x3:977x654/780x390/data/photo/2020/06/30/5efaf91e0ec2c.jpg',
      ],
    ),
    MakananTradisional(
      nama: 'Pendap',
      daerah: 'Bengkulu',
      gambar:
      'https://o-cdn-cas.sirclocdn.com/parenting/images/Pendap1.width-800.format-webp.webp',
      deskripsi:
      'Pendap adalah masakan khas Indonesia yang berasal dari Bengkulu.  Pendap terbuat dari daging sapi, daging kambing, atau daging babi yang direbus dengan santan, bumbu kacang, dan bumbu rempah-rempah.  Pendap biasanya disajikan dengan nasi putih, dan disajikan dengan sambal kacang atau sambal kecap.',
      hariBuka: 'Senin - Jumat',
      pukulBuka: '08.30 - 20.30',
      harga: 'Rp. 25.000',
      gambarList: [
        'https://awsimages.detik.net.id/community/media/visual/2023/01/11/mengenal-pendap-kuliner-khas-bengkulu_169.jpeg?w=1200',
        'http://asset-a.grid.id/crop/0x0:0x0/780x800/photo/bobofoto/original/22471_nikmatnya-pendap-sajian-khas-bengkulu.jpg',
        'https://ksmtour.com/media/images/articles16/pendap-kuliner-khas-bengkulu.jpg',
      ],
    ),
    MakananTradisional(
      nama: 'Gulai Belacan',
      daerah: 'Riau',
      gambar:
      'https://o-cdn-cas.sirclocdn.com/parenting/images/Gulai_Belacan1.width-800.format-webp.webp',
      deskripsi:
      'Gulai Belacan adalah masakan khas Indonesia yang berasal dari Riau.  Gulai Belacan terbuat dari daging sapi, daging kambing, atau daging babi yang direbus dengan santan, bumbu kacang, dan bumbu rempah-rempah.  Gulai Belacan biasanya disajikan dengan nasi putih, dan disajikan dengan sambal kacang atau sambal kecap.',
      hariBuka: 'Senin - Sabtu',
      pukulBuka: '10.00 - 22.30',
      harga: 'Rp. 30.000',
      gambarList: [
        'https://www.outbound-bandung-cileunca.com/wp-content/uploads/2021/11/gulai-belacan.jpg',
        'https://img.kurio.network/1rnKkTh_X_R05O-3npTdHx92z8A=/1200x900/filters:quality(80)/https://kurio-img.kurioapps.com/22/01/11/3e5956bd-1c2d-4b98-9fdc-f68b240cfbdd.jpe',
        'https://img-global.cpcdn.com/recipes/25fbdfeba9fe5d3c/1200x630cq70/photo.jpg',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional Indonesia'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DoneMakananTradisional(doneMakananTradisionalList: doneMakananTradisionalList);
                    })
                );
              },
          )
        ],
      ),
      body: MakananTradisionalList(doneMakananTradisionalList: doneMakananTradisionalList),
    );
  }
}