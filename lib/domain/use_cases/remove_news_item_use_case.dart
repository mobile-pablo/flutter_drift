import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/core/utils/usecase.dart';
import 'package:flutter_drift_1/domain/repository/news_repository_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveNewsItemUseCase extends UseCase<void, NewsItemDTO> {
  final NewsRepositoryImpl _newsRepository;

  RemoveNewsItemUseCase(this._newsRepository);

  @override
  Future<void> call(NewsItemDTO params) =>
      _newsRepository.removeNews(params);
}
