import 'package:angular/angular.dart';
import 'package:osiguranje/models/news.dart';
import 'package:osiguranje/services/news_service.dart';

@Component(
  selector: 'pocetna',
  templateUrl: 'home_component.html',
  directives: const [CORE_DIRECTIVES],
  providers: const [NewsService]
)
class HomeComponent implements OnInit {

  HomeComponent(this._newsService);

  List<News> news;
  NewsService _newsService;

  @override
  ngOnInit() async {
    news = await _newsService.getAllOnce();
  }
}