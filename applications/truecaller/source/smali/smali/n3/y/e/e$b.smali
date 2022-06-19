.class public Ln3/y/e/e$b;
.super Ln3/y/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final h:Ln3/y/e/d;

.field public final i:Ln3/y/e/e$a;


# direct methods
.method public constructor <init>(Ln3/y/e/e$a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/y/e/b0;-><init>(Landroid/media/MediaFormat;)V

    .line 2
    iput-object p1, p0, Ln3/y/e/e$b;->i:Ln3/y/e/e$a;

    .line 3
    new-instance p2, Ln3/y/e/d;

    invoke-direct {p2, p1}, Ln3/y/e/d;-><init>(Ln3/y/e/d$i;)V

    iput-object p2, p0, Ln3/y/e/e$b;->h:Ln3/y/e/d;

    return-void
.end method


# virtual methods
.method public a()Ln3/y/e/b0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/e$b;->i:Ln3/y/e/e$a;

    return-object v0
.end method

.method public c([BZJ)V
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ln3/y/e/e$b;->h:Ln3/y/e/d;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    :cond_0
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_18

    .line 4
    aget-byte v5, v0, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x17

    const/16 v8, 0x18

    const/16 v9, 0x9f

    const/16 v10, 0x8

    const/16 v12, 0x1f

    const/16 v13, 0x10

    const/16 v14, 0x80

    const/16 v15, 0xf

    const/4 v3, 0x7

    const/4 v11, 0x2

    const/16 v16, 0x1

    if-ne v5, v13, :cond_6

    .line 5
    aget-byte v5, v0, v4

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    if-ltz v5, :cond_4

    if-gt v5, v12, :cond_4

    if-ltz v5, :cond_1

    if-gt v5, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    if-lt v5, v10, :cond_2

    if-gt v5, v15, :cond_2

    goto :goto_2

    :cond_2
    if-lt v5, v13, :cond_3

    if-gt v5, v7, :cond_3

    goto :goto_1

    :cond_3
    if-lt v5, v8, :cond_d

    if-gt v5, v12, :cond_d

    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_3

    :cond_4
    if-lt v5, v14, :cond_d

    if-gt v5, v9, :cond_d

    if-lt v5, v14, :cond_5

    const/16 v3, 0x87

    if-gt v5, v3, :cond_5

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_3

    :cond_5
    const/16 v3, 0x88

    if-lt v5, v3, :cond_d

    const/16 v3, 0x8f

    if-gt v5, v3, :cond_d

    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_3

    :cond_6
    const/16 v15, 0xa

    const/4 v6, 0x3

    if-ltz v5, :cond_c

    if-gt v5, v12, :cond_c

    if-lt v5, v8, :cond_9

    if-gt v5, v12, :cond_9

    if-ne v5, v8, :cond_8

    .line 6
    :try_start_0
    aget-byte v3, v0, v4

    if-nez v3, :cond_7

    .line 7
    iget-object v3, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_7
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, v4, 0x2

    .line 9
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const-string v6, "EUC-KR"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    iget-object v5, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_1
    add-int/2addr v4, v11

    goto :goto_3

    :cond_9
    if-lt v5, v13, :cond_a

    if-gt v5, v7, :cond_a

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    if-eq v5, v6, :cond_b

    if-eq v5, v10, :cond_b

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 11
    :pswitch_0
    iget-object v3, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 12
    :cond_b
    :pswitch_1
    new-instance v3, Ln3/y/e/d$c;

    int-to-char v5, v5

    .line 13
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-direct {v3, v11, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 15
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_3

    :cond_c
    const/16 v7, 0x7f

    if-lt v5, v14, :cond_15

    if-gt v5, v9, :cond_15

    const/16 v8, 0xc

    const/4 v12, 0x6

    const/4 v15, 0x5

    const/4 v9, 0x4

    packed-switch v5, :pswitch_data_1

    :cond_d
    :goto_3
    :pswitch_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_3
    add-int/lit16 v5, v5, -0x98

    .line 16
    aget-byte v8, v0, v4

    const/16 v11, 0x20

    and-int/2addr v8, v11

    if-eqz v8, :cond_e

    move/from16 v22, v16

    goto :goto_4

    :cond_e
    const/16 v22, 0x0

    .line 17
    :goto_4
    aget-byte v8, v0, v4

    and-int/2addr v8, v13

    if-eqz v8, :cond_f

    move/from16 v23, v16

    goto :goto_5

    :cond_f
    const/16 v23, 0x0

    .line 18
    :goto_5
    aget-byte v8, v0, v4

    and-int/2addr v8, v10

    if-eqz v8, :cond_10

    move/from16 v24, v16

    goto :goto_6

    :cond_10
    const/16 v24, 0x0

    .line 19
    :goto_6
    aget-byte v8, v0, v4

    and-int/lit8 v25, v8, 0x7

    add-int/lit8 v8, v4, 0x1

    .line 20
    aget-byte v10, v0, v8

    and-int/2addr v10, v14

    if-eqz v10, :cond_11

    move/from16 v26, v16

    goto :goto_7

    :cond_11
    const/16 v26, 0x0

    .line 21
    :goto_7
    aget-byte v8, v0, v8

    and-int/lit8 v27, v8, 0x7f

    add-int/lit8 v7, v4, 0x2

    .line 22
    aget-byte v7, v0, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    add-int/lit8 v8, v4, 0x3

    .line 23
    aget-byte v10, v0, v8

    and-int/lit16 v10, v10, 0xf0

    shr-int/lit8 v29, v10, 0x4

    .line 24
    aget-byte v8, v0, v8

    const/16 v9, 0xf

    and-int/lit8 v30, v8, 0xf

    add-int/lit8 v8, v4, 0x4

    .line 25
    aget-byte v8, v0, v8

    and-int/lit8 v31, v8, 0x3f

    add-int/lit8 v8, v4, 0x5

    .line 26
    aget-byte v9, v0, v8

    and-int/lit8 v9, v9, 0x38

    shr-int/lit8 v33, v9, 0x3

    .line 27
    aget-byte v6, v0, v8

    and-int/lit8 v32, v6, 0x7

    add-int/lit8 v4, v4, 0x6

    .line 28
    new-instance v3, Ln3/y/e/d$c;

    new-instance v6, Ln3/y/e/d$g;

    move-object/from16 v20, v6

    move/from16 v21, v5

    move/from16 v28, v7

    invoke-direct/range {v20 .. v33}, Ln3/y/e/d$g;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v3, v13, v6}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 30
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_3

    .line 31
    :pswitch_4
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xc0

    shr-int/2addr v3, v12

    .line 32
    aget-byte v5, v0, v4

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v9

    .line 33
    aget-byte v7, v0, v4

    and-int/2addr v7, v8

    shr-int/2addr v7, v11

    .line 34
    aget-byte v10, v0, v4

    and-int/2addr v10, v6

    .line 35
    new-instance v13, Ln3/y/e/d$b;

    invoke-direct {v13, v3, v5, v7, v10}, Ln3/y/e/d$b;-><init>(IIII)V

    add-int/lit8 v3, v4, 0x1

    .line 36
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v12

    add-int/lit8 v7, v4, 0x2

    aget-byte v10, v0, v7

    and-int/2addr v10, v14

    shr-int/2addr v10, v15

    or-int v20, v5, v10

    .line 37
    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v9

    .line 38
    aget-byte v10, v0, v3

    and-int/2addr v10, v8

    shr-int/2addr v10, v11

    .line 39
    aget-byte v3, v0, v3

    and-int/2addr v3, v6

    .line 40
    new-instance v12, Ln3/y/e/d$b;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v5, v10, v3}, Ln3/y/e/d$b;-><init>(IIII)V

    .line 41
    aget-byte v3, v0, v7

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_12

    move/from16 v21, v16

    goto :goto_8

    :cond_12
    const/16 v21, 0x0

    .line 42
    :goto_8
    aget-byte v3, v0, v7

    and-int/lit8 v3, v3, 0x30

    shr-int/lit8 v22, v3, 0x4

    .line 43
    aget-byte v3, v0, v7

    and-int/2addr v3, v8

    shr-int/lit8 v23, v3, 0x2

    .line 44
    aget-byte v3, v0, v7

    and-int/lit8 v24, v3, 0x3

    add-int/lit8 v3, v4, 0x3

    .line 45
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v26, v5, 0x4

    .line 46
    aget-byte v5, v0, v3

    and-int/2addr v5, v8

    shr-int/lit8 v25, v5, 0x2

    .line 47
    aget-byte v3, v0, v3

    and-int/lit8 v27, v3, 0x3

    add-int/lit8 v4, v4, 0x4

    .line 48
    new-instance v3, Ln3/y/e/d$c;

    new-instance v5, Ln3/y/e/d$h;

    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    invoke-direct/range {v17 .. v27}, Ln3/y/e/d$h;-><init>(Ln3/y/e/d$b;Ln3/y/e/d$b;IZIIIIII)V

    const/16 v6, 0xf

    invoke-direct {v3, v6, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 50
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_3

    :pswitch_5
    const/16 v6, 0xf

    .line 51
    aget-byte v3, v0, v4

    and-int/2addr v3, v6

    add-int/lit8 v5, v4, 0x1

    .line 52
    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v4, v4, 0x2

    .line 53
    new-instance v6, Ln3/y/e/d$c;

    const/16 v7, 0xe

    new-instance v8, Ln3/y/e/d$f;

    invoke-direct {v8, v3, v5}, Ln3/y/e/d$f;-><init>(II)V

    invoke-direct {v6, v7, v8}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 54
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 55
    iget-object v3, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v3, v6}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_3

    .line 56
    :pswitch_6
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xc0

    shr-int/2addr v3, v12

    .line 57
    aget-byte v5, v0, v4

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v9

    .line 58
    aget-byte v7, v0, v4

    and-int/2addr v7, v8

    shr-int/2addr v7, v11

    .line 59
    aget-byte v10, v0, v4

    and-int/2addr v10, v6

    .line 60
    new-instance v13, Ln3/y/e/d$b;

    invoke-direct {v13, v3, v5, v7, v10}, Ln3/y/e/d$b;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 61
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xc0

    shr-int/2addr v3, v12

    .line 62
    aget-byte v5, v0, v4

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v9

    .line 63
    aget-byte v7, v0, v4

    and-int/2addr v7, v8

    shr-int/2addr v7, v11

    .line 64
    aget-byte v10, v0, v4

    and-int/2addr v10, v6

    .line 65
    new-instance v12, Ln3/y/e/d$b;

    invoke-direct {v12, v3, v5, v7, v10}, Ln3/y/e/d$b;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 66
    aget-byte v3, v0, v4

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v9

    .line 67
    aget-byte v5, v0, v4

    and-int/2addr v5, v8

    shr-int/2addr v5, v11

    .line 68
    aget-byte v7, v0, v4

    and-int/2addr v6, v7

    .line 69
    new-instance v7, Ln3/y/e/d$b;

    const/4 v15, 0x0

    invoke-direct {v7, v15, v3, v5, v6}, Ln3/y/e/d$b;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 70
    new-instance v3, Ln3/y/e/d$c;

    const/16 v5, 0xd

    new-instance v6, Ln3/y/e/d$e;

    invoke-direct {v6, v13, v12, v7}, Ln3/y/e/d$e;-><init>(Ln3/y/e/d$b;Ln3/y/e/d$b;Ln3/y/e/d$b;)V

    invoke-direct {v3, v5, v6}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 71
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 72
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_b

    :pswitch_7
    const/4 v15, 0x0

    .line 73
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v20, v5, 0x4

    .line 74
    aget-byte v5, v0, v4

    and-int/lit8 v18, v5, 0x3

    .line 75
    aget-byte v5, v0, v4

    and-int/2addr v5, v8

    shr-int/lit8 v19, v5, 0x2

    add-int/lit8 v5, v4, 0x1

    .line 76
    aget-byte v7, v0, v5

    and-int/2addr v7, v14

    if-eqz v7, :cond_13

    move/from16 v24, v16

    goto :goto_9

    :cond_13
    move/from16 v24, v15

    .line 77
    :goto_9
    aget-byte v7, v0, v5

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_14

    move/from16 v23, v16

    goto :goto_a

    :cond_14
    move/from16 v23, v15

    .line 78
    :goto_a
    aget-byte v7, v0, v5

    and-int/lit8 v7, v7, 0x38

    shr-int/lit8 v22, v7, 0x3

    .line 79
    aget-byte v5, v0, v5

    and-int/lit8 v21, v5, 0x7

    add-int/lit8 v4, v4, 0x2

    .line 80
    new-instance v3, Ln3/y/e/d$c;

    new-instance v5, Ln3/y/e/d$d;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Ln3/y/e/d$d;-><init>(IIIIIZZ)V

    invoke-direct {v3, v8, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 82
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_b

    :pswitch_8
    const/4 v15, 0x0

    .line 83
    new-instance v3, Ln3/y/e/d$c;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 85
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_b

    :pswitch_9
    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 86
    new-instance v3, Ln3/y/e/d$c;

    const/16 v5, 0xa

    invoke-direct {v3, v5, v6}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 87
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 88
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v3}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_b

    :pswitch_a
    const/4 v15, 0x0

    .line 89
    aget-byte v3, v0, v4

    const/16 v5, 0xff

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 90
    new-instance v5, Ln3/y/e/d$c;

    const/16 v6, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 92
    iget-object v3, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v3, v5}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_b

    :pswitch_b
    const/4 v15, 0x0

    .line 93
    aget-byte v3, v0, v4

    const/16 v5, 0xff

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 94
    new-instance v5, Ln3/y/e/d$c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v10, v3}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 95
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 96
    iget-object v3, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v3, v5}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_b

    :pswitch_c
    const/16 v5, 0xff

    const/4 v15, 0x0

    .line 97
    aget-byte v6, v0, v4

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    .line 98
    new-instance v6, Ln3/y/e/d$c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 100
    iget-object v3, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v3, v6}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto :goto_b

    :pswitch_d
    const/16 v5, 0xff

    const/4 v15, 0x0

    .line 101
    aget-byte v3, v0, v4

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 102
    new-instance v5, Ln3/y/e/d$c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v12, v3}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 104
    iget-object v3, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v3, v5}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    :goto_b
    move v3, v15

    goto/16 :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/16 v5, 0xff

    .line 105
    aget-byte v6, v0, v4

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    .line 106
    new-instance v6, Ln3/y/e/d$c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v15, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 108
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v6}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/16 v5, 0xff

    .line 109
    aget-byte v6, v0, v4

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    .line 110
    new-instance v6, Ln3/y/e/d$c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v9, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 112
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v6}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_0

    :pswitch_10
    const/4 v3, 0x0

    add-int/lit8 v5, v5, -0x80

    .line 113
    new-instance v7, Ln3/y/e/d$c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    .line 114
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    .line 115
    iget-object v5, v2, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    invoke-interface {v5, v7}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x0

    const/16 v6, 0x20

    if-lt v5, v6, :cond_17

    if-gt v5, v7, :cond_17

    if-ne v5, v7, :cond_16

    .line 116
    iget-object v5, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    sget-object v6, Ln3/y/e/d;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 117
    :cond_16
    iget-object v6, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0xa0

    if-lt v5, v6, :cond_0

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    .line 118
    iget-object v6, v2, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 119
    :cond_18
    invoke-virtual {v2}, Ln3/y/e/d;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
