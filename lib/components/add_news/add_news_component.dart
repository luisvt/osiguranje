import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import 'package:osiguranje/services/Service.dart';
import 'package:osiguranje/models/news.dart';


@Component(
    selector: 'add-news',
    templateUrl: 'add_news_component.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [Service]
)
class AddNewsComponent implements OnInit {

  AddNewsComponent(this._newsService);

  Service _newsService;

  @Input()
  List<News> news;

  @override
  ngOnInit() async {
    news = (await _newsService.getVijesti());
  }

  addNews() async {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formatted = formatter.format(now);

    TextAreaElement elementVijest = querySelector('#vijest');
    InputElement elementNaslov = querySelector('#naslov');
    InputElement elementSlika = querySelector('#slika');
    news.add(new News(
        2, elementNaslov.value, elementVijest.value, formatted,
        'images/`logo@2x.png'));
  }
}