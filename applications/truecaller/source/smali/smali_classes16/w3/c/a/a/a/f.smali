.class public Lw3/c/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lw3/c/a/a/a/f;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(IZZ)Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lw3/c/a/a/a/f;->a:Ljava/util/Random;

    if-nez p0, :cond_0

    const-string p0, ""

    goto/16 :goto_4

    :cond_0
    if-ltz p0, :cond_c

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7b

    const/16 v2, 0x20

    .line 2
    :goto_0
    new-array v3, p0, [C

    sub-int/2addr v1, v2

    :goto_1
    add-int/lit8 v4, p0, -0x1

    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, v2

    int-to-char p0, p0

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    :cond_4
    const/16 v5, 0x80

    const v6, 0xd800

    const v7, 0xdc00

    if-lt p0, v7, :cond_6

    const v8, 0xdfff

    if-gt p0, v8, :cond_6

    if-nez v4, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    aput-char p0, v3, v4

    add-int/lit8 v4, v4, -0x1

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, v6

    int-to-char p0, p0

    aput-char p0, v3, v4

    goto :goto_3

    :cond_6
    if-lt p0, v6, :cond_8

    const v6, 0xdb7f

    if-gt p0, v6, :cond_8

    if-nez v4, :cond_7

    goto :goto_2

    .line 7
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    .line 8
    aput-char p0, v3, v4

    goto :goto_3

    :cond_8
    const v5, 0xdb80

    if-lt p0, v5, :cond_9

    const v5, 0xdbff

    if-gt p0, v5, :cond_9

    goto :goto_2

    .line 9
    :cond_9
    aput-char p0, v3, v4

    goto :goto_3

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    :goto_3
    move p0, v4

    goto :goto_1

    .line 10
    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :goto_4
    return-object p0

    .line 11
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested random string length "

    const-string v0, " is less than 0."

    invoke-static {p2, p0, v0}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lw3/c/a/a/a/f;->a(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
