/*

MaterialApp projenin bel kemiğidir
MaterialPageRoute sınıfı MaterialApp olmadan calismaz

Her sayfa geçişindee MaterialPageRoute kullanmak performans acısından iyi olmadıgı için, rota kullanmak daha performanslıdır.

Rota kullanmanın iki yolu vardır.Biri standart, diğeri gelişmiş olan.
Aralarındaki fark biri sadecfe sayfa geçişi sağlar.
Diğeri ise hem sayfa geçişi hemde veri akımını sağlar.

Rotaları tanımlamak için MaterialApp içindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.

1)sayfaya gidecek olan butonun olduğu sayfadaveri oluşturulur.
2)verinin gidecefği sayfada kurucusnda alınacak veri için hazırlık yapılır.
3) rota yönnetiminin olduğu sayfada (route_generator) veri verinin gidedeği sayfaya gönderilir. 
 String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => GreenPage(ad: name));

4)anasayfadaki veriyi gönderen butona şu yazılır: 
Navigator.of(context).pushNamed("/greenPage", arguments: name);

sonuc olarak veri gönderimi tamamlanır 

 
 
 */
