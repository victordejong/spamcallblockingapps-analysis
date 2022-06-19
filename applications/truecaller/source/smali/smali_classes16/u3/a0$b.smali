.class public final Lu3/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p10

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    :goto_0
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v3, 0x20

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v3, p9

    :goto_6
    const-string v10, "$this$canonicalize"

    .line 2
    invoke-static {v1, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "encodeSet"

    invoke-static {v2, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move v10, v4

    :goto_7
    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ge v10, v5, :cond_1f

    .line 3
    invoke-virtual {v1, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    const/16 v13, 0x7f

    const/16 v14, 0x20

    const/4 v15, 0x2

    if-lt v12, v14, :cond_a

    if-eq v12, v13, :cond_a

    const/16 v13, 0x80

    if-lt v12, v13, :cond_7

    if-eqz v9, :cond_a

    :cond_7
    int-to-char v13, v12

    const/4 v14, 0x0

    .line 4
    invoke-static {v2, v13, v14, v15}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result v13

    if-nez v13, :cond_a

    const/16 v13, 0x25

    if-ne v12, v13, :cond_8

    if-eqz v6, :cond_a

    if-eqz v7, :cond_8

    .line 5
    invoke-virtual {v0, v1, v10, v5}, Lu3/a0$b;->c(Ljava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_8
    const/16 v13, 0x2b

    if-ne v12, v13, :cond_9

    if-eqz v8, :cond_9

    goto :goto_8

    .line 6
    :cond_9
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_7

    .line 7
    :cond_a
    :goto_8
    new-instance v12, Lv3/f;

    invoke-direct {v12}, Lv3/f;-><init>()V

    .line 8
    invoke-virtual {v12, v1, v4, v10}, Lv3/f;->L0(Ljava/lang/String;II)Lv3/f;

    const/4 v4, 0x0

    :goto_9
    if-ge v10, v5, :cond_1e

    .line 9
    invoke-virtual {v1, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    if-eqz v6, :cond_b

    const/16 v14, 0x9

    if-eq v13, v14, :cond_d

    const/16 v14, 0xa

    if-eq v13, v14, :cond_d

    const/16 v14, 0xc

    if-eq v13, v14, :cond_d

    const/16 v14, 0xd

    if-eq v13, v14, :cond_d

    :cond_b
    const/16 v14, 0x2b

    if-ne v13, v14, :cond_e

    if-eqz v8, :cond_e

    if-eqz v6, :cond_c

    const-string v14, "+"

    goto :goto_a

    :cond_c
    const-string v14, "%2B"

    .line 10
    :goto_a
    invoke-virtual {v12, v14}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    :cond_d
    move/from16 p2, v8

    goto/16 :goto_11

    :cond_e
    const/16 v14, 0x20

    if-lt v13, v14, :cond_11

    const/16 v14, 0x7f

    if-eq v13, v14, :cond_11

    const/16 v14, 0x80

    if-lt v13, v14, :cond_f

    if-eqz v9, :cond_11

    :cond_f
    int-to-char v14, v13

    move/from16 p2, v8

    const/4 v8, 0x0

    .line 11
    invoke-static {v2, v14, v8, v15}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result v8

    if-nez v8, :cond_12

    const/16 v8, 0x25

    if-ne v13, v8, :cond_10

    if-eqz v6, :cond_12

    if-eqz v7, :cond_10

    .line 12
    invoke-virtual {v0, v1, v10, v5}, Lu3/a0$b;->c(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_b

    .line 13
    :cond_10
    invoke-virtual {v12, v13}, Lv3/f;->Q0(I)Lv3/f;

    goto/16 :goto_11

    :cond_11
    move/from16 p2, v8

    :cond_12
    :goto_b
    if-nez v4, :cond_13

    .line 14
    new-instance v4, Lv3/f;

    invoke-direct {v4}, Lv3/f;-><init>()V

    :cond_13
    if-eqz v3, :cond_1c

    .line 15
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto/16 :goto_f

    .line 16
    :cond_14
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v10

    const-string v14, "string"

    .line 17
    invoke-static {v1, v14}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "charset"

    invoke-static {v3, v14}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    if-ltz v10, :cond_15

    move v15, v14

    goto :goto_c

    :cond_15
    const/4 v15, 0x0

    :goto_c
    if-eqz v15, :cond_1b

    if-lt v8, v10, :cond_16

    move v15, v14

    goto :goto_d

    :cond_16
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_1a

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v8, v15, :cond_17

    goto :goto_e

    :cond_17
    const/4 v14, 0x0

    :goto_e
    if-eqz v14, :cond_19

    .line 19
    sget-object v14, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-static {v3, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v1, v10, v8}, Lv3/f;->L0(Ljava/lang/String;II)Lv3/f;

    goto :goto_10

    .line 20
    :cond_18
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v14, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v8, v14}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    array-length v14, v8

    const/4 v15, 0x0

    invoke-virtual {v4, v8, v15, v14}, Lv3/f;->z0([BII)Lv3/f;

    goto :goto_10

    :cond_19
    const-string v0, "endIndex > string.length: "

    const-string v2, " > "

    .line 22
    invoke-static {v0, v8, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    const-string v0, "endIndex < beginIndex: "

    const-string v1, " < "

    .line 23
    invoke-static {v0, v8, v1, v10}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const-string v0, "beginIndex < 0: "

    .line 24
    invoke-static {v0, v10}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_1c
    :goto_f
    invoke-virtual {v4, v13}, Lv3/f;->Q0(I)Lv3/f;

    .line 26
    :goto_10
    invoke-virtual {v4}, Lv3/f;->N1()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 27
    invoke-virtual {v4}, Lv3/f;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/16 v14, 0x25

    .line 28
    invoke-virtual {v12, v14}, Lv3/f;->B0(I)Lv3/f;

    .line 29
    sget-object v14, Lu3/a0;->k:[C

    shr-int/lit8 v15, v8, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v14, v15

    invoke-virtual {v12, v15}, Lv3/f;->B0(I)Lv3/f;

    and-int/lit8 v8, v8, 0xf

    .line 30
    aget-char v8, v14, v8

    invoke-virtual {v12, v8}, Lv3/f;->B0(I)Lv3/f;

    goto :goto_10

    .line 31
    :cond_1d
    :goto_11
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v10, v8

    const/4 v15, 0x2

    move/from16 v8, p2

    goto/16 :goto_9

    .line 32
    :cond_1e
    invoke-virtual {v12}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 33
    :cond_1f
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12
    return-object v0
.end method

.method public static d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;
    .locals 6

    and-int/lit8 p0, p5, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_2

    move p4, v0

    :cond_2
    const-string p0, "$this$percentDecode"

    .line 2
    invoke-static {p1, p0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move p0, p2

    :goto_0
    if-ge p0, p3, :cond_8

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x2b

    const/16 v1, 0x25

    if-eq p5, v1, :cond_4

    if-ne p5, v0, :cond_3

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4
    :cond_4
    :goto_1
    new-instance p5, Lv3/f;

    invoke-direct {p5}, Lv3/f;-><init>()V

    .line 5
    invoke-virtual {p5, p1, p2, p0}, Lv3/f;->L0(Ljava/lang/String;II)Lv3/f;

    :goto_2
    if-ge p0, p3, :cond_7

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, p0, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 v3, p0, 0x1

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lu3/p0/c;->q(C)I

    move-result v3

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lu3/p0/c;->q(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    if-eq v4, v5, :cond_6

    shl-int/lit8 p0, v3, 0x4

    add-int/2addr p0, v4

    .line 9
    invoke-virtual {p5, p0}, Lv3/f;->B0(I)Lv3/f;

    .line 10
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p0, v2

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_6

    const/16 p2, 0x20

    .line 11
    invoke-virtual {p5, p2}, Lv3/f;->B0(I)Lv3/f;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p5, p2}, Lv3/f;->Q0(I)Lv3/f;

    .line 13
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p0, p2

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p5}, Lv3/f;->Q()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 15
    :cond_8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "scheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x310888    # 4.503E-39f

    if-eq v0, v1, :cond_1

    const v1, 0x5f008eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x1bb

    goto :goto_1

    :cond_1
    const-string v0, "http"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public final c(Ljava/lang/String;II)Z
    .locals 3

    add-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-ge v0, p3, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0x25

    if-ne p3, v2, :cond_0

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lu3/p0/c;->q(C)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lu3/p0/c;->q(C)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toQueryNamesAndValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    const/16 v3, 0x26

    const/4 v4, 0x4

    .line 3
    invoke-static {p1, v3, v2, v1, v4}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v6, 0x3d

    .line 5
    invoke-static {p1, v6, v2, v1, v4}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v5, :cond_2

    if-le v4, v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
