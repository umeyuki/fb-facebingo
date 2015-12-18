require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  @thumbnails = [
    "https://scontent.xx.fbcdn.net/hprofile-xfp1/v/t1.0-1/p100x100/150497_109074259254709_1577858473_n.jpg?oh=d71ff02f9d0a2fac8a77d6d32382c603&oe=570F04B6",
    "https://scontent.xx.fbcdn.net/hprofile-xfa1/v/t1.0-1/s100x100/11101620_1388654811460837_5756128866224745278_n.jpg?oh=891e247ca5b20f2947dbc9638eda7550&oe=56E3E055",
    "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p100x100/61497_100697456798369_119514932_n.jpg?oh=42cc1be45214de43272fc5649e1159f4&oe=56DDD46A",
    "https://scontent.xx.fbcdn.net/hprofile-xpt1/v/t1.0-1/p100x100/69220_215233335285358_876095414_n.jpg?oh=68095aef668c9aa31c43d04470de3b09&oe=5721DCE9",
    "https://scontent.xx.fbcdn.net/hprofile-frc3/v/t1.0-1/p100x100/549170_392095807593196_1286505887_n.jpg?oh=d20f83b32d784537e3084ceb92967057&oe=5710AB14",
    "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p100x100/395202_112176635577549_1178785785_n.jpg?oh=07420635c32d27ed1b82b55923ccfca3&oe=570DF3D1",
    "https://scontent.xx.fbcdn.net/hprofile-xla1/v/t1.0-1/s100x100/1379841_10150004552801901_469209496895221757_n.jpg?oh=ddad5a9d4773eddb612be3d0c7bd7f40&oe=5712A497",
    "https://scontent.xx.fbcdn.net/hprofile-xfp1/v/t1.0-1/p100x100/11162521_784637591649735_4451575616549986192_n.jpg?oh=826dda17d8393c7edf12eb7dc8208845&oe=5717EA7E",
    "https://scontent.xx.fbcdn.net/hprofile-xla1/v/t1.0-1/p100x100/383687_178247755607565_1685289162_n.jpg?oh=dc665e9be63586329ee1e1c694f5733e&oe=56DE1EFF",
    "https://scontent.xx.fbcdn.net/hprofile-xpa1/v/t1.0-1/p100x100/735143_397025697054041_1094715070_n.jpg?oh=672e263953265fb1a4d460369c6dd0ee&oe=571E7B70",
    "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p100x100/303521_159437284140926_336360005_n.jpg?oh=5636214e419cf7ab6289b82f69a2def9&oe=56D6BE35",
    "https://scontent.xx.fbcdn.net/hprofile-frc3/v/t1.0-1/p100x100/10153050_635716479844743_648228160516861661_n.jpg?oh=29f96e50db6f7f594959b71d05fc3bef&oe=5717E4B0",
    "https://scontent.xx.fbcdn.net/hprofile-ash2/v/t1.0-1/p100x100/733765_437755646300408_156467642_n.jpg?oh=a5687895144b3a517161976c09ba74b9&oe=56D56607",
    "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p100x100/400704_513092132091195_1913698707_n.jpg?oh=4f5aa428fa9d1253eac1aa20fbe44b5a&oe=56DF4465",
    "https://scontent.xx.fbcdn.net/hprofile-prn2/v/t1.0-1/p100x100/559989_469575226425026_1684331714_n.jpg?oh=9f3192f83de29eb622fd2cb74eb8eda4&oe=56DF9384",
    "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p100x100/10413384_394000937443113_6801705662564953478_n.jpg?oh=6cf4c322e92f6dcb3bd7e5cca5830710&oe=570C2F4D",
    "https://scontent.xx.fbcdn.net/hprofile-xpa1/v/t1.0-1/p100x100/10653788_653582568082872_7504273207220816938_n.jpg?oh=557d7c8a220de74f9e5e0847f38841ac&oe=5718D348"
  ]
  erb :index
end

get '/roulette' do
  @pictures =
    [
      "https://scontent.xx.fbcdn.net/hprofile-ash2/v/t1.0-1/p200x200/733765_437755646300408_156467642_n.jpg?oh=5edff2f429936c5cfc01a14102f0108c&oe=56DF9AC1",
      "https://scontent.xx.fbcdn.net/hprofile-xfp1/v/t1.0-1/150497_109074259254709_1577858473_n.jpg?oh=d42508fbb307161473013852d5cc93a8&oe=571B4C44",
      "https://scontent.xx.fbcdn.net/hprofile-xpa1/v/t1.0-1/p200x200/10653788_653582568082872_7504273207220816938_n.jpg?oh=57e2ac0f28b297f5004b7c84cc4c3c7a&oe=57199D27",
      "https://scontent.xx.fbcdn.net/hprofile-xfp1/v/t1.0-1/p200x200/11162521_784637591649735_4451575616549986192_n.jpg?oh=356e02416a33b899dd0eac2c799e5091&oe=56DC5011",
      "https://scontent.xx.fbcdn.net/hprofile-xla1/v/t1.0-1/p200x200/383687_178247755607565_1685289162_n.jpg?oh=f83d469975c0c115e8004dbf62f51d46&oe=570E2D5D",
      "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p200x200/395202_112176635577549_1178785785_n.jpg?oh=1bcc013f8fde57703fb6237ca216cafe&oe=571B4873",
      "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p200x200/303521_159437284140926_336360005_n.jpg?oh=8ceae94b0f2b4a2c1fa6ce4bbb0c8e32&oe=56D6DFF3",
      "https://scontent.xx.fbcdn.net/hprofile-prn2/v/t1.0-1/p200x200/559989_469575226425026_1684331714_n.jpg?oh=13529a273ecea2e3756bba884431e372&oe=570D1826",
      "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p200x200/400704_513092132091195_1913698707_n.jpg?oh=a98a9fb09590947921b106fcf2395ecc&oe=56D5A2C7",
      "https://scontent.xx.fbcdn.net/hprofile-xpa1/v/t1.0-1/p200x200/735143_397025697054041_1094715070_n.jpg?oh=7259e3d5e149ccdc6a6f3dc0d8099aff&oe=5715D6D2",
      "https://scontent.xx.fbcdn.net/hprofile-frc3/v/t1.0-1/p200x200/549170_392095807593196_1286505887_n.jpg?oh=9fd555d85eded4a56500e9c542f9ddda&oe=570EB5B6",
      "https://scontent.xx.fbcdn.net/hprofile-xaf1/v/t1.0-1/p200x200/61497_100697456798369_119514932_n.jpg?oh=e7f24588a7262f16fe625783bf80ecaf&oe=571D1E5D",
      "https://scontent.xx.fbcdn.net/hprofile-xpt1/v/t1.0-1/69220_215233335285358_876095414_n.jpg?oh=93692af6f05ebf9319db323f71c4f1e8&oe=56D47676",
      "https://scontent.xx.fbcdn.net/hprofile-xla1/v/t1.0-1/s200x200/1379841_10150004552801901_469209496895221757_n.jpg?oh=909e820c5862058afbcf1ceca191cb97&oe=571740F8",
      "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p200x200/10413384_394000937443113_6801705662564953478_n.jpg?oh=5f251ede96839ce81255f9fe9999c503&oe=57139B22",
      "https://scontent.xx.fbcdn.net/hprofile-frc3/v/t1.0-1/p200x200/10153050_635716479844743_648228160516861661_n.jpg?oh=7c17a3ec2cc8eb40ccb3ca77fb356351&oe=56DB81DF",
      "https://scontent.xx.fbcdn.net/hprofile-xfa1/v/t1.0-1/s200x200/11101620_1388654811460837_5756128866224745278_n.jpg?oh=994536e3696513c13e8ff126843af137&oe=570D2B76"
    ]
  erb :roulette
end
