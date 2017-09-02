import 'package:angular/angular.dart';
import 'package:osiguranje/services/Service.dart';
import 'package:osiguranje/models/news.dart';

@Component(
  selector: 'pocetna',
  templateUrl: 'home_component.html',
  directives: const [CORE_DIRECTIVES],
)
class HomeComponent implements OnInit {

  HomeComponent(this._newsService);

  @Input()
  List<News> news;
  Service _newsService;

  @override
  ngOnInit() async {
    news = await(_newsService.getVijesti());
  }
}