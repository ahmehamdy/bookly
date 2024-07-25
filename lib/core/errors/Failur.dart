
abstract class Failur{
  final String error;

  Failur(this.error);
}
class ServerError extends Failur{
  ServerError(super.error);


}