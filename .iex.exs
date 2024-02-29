require Cldr
require MyApp.Cldr

alias Cldr.PersonName
import Cldr.LanguageTag.Sigil, only: :macros

{:ok, en_aq} = Cldr.validate_locale("en-AQ", MyApp.Cldr)
{:ok, ja_aq} = Cldr.validate_locale("ja-AQ", MyApp.Cldr)
{:ok, fr_aq} = Cldr.validate_locale("fr-AQ", MyApp.Cldr)
{:ok, de_aq} = Cldr.validate_locale("de-AQ", MyApp.Cldr)
{:ok, ko_aq} = Cldr.validate_locale("ko-AQ", MyApp.Cldr)
{:ok, es_aq} = Cldr.validate_locale("es-AQ", MyApp.Cldr)
{:ok, pt_aq} = Cldr.validate_locale("pt-AQ", MyApp.Cldr)
{:ok, ja_aq} = Cldr.validate_locale("ja-AQ", MyApp.Cldr)
{:ok, he_aq} = Cldr.validate_locale("he-AQ", MyApp.Cldr)
{:ok, zh_aq} = Cldr.validate_locale("zh-AQ", MyApp.Cldr)
{:ok, de} = Cldr.validate_locale("de", MyApp.Cldr)

# name ; given; Mary Sue
# name ; given2; Hamish
# name ; surname; Watson
# name ; locale; en_AQ

mary = %PersonName{given_name: "Mary Sue", other_given_names: "Hamish", surname: "Watson", locale: en_aq}

# name ; given; Käthe
# name ; surname; Müller
# name ; locale; ja_AQ

kathe = %PersonName{given_name: "Käthe", surname: "Müller", locale: ja_aq}

# name ; given; Irene
# name ; surname; Adler
# name ; locale; en_AQ

irene = %PersonName{given_name: "Irene", surname: "Adler", locale: en_aq}

# name ; given; Sinbad
# name ; locale; ja_AQ

sinbad = %PersonName{given_name: "Sinbad", locale: ja_aq}

# nativeG
# name ; given; Zendaya
# name ; locale; en_AQ

zendaya = %PersonName{given_name: "Zendaya", locale: en_aq}

# nativeFull
# name ; title; M.
# name ; given; Jean-Nicolas
# name ; given-informal; Nico
# name ; given2; Louis Marcel
# name ; surname-prefix; de
# name ; surname-core; Bouchart
# name ; generation; fils
# name ; locale; fr_AQ

jn = %PersonName{
  given_name: "Jean-Nicolas",
  informal_given_name: "Nico",
  other_given_names: "Louis Marcel",
  surname_prefix: "de",
  surname: "Bouchart",
  generation: "fils",
  locale: fr_aq
}

# nativeG
# name ; given; Adèle
# name ; locale; fr_AQ

adele = %PersonName{given_name: "Adèle", locale: fr_aq}

# nativeG
# name ; given; Iris
# name l surnameL Falke
# name ; locale; de

iris = %PersonName{given_name: "Iris", surname: "Falke", locale: de}

# nativeFull
# name ; title; Dr.
# name ; given; Paul
# name ; given-informal; Pauli
# name ; given2; Vinzent
# name ; surname-prefix; von
# name ; surname-core; Fischer
# name ; generation; jr.
# name ; credentials; MdB
# name ; locale; de_AQ

paul = %PersonName{
  title: "Dr.",
  given_name: "Paul",
  informal_given_name: "Pauli",
  other_given_names: "Vinzent",
  surname_prefix: "von",
  surname: "Fischer",
  generation: "jr.",
  credentials: "MdB",
  locale: de_aq
}

# foreignGS
# name ; given; Adélaïde
# name ; surname; Lemaître
# name ; locale; ko_AQ

adelaide = %PersonName{given_name: "Adélaïde", surname: "Lemaître", locale: ko_aq}

# nativeFull
# name ; title; Sr.
# name ; given; Miguel Ángel
# name ; given-informal; Migue
# name ; given2; Juan Antonio
# name ; surname-core; Pablo
# name ; surname2; Pérez
# name ; generation; II
# name ; locale; es_AQ

pablo = %PersonName{
  title: "Sr.",
  given_name: "Miguel Ángel",
  informal_given_name: "Migue",
  other_given_names: "Juan Antonio",
  surname: "Pablo",
  other_surnames: "Pérez",
  generation: "II",
  locale: es_aq
}

# name ; given; Rosa
# name ; given2; María
# name ; surname; Ruiz
# name ; locale; es_AQ

rosa = %PersonName{given_name: "Rosa", other_given_names: "María", surname: "Ruiz", locale: es_aq}

# name ; given; Maria
# name ; surname; Silva
# name ; locale; pt_AQ

maria = %PersonName{given_name: "Maria", surname: "Silva", locale: pt_aq}

# name ; given; 一郎
# name ; surname; 安藤
# name ; locale; ja_AQ

ichiro = %PersonName{given_name: "一郎", surname: "安藤", locale: ja_aq}

# name ; given; יונתן
# name ; given2; חיים
# name ; surname; כהן
# name ; locale; he_AQ

jonathan = %PersonName{
  given_name: "יונתן",
  other_given_names: "חיים",
  surname: "כהן",
  locale: he_aq
}

# name ; given; 俊年
# name ; given2; 杰思
# name ; surname; 陈
# name ; locale; zh_AQ

pretty = %PersonName{given_name: "俊年", other_given_names: "杰思", surname: "陈", locale: zh_aq}

# name ; title; 先生
# name ; given; 德威
# name ; given-informal; 小德
# name ; given2; 东升
# name ; surname-core; 彭
# name ; generation; 小
# name ; credentials; 议员
# name ; locale; zh_AQ

virtue = %PersonName{
  title: "先生",
  given_name: "德威",
  informal_given_name: "小德",
  other_given_names: "东升",
  surname: "彭",
  other_surnames: "Pérez",
  generation: "小",
  credentials: "议员",
  locale: zh_aq
}

