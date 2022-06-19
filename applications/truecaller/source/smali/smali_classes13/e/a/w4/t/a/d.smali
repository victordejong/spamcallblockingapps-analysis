.class public Le/a/w4/t/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static b:Le/a/b4/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 1
    sput-object v0, Le/a/w4/t/a/d;->a:[I

    const/16 v1, 0x3f

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x13

    aput v2, v0, v1

    return-void
.end method

.method public static a()Le/a/b4/a/c;
    .locals 2

    .line 1
    sget-object v0, Le/a/w4/t/a/d;->b:Le/a/b4/a/c;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Le/a/j4/b/a/h;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Le/a/w4/t/a/d;->c(Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-object v0, Le/a/w4/t/a/d;->b:Le/a/b4/a/c;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    const v4, 0x7fffffff

    if-ne v2, v3, :cond_0

    const/4 v4, -0x2

    goto :goto_1

    :cond_0
    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    const/4 v4, -0x3

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Le/a/w4/t/a/d;->a()Le/a/b4/a/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Le/a/b4/a/c;->d(C)C

    move-result v3

    if-eq v3, v2, :cond_3

    .line 5
    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    :cond_4
    :goto_1
    const/16 v2, 0x9

    if-gt v4, v2, :cond_5

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->U()Le/a/b4/a/d;

    move-result-object v0

    if-nez p0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/b4/a/d;->b()Le/a/b4/a/c;

    move-result-object p0

    sput-object p0, Le/a/w4/t/a/d;->b:Le/a/b4/a/c;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p0}, Le/a/b4/a/d;->a(Ljava/lang/String;)Le/a/b4/a/c;

    move-result-object p0

    sput-object p0, Le/a/w4/t/a/d;->b:Le/a/b4/a/c;

    :goto_0
    return-void
.end method
