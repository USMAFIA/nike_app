
bool isImageValid(String imageUrl){
  return imageUrl.contains('https:') || imageUrl.contains('http:');
}
bool isImageAsset(String imageUrl){
  return imageUrl.contains('assets/images');
}