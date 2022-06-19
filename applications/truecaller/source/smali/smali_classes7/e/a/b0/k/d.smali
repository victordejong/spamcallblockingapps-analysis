.class public final Le/a/b0/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/b0/k/c;

.field public static final b:Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/k/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/k/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Le/a/b0/k/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Le/a/b0/k/d;

    invoke-direct {v0}, Le/a/b0/k/d;-><init>()V

    sput-object v0, Le/a/b0/k/d;->h:Le/a/b0/k/d;

    .line 2
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "English"

    const-string v2, "en"

    const-string v3, "GB"

    invoke-direct {v0, v1, v2, v3}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/a/b0/k/d;->a:Le/a/b0/k/c;

    const-string v1, "zz"

    .line 3
    sput-object v1, Le/a/b0/k/d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "lenovo"

    const-string v4, "pa"

    const-string v5, "gu"

    const-string v6, "si"

    .line 4
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v2, v7

    sput-object v2, Le/a/b0/k/d;->c:[[Ljava/lang/String;

    const-string v2, "zh_CN"

    const-string v3, "zh_TW"

    .line 5
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Le/a/b0/k/d;->d:[Ljava/lang/String;

    const-string v8, "ko"

    .line 6
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Le/a/b0/k/d;->e:[Ljava/lang/String;

    const/16 v9, 0xb

    new-array v10, v9, [Le/a/b0/k/c;

    aput-object v0, v10, v7

    .line 7
    new-instance v11, Le/a/b0/k/c;

    const-string v12, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const-string v13, "ar"

    const-string v14, "SA"

    invoke-direct {v11, v12, v13, v14}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v10, v1

    .line 8
    new-instance v11, Le/a/b0/k/c;

    const-string v15, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    const-string v9, "bg"

    const-string v1, "BG"

    invoke-direct {v11, v15, v9, v1}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x2

    aput-object v11, v10, v16

    .line 9
    new-instance v11, Le/a/b0/k/c;

    const-string v7, "\u7b80\u4e2d"

    move-object/from16 v17, v6

    const-string v6, "CN"

    invoke-direct {v11, v7, v2, v6}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x3

    aput-object v11, v10, v18

    .line 10
    new-instance v11, Le/a/b0/k/c;

    move-object/from16 v19, v4

    const-string v4, "\u7e41\u4e2d"

    invoke-direct {v11, v4, v3, v6}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x4

    aput-object v11, v10, v20

    .line 11
    new-instance v11, Le/a/b0/k/c;

    move-object/from16 v21, v5

    const-string v5, "\u03b5\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    move-object/from16 v22, v3

    const-string v3, "el"

    move-object/from16 v23, v4

    const-string v4, "GR"

    invoke-direct {v11, v5, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v11, v10, v3

    .line 12
    new-instance v3, Le/a/b0/k/c;

    const-string v4, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    const-string v5, "iw"

    const-string v11, "IL"

    invoke-direct {v3, v4, v5, v11}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v3, v10, v4

    .line 13
    new-instance v3, Le/a/b0/k/c;

    const-string v4, "\ud55c\uad6d\uc5b4"

    const-string v5, "KR"

    invoke-direct {v3, v4, v8, v5}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v3, v10, v4

    .line 14
    new-instance v3, Le/a/b0/k/c;

    const-string v4, "\u0641\u0627\u0631\u0633\u06cc"

    const-string v5, "fa"

    const-string v11, "IR"

    invoke-direct {v3, v4, v5, v11}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v10, v4

    .line 15
    new-instance v3, Le/a/b0/k/c;

    const-string v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v5, "ru"

    const-string v11, "RU"

    invoke-direct {v3, v4, v5, v11}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v3, v10, v4

    .line 16
    new-instance v3, Le/a/b0/k/c;

    const-string v4, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    const-string v5, "uk"

    const-string v11, "UA"

    invoke-direct {v3, v4, v5, v11}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-object v3, v10, v4

    .line 17
    invoke-static {v10}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Le/a/b0/k/d;->f:Ljava/util/List;

    const/16 v3, 0x2f

    new-array v3, v3, [Le/a/b0/k/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 18
    new-instance v0, Le/a/b0/k/c;

    invoke-direct {v0, v12, v13, v14}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 19
    new-instance v0, Le/a/b0/k/c;

    const-string v4, "\u09ac\u09be\u0982\u09b2\u09be"

    const-string v5, "bn"

    const-string v10, "IN"

    invoke-direct {v0, v4, v5, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v16

    .line 20
    new-instance v0, Le/a/b0/k/c;

    invoke-direct {v0, v15, v9, v1}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v18

    .line 21
    new-instance v0, Le/a/b0/k/c;

    invoke-direct {v0, v7, v2, v6}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v20

    .line 22
    new-instance v0, Le/a/b0/k/c;

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v6}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v3, v1

    .line 23
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u010ce\u0161tina"

    const-string v2, "cs"

    const-string v4, "CZ"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v3, v1

    .line 24
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Dansk"

    const-string v2, "da"

    const-string v4, "DK"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 25
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Deutsch"

    const-string v2, "de"

    const-string v4, "DE"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v3, v1

    .line 26
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v3, v1

    .line 27
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Espa\u00f1ol"

    const-string v2, "es"

    const-string v4, "ES"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v3, v1

    .line 28
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Espa\u00f1ol (Latinoamericano)"

    const-string v2, "es"

    const-string v4, "MX"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v3, v1

    .line 29
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Suomi"

    const-string v2, "fi"

    const-string v4, "FI"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v3, v1

    .line 30
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Fran\u00e7ais"

    const-string v2, "fr"

    const-string v4, "FR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v3, v1

    .line 31
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u03b5\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    const-string v2, "el"

    const-string v4, "GR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v3, v1

    .line 32
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    const-string v2, "iw"

    const-string v4, "IL"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v3, v1

    .line 33
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0939\u093f\u0902\u0926\u0940"

    const-string v2, "hi"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v3, v1

    .line 34
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Hrvatski"

    const-string v2, "hr"

    const-string v4, "HR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-object v0, v3, v1

    .line 35
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Indonesia"

    const-string v2, "in"

    const-string v4, "ID"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-object v0, v3, v1

    .line 36
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Italiano"

    const-string v2, "it"

    const-string v4, "IT"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-object v0, v3, v1

    .line 37
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u65e5\u672c\u8a9e"

    const-string v2, "ja"

    const-string v4, "JP"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x14

    aput-object v0, v3, v1

    .line 38
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    const-string v2, "kn"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-object v0, v3, v1

    .line 39
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Kiswahili"

    const-string v2, "sw"

    const-string v4, "KE"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x16

    aput-object v0, v3, v1

    .line 40
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\ud55c\uad6d\uc5b4"

    const-string v2, "KR"

    invoke-direct {v0, v1, v8, v2}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x17

    aput-object v0, v3, v1

    .line 41
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u092e\u0930\u093e\u0920\u0940"

    const-string v2, "mr"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-object v0, v3, v1

    .line 42
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Magyar"

    const-string v2, "hu"

    const-string v4, "HU"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x19

    aput-object v0, v3, v1

    .line 43
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Melayu"

    const-string v2, "ms"

    const-string v4, "MY"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1a

    aput-object v0, v3, v1

    .line 44
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    const-string v2, "ml"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1b

    aput-object v0, v3, v1

    .line 45
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Nederlands"

    const-string v2, "nl"

    const-string v4, "NL"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1c

    aput-object v0, v3, v1

    .line 46
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0928\u0947\u092a\u093e\u0932\u0940"

    const-string v2, "ne"

    const-string v4, "NP"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1d

    aput-object v0, v3, v1

    .line 47
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Norsk"

    const-string v2, "nb"

    const-string v4, "NO"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-object v0, v3, v1

    .line 48
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0641\u0627\u0631\u0633\u06cc"

    const-string v2, "fa"

    const-string v4, "IR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1f

    aput-object v0, v3, v1

    .line 49
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Polski"

    const-string v2, "pl"

    const-string v4, "PL"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-object v0, v3, v1

    .line 50
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Portugu\u00eas (Brasil)"

    const-string v2, "pt"

    const-string v4, "BR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    aput-object v0, v3, v1

    .line 51
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    aput-object v0, v3, v1

    .line 52
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Rom\u00e2n\u0103"

    const-string v2, "ro"

    const-string v4, "RO"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x23

    aput-object v0, v3, v1

    .line 53
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v2, "ru"

    const-string v4, "RU"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-object v0, v3, v1

    .line 54
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0dc3\u0dd2\u0d82\u0dc4\u0dbd"

    const-string v2, "LK"

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v4, v2}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x25

    aput-object v0, v3, v1

    .line 55
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Svenska"

    const-string v2, "sv"

    const-string v4, "SE"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x26

    aput-object v0, v3, v1

    .line 56
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "Filipino"

    const-string v2, "fil"

    const-string v4, "PH"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x27

    aput-object v0, v3, v1

    .line 57
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    const-string v2, "ta"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x28

    aput-object v0, v3, v1

    .line 58
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    const-string v2, "te"

    invoke-direct {v0, v1, v2, v10}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x29

    aput-object v0, v3, v1

    .line 59
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    const-string v2, "th"

    const-string v4, "TH"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2a

    aput-object v0, v3, v1

    .line 60
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "T\u00fcrk\u00e7e"

    const-string v2, "tr"

    const-string v4, "TR"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2b

    aput-object v0, v3, v1

    .line 61
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    const-string v2, "uk"

    const-string v4, "UA"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2c

    aput-object v0, v3, v1

    .line 62
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "\u0627\u0631\u062f\u0648"

    const-string v2, "ur"

    const-string v4, "PK"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2d

    aput-object v0, v3, v1

    .line 63
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "ti\u1ebfng Vi\u1ec7t"

    const-string v2, "vi"

    const-string v4, "VN"

    invoke-direct {v0, v1, v2, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2e

    aput-object v0, v3, v1

    .line 64
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/b0/k/d;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
