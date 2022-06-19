.class public final Le/m/i/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/i/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([[BI)Le/m/i/j/b;
    .locals 8

    .line 1
    new-instance v0, Le/m/i/j/b;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Le/m/i/j/b;-><init>(II)V

    .line 2
    iget-object v2, v0, Le/m/i/j/b;->d:[I

    array-length v2, v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 3
    iget-object v4, v0, Le/m/i/j/b;->d:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v2, v0, Le/m/i/j/b;->b:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    .line 5
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 6
    aget-object v5, p0, v4

    move v6, v1

    .line 7
    :goto_2
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 8
    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_1

    add-int v7, v6, p1

    .line 9
    invoke-virtual {v0, v7, v2}, Le/m/i/j/b;->b(II)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static c([[B)[[B
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v2, v0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    move v5, v0

    .line 4
    :goto_1
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 5
    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/i/a;",
            "II",
            "Ljava/util/Map<",
            "Le/m/i/c;",
            "*>;)",
            "Le/m/i/j/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/i/h;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    sget-object v4, Le/m/i/a;->k:Le/m/i/a;

    move-object/from16 v5, p2

    if-ne v5, v4, :cond_40

    .line 2
    sget-object v4, Le/m/i/m/b/c;->a:Le/m/i/m/b/c;

    if-eqz v3, :cond_6

    .line 3
    sget-object v5, Le/m/i/c;->g:Le/m/i/c;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 5
    :goto_0
    sget-object v6, Le/m/i/c;->h:Le/m/i/c;

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/m/i/m/b/c;->valueOf(Ljava/lang/String;)Le/m/i/m/b/c;

    move-result-object v4

    .line 7
    :cond_1
    sget-object v6, Le/m/i/c;->i:Le/m/i/c;

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/i/m/b/d;

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    const/16 v7, 0x1e

    const/4 v8, 0x2

    const/16 v9, 0x1e

    .line 10
    :goto_1
    sget-object v10, Le/m/i/c;->f:Le/m/i/c;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 11
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_3
    const/16 v10, 0x1e

    .line 12
    :goto_2
    sget-object v11, Le/m/i/c;->a:Le/m/i/c;

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 13
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_3

    :cond_4
    const/4 v11, 0x2

    .line 14
    :goto_3
    sget-object v12, Le/m/i/c;->b:Le/m/i/c;

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 15
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x1e

    const/4 v8, 0x2

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/4 v11, 0x2

    .line 16
    :goto_4
    invoke-static {v11}, Le/m/i/m/b/f;->a(I)I

    move-result v12

    .line 17
    sget-object v13, Le/m/i/m/b/g;->a:[B

    .line 18
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v3, :cond_7

    .line 19
    sget-object v3, Le/m/i/m/b/g;->e:Ljava/nio/charset/Charset;

    goto :goto_5

    .line 20
    :cond_7
    sget-object v14, Le/m/i/m/b/g;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 21
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    .line 22
    sget-object v15, Le/m/i/j/c;->E:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/m/i/j/c;

    if-eqz v14, :cond_b

    .line 23
    iget-object v14, v14, Le/m/i/j/c;->a:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-ltz v14, :cond_8

    const/16 v15, 0x384

    if-ge v14, v15, :cond_8

    const/16 v15, 0x39f

    .line 24
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v14, v14

    .line 25
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const v15, 0xc5f94

    if-ge v14, v15, :cond_9

    const/16 v15, 0x39e

    .line 26
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    div-int/lit16 v15, v14, 0x384

    add-int/lit8 v15, v15, -0x1

    int-to-char v15, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    rem-int/lit16 v14, v14, 0x384

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    const v15, 0xc6318

    if-ge v14, v15, :cond_a

    const/16 v15, 0x39d

    .line 29
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v15, 0xc5f94

    sub-int/2addr v15, v14

    int-to-char v14, v15

    .line 30
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 31
    :cond_a
    new-instance v0, Le/m/i/h;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/i/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_b
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 33
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v15, 0x1

    if-eq v4, v15, :cond_25

    const/4 v15, 0x2

    if-eq v4, v15, :cond_24

    const/4 v15, 0x3

    if-eq v4, v15, :cond_23

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_6
    const/16 v16, 0x0

    :goto_7
    if-ge v15, v14, :cond_22

    move/from16 p2, v10

    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v15, v10, :cond_d

    .line 35
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x0

    move v1, v15

    .line 36
    :cond_c
    :goto_8
    invoke-static/range {v17 .. v17}, Le/m/i/m/b/g;->f(C)Z

    move-result v19

    if-eqz v19, :cond_e

    if-ge v1, v10, :cond_e

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v10, :cond_c

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_8

    :cond_d
    const/16 v18, 0x0

    :cond_e
    move/from16 v1, v18

    const/16 v10, 0xd

    if-lt v1, v10, :cond_f

    const/16 v4, 0x386

    .line 38
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v0, v15, v1, v13}, Le/m/i/m/b/g;->b(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr v15, v1

    const/4 v4, 0x2

    move/from16 v10, p2

    move/from16 v1, p3

    goto :goto_6

    .line 40
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    move v2, v15

    :goto_9
    if-ge v2, v10, :cond_17

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    const/16 v19, 0x0

    move/from16 p5, v5

    move/from16 v5, v18

    move/from16 v18, v11

    move/from16 v11, v19

    :goto_a
    if-ge v11, v5, :cond_12

    .line 42
    invoke-static/range {v17 .. v17}, Le/m/i/m/b/g;->f(C)Z

    move-result v5

    if-eqz v5, :cond_11

    if-ge v2, v10, :cond_11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v10, :cond_10

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v17, v5

    :cond_10
    const/16 v5, 0xd

    goto :goto_a

    :cond_11
    const/16 v5, 0xd

    :cond_12
    if-lt v11, v5, :cond_13

    sub-int/2addr v2, v15

    sub-int/2addr v2, v11

    goto :goto_d

    :cond_13
    if-gtz v11, :cond_16

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x9

    if-eq v5, v11, :cond_15

    const/16 v11, 0xa

    if-eq v5, v11, :cond_15

    const/16 v11, 0xd

    if-eq v5, v11, :cond_15

    const/16 v11, 0x20

    if-lt v5, v11, :cond_14

    const/16 v11, 0x7e

    if-gt v5, v11, :cond_14

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-eqz v5, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_16
    move/from16 v5, p5

    move/from16 v11, v18

    goto :goto_9

    :cond_17
    move/from16 p5, v5

    move/from16 v18, v11

    :cond_18
    sub-int/2addr v2, v15

    :goto_d
    const/4 v5, 0x5

    if-ge v2, v5, :cond_20

    if-ne v1, v14, :cond_19

    goto/16 :goto_12

    .line 45
    :cond_19
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 46
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v15

    :goto_e
    if-ge v5, v2, :cond_1d

    .line 47
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xd

    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v6

    move/from16 v6, v20

    :goto_f
    if-ge v6, v11, :cond_1a

    .line 48
    invoke-static {v10}, Le/m/i/m/b/g;->f(C)Z

    move-result v10

    if-eqz v10, :cond_1a

    add-int/lit8 v6, v6, 0x1

    add-int v10, v5, v6

    if-ge v10, v2, :cond_1a

    .line 49
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xd

    goto :goto_f

    :cond_1a
    const/16 v10, 0xd

    if-lt v6, v10, :cond_1b

    goto :goto_10

    .line 50
    :cond_1b
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 51
    invoke-virtual {v1, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v10

    if-eqz v10, :cond_1c

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v17

    goto :goto_e

    .line 52
    :cond_1c
    new-instance v0, Le/m/i/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-encodable character detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " (Unicode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/i/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move/from16 v17, v6

    :goto_10
    sub-int/2addr v5, v15

    if-nez v5, :cond_1e

    const/4 v5, 0x1

    :cond_1e
    add-int/2addr v5, v15

    .line 53
    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1f

    if-nez v4, :cond_1f

    const/4 v2, 0x0

    .line 55
    invoke-static {v1, v2, v6, v2, v13}, Le/m/i/m/b/g;->a([BIIILjava/lang/StringBuilder;)V

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    .line 56
    array-length v6, v1

    invoke-static {v1, v2, v6, v4, v13}, Le/m/i/m/b/g;->a([BIIILjava/lang/StringBuilder;)V

    const/4 v4, 0x1

    const/16 v16, 0x0

    :goto_11
    move v15, v5

    goto :goto_13

    :cond_20
    :goto_12
    move/from16 v17, v6

    if-eqz v4, :cond_21

    const/16 v1, 0x384

    .line 57
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    const/4 v4, 0x0

    :cond_21
    move/from16 v1, v16

    .line 58
    invoke-static {v0, v15, v2, v13, v1}, Le/m/i/m/b/g;->c(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v1

    add-int/2addr v15, v2

    move/from16 v16, v1

    :goto_13
    move/from16 v10, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v11, v18

    goto/16 :goto_7

    :cond_22
    move/from16 p5, v5

    move/from16 v17, v6

    move/from16 p2, v10

    move/from16 v18, v11

    goto :goto_14

    :cond_23
    move/from16 p5, v5

    move/from16 v17, v6

    move/from16 p2, v10

    move/from16 v18, v11

    const/16 v1, 0x386

    .line 59
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1, v14, v13}, Le/m/i/m/b/g;->b(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_14

    :cond_24
    move/from16 p5, v5

    move/from16 v17, v6

    move/from16 p2, v10

    move/from16 v18, v11

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 62
    array-length v3, v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4, v13}, Le/m/i/m/b/g;->a([BIIILjava/lang/StringBuilder;)V

    goto :goto_14

    :cond_25
    move/from16 p5, v5

    move/from16 v17, v6

    move/from16 p2, v10

    move/from16 v18, v11

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1, v14, v13, v1}, Le/m/i/m/b/g;->c(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 64
    :goto_14
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, v17

    :goto_15
    if-gt v5, v7, :cond_29

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v12

    .line 66
    div-int v10, v6, v5

    add-int/lit8 v10, v10, 0x1

    mul-int v11, v5, v10

    add-int/2addr v6, v5

    if-lt v11, v6, :cond_26

    add-int/lit8 v10, v10, -0x1

    :cond_26
    if-lt v10, v8, :cond_29

    if-gt v10, v9, :cond_28

    mul-int/lit8 v6, v5, 0x11

    add-int/lit8 v6, v6, 0x45

    int-to-float v6, v6

    const v11, 0x3eb6c8b4    # 0.357f

    mul-float/2addr v6, v11

    int-to-float v11, v10

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v11, v13

    div-float/2addr v6, v11

    if-eqz v4, :cond_27

    const/high16 v11, 0x40400000    # 3.0f

    sub-float v13, v6, v11

    .line 67
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v13, v11

    if-gtz v11, :cond_28

    :cond_27
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v10, v3, v4

    move-object v4, v3

    move v3, v6

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_29
    if-nez v4, :cond_2c

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v12

    .line 68
    div-int v5, v3, v17

    const/4 v6, 0x1

    add-int/2addr v5, v6

    mul-int v7, v17, v5

    add-int v3, v3, v17

    if-lt v7, v3, :cond_2a

    add-int/lit8 v5, v5, -0x1

    :cond_2a
    if-ge v5, v8, :cond_2b

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v3, 0x0

    aput v17, v4, v3

    aput v8, v4, v6

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_16
    if-eqz v4, :cond_3f

    .line 69
    aget v3, v4, v3

    .line 70
    aget v4, v4, v6

    mul-int v5, v3, v4

    sub-int/2addr v5, v12

    add-int/lit8 v7, v2, 0x1

    if-le v5, v7, :cond_2d

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    :cond_2d
    const/4 v5, 0x0

    :goto_17
    add-int/2addr v12, v2

    add-int/2addr v12, v6

    const/16 v7, 0x3a1

    if-gt v12, v7, :cond_3e

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v2, v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v5, :cond_2e

    const/16 v2, 0x384

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 75
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Le/m/i/m/b/f;->a:[[I

    invoke-static/range {v18 .. v18}, Le/m/i/m/b/f;->a(I)I

    move-result v2

    .line 77
    new-array v5, v2, [C

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v6, :cond_30

    .line 79
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v2, -0x1

    aget-char v11, v5, v10

    add-int/2addr v9, v11

    rem-int/2addr v9, v7

    :goto_1a
    if-lez v10, :cond_2f

    .line 80
    aget-object v11, v1, v18

    aget v11, v11, v10

    mul-int/2addr v11, v9

    rem-int/2addr v11, v7

    rsub-int v11, v11, 0x3a1

    add-int/lit8 v12, v10, -0x1

    .line 81
    aget-char v13, v5, v12

    add-int/2addr v13, v11

    rem-int/2addr v13, v7

    int-to-char v11, v13

    aput-char v11, v5, v10

    move v10, v12

    goto :goto_1a

    .line 82
    :cond_2f
    aget-object v10, v1, v18

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-int/2addr v9, v10

    rem-int/2addr v9, v7

    rsub-int v9, v9, 0x3a1

    .line 83
    rem-int/2addr v9, v7

    int-to-char v9, v9

    aput-char v9, v5, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 84
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_32

    .line 85
    aget-char v6, v5, v2

    if-eqz v6, :cond_31

    .line 86
    aget-char v6, v5, v2

    rsub-int v6, v6, 0x3a1

    int-to-char v6, v6

    aput-char v6, v5, v2

    .line 87
    :cond_31
    aget-char v6, v5, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 88
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Le/m/i/m/b/a;

    invoke-direct {v2, v4, v3}, Le/m/i/m/b/a;-><init>(II)V

    .line 90
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Le/m/i/m/b/e;->a:[[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v4, :cond_37

    .line 92
    rem-int/lit8 v7, v6, 0x3

    .line 93
    iget v8, v2, Le/m/i/m/b/a;->b:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Le/m/i/m/b/a;->b:I

    const v8, 0x1fea8

    .line 94
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v9

    const/16 v10, 0x11

    invoke-static {v8, v10, v9}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    if-nez v7, :cond_33

    .line 95
    div-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x1e

    add-int/lit8 v9, v4, -0x1

    div-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v8

    add-int/lit8 v11, v3, -0x1

    goto :goto_1d

    :cond_33
    const/4 v8, 0x1

    if-ne v7, v8, :cond_34

    .line 96
    div-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x1e

    mul-int/lit8 v11, v18, 0x3

    add-int/2addr v11, v8

    add-int/lit8 v9, v4, -0x1

    rem-int/lit8 v12, v9, 0x3

    add-int/2addr v11, v12

    .line 97
    div-int/lit8 v9, v9, 0x3

    move/from16 v20, v11

    move v11, v9

    move/from16 v9, v20

    :goto_1d
    add-int/2addr v11, v8

    goto :goto_1e

    .line 98
    :cond_34
    div-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x1e

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v9, v8

    mul-int/lit8 v11, v18, 0x3

    add-int/2addr v11, v8

    add-int/lit8 v8, v4, -0x1

    .line 99
    rem-int/lit8 v8, v8, 0x3

    add-int/2addr v11, v8

    .line 100
    :goto_1e
    aget-object v8, v1, v7

    aget v8, v8, v9

    .line 101
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v9

    invoke-static {v8, v10, v9}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v3, :cond_35

    .line 102
    aget-object v9, v1, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v9, v9, v12

    .line 103
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v12

    invoke-static {v9, v10, v12}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_35
    const v8, 0x3fa29

    if-eqz p5, :cond_36

    .line 104
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v8, v9, v7}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    goto :goto_20

    .line 105
    :cond_36
    aget-object v7, v1, v7

    aget v7, v7, v11

    .line 106
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v9

    invoke-static {v7, v10, v9}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    const/16 v7, 0x12

    .line 107
    invoke-virtual {v2}, Le/m/i/m/b/a;->a()Le/m/i/m/b/b;

    move-result-object v9

    invoke-static {v8, v7, v9}, Le/m/i/m/b/e;->a(IILe/m/i/m/b/b;)V

    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    :cond_37
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v2, v1, v0}, Le/m/i/m/b/a;->b(II)[[B

    move-result-object v0

    const/4 v1, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    if-le v4, v3, :cond_38

    const/4 v5, 0x1

    goto :goto_21

    :cond_38
    const/4 v5, 0x0

    .line 109
    :goto_21
    aget-object v6, v0, v1

    array-length v6, v6

    array-length v7, v0

    if-ge v6, v7, :cond_39

    const/4 v6, 0x1

    goto :goto_22

    :cond_39
    move v6, v1

    :goto_22
    if-eq v5, v6, :cond_3a

    .line 110
    invoke-static {v0}, Le/m/i/m/a;->c([[B)[[B

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_23

    :cond_3a
    move v5, v1

    .line 111
    :goto_23
    aget-object v1, v0, v1

    array-length v1, v1

    div-int v1, v3, v1

    .line 112
    array-length v3, v0

    div-int v3, v4, v3

    if-ge v1, v3, :cond_3b

    goto :goto_24

    :cond_3b
    move v1, v3

    :goto_24
    const/4 v3, 0x1

    if-le v1, v3, :cond_3d

    shl-int/lit8 v0, v1, 0x2

    .line 113
    invoke-virtual {v2, v1, v0}, Le/m/i/m/b/a;->b(II)[[B

    move-result-object v0

    if-eqz v5, :cond_3c

    .line 114
    invoke-static {v0}, Le/m/i/m/a;->c([[B)[[B

    move-result-object v0

    :cond_3c
    move/from16 v10, p2

    .line 115
    invoke-static {v0, v10}, Le/m/i/m/a;->b([[BI)Le/m/i/j/b;

    move-result-object v0

    goto :goto_25

    :cond_3d
    move/from16 v10, p2

    .line 116
    invoke-static {v0, v10}, Le/m/i/m/a;->b([[BI)Le/m/i/j/b;

    move-result-object v0

    :goto_25
    return-object v0

    .line 117
    :cond_3e
    new-instance v1, Le/m/i/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoded message contains too many code words, message too big ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Le/m/i/h;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_3f
    new-instance v0, Le/m/i/h;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Le/m/i/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can only encode PDF_417, but got "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
