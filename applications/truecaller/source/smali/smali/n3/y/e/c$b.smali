.class public Ln3/y/e/c$b;
.super Ln3/y/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final h:Ln3/y/e/b;

.field public final i:Ln3/y/e/c$a;


# direct methods
.method public constructor <init>(Ln3/y/e/c$a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/y/e/b0;-><init>(Landroid/media/MediaFormat;)V

    .line 2
    iput-object p1, p0, Ln3/y/e/c$b;->i:Ln3/y/e/c$a;

    .line 3
    new-instance p2, Ln3/y/e/b;

    invoke-direct {p2, p1}, Ln3/y/e/b;-><init>(Ln3/y/e/b$d;)V

    iput-object p2, p0, Ln3/y/e/c$b;->h:Ln3/y/e/b;

    return-void
.end method


# virtual methods
.method public a()Ln3/y/e/b0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/c$b;->i:Ln3/y/e/c$a;

    return-object v0
.end method

.method public c([BZJ)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ln3/y/e/c$b;->h:Ln3/y/e/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v3, v0

    const/4 v4, 0x3

    div-int/2addr v3, v4

    new-array v5, v3, [Ln3/y/e/b$a;

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v3, :cond_0

    .line 4
    new-instance v9, Ln3/y/e/b$a;

    mul-int/lit8 v10, v7, 0x3

    aget-byte v11, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, v0, v12

    add-int/2addr v10, v8

    aget-byte v8, v0, v10

    invoke-direct {v9, v11, v12, v8}, Ln3/y/e/b$a;-><init>(BBB)V

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_20

    .line 5
    sget-boolean v7, Ln3/y/e/b;->h:Z

    if-eqz v7, :cond_1

    .line 6
    aget-object v7, v5, v0

    invoke-virtual {v7}, Ln3/y/e/b$a;->toString()Ljava/lang/String;

    .line 7
    :cond_1
    aget-object v7, v5, v0

    .line 8
    invoke-virtual {v7}, Ln3/y/e/b$a;->b()I

    move-result v7

    .line 9
    iget v9, v2, Ln3/y/e/b;->d:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v9, v11, :cond_2

    if-ne v9, v7, :cond_2

    .line 10
    iput v11, v2, Ln3/y/e/b;->d:I

    goto/16 :goto_9

    :cond_2
    const/4 v9, 0x4

    packed-switch v7, :pswitch_data_0

    .line 11
    :pswitch_0
    iput v11, v2, Ln3/y/e/b;->d:I

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 12
    :pswitch_1
    iget-object v9, v2, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    .line 13
    iget-object v13, v2, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    iput-object v13, v2, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    .line 14
    iput-object v9, v2, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    .line 15
    iput v4, v2, Ln3/y/e/b;->b:I

    .line 16
    invoke-virtual {v2}, Ln3/y/e/b;->b()V

    goto/16 :goto_8

    .line 17
    :pswitch_2
    iget-object v9, v2, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    invoke-virtual {v9}, Ln3/y/e/b$c;->c()V

    goto/16 :goto_8

    .line 18
    :pswitch_3
    iget v9, v2, Ln3/y/e/b;->b:I

    if-ne v9, v8, :cond_7

    .line 19
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v9

    iget v13, v2, Ln3/y/e/b;->c:I

    const/4 v14, 0x0

    .line 20
    :goto_2
    iget v15, v9, Ln3/y/e/b$c;->c:I

    sub-int/2addr v15, v13

    if-gt v14, v15, :cond_3

    .line 21
    iget-object v15, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aput-object v10, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    if-ge v15, v12, :cond_4

    move v15, v12

    .line 22
    :cond_4
    :goto_3
    iget v13, v9, Ln3/y/e/b$c;->c:I

    if-ge v15, v13, :cond_5

    .line 23
    iget-object v13, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    add-int/lit8 v14, v15, 0x1

    aget-object v16, v13, v14

    aput-object v16, v13, v15

    move v15, v14

    goto :goto_3

    .line 24
    :cond_5
    :goto_4
    iget-object v14, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    array-length v15, v14

    if-ge v13, v15, :cond_6

    .line 25
    aput-object v10, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 26
    :cond_6
    iput v12, v9, Ln3/y/e/b$c;->d:I

    goto :goto_5

    .line 27
    :cond_7
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v9

    .line 28
    iget v13, v9, Ln3/y/e/b$c;->c:I

    add-int/2addr v13, v12

    invoke-virtual {v9, v13, v12}, Ln3/y/e/b$c;->f(II)V

    .line 29
    :goto_5
    iget v9, v2, Ln3/y/e/b;->b:I

    if-ne v9, v8, :cond_b

    .line 30
    invoke-virtual {v2}, Ln3/y/e/b;->b()V

    goto/16 :goto_8

    .line 31
    :pswitch_4
    iget-object v9, v2, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    invoke-virtual {v9}, Ln3/y/e/b$c;->c()V

    .line 32
    invoke-virtual {v2}, Ln3/y/e/b;->b()V

    goto/16 :goto_8

    .line 33
    :pswitch_5
    iput v9, v2, Ln3/y/e/b;->b:I

    goto/16 :goto_8

    .line 34
    :pswitch_6
    iput v9, v2, Ln3/y/e/b;->b:I

    .line 35
    iget-object v9, v2, Ln3/y/e/b;->g:Ln3/y/e/b$c;

    invoke-virtual {v9}, Ln3/y/e/b$c;->c()V

    goto :goto_8

    .line 36
    :pswitch_7
    iput v12, v2, Ln3/y/e/b;->b:I

    goto :goto_8

    :pswitch_8
    add-int/lit8 v9, v7, -0x23

    .line 37
    iput v9, v2, Ln3/y/e/b;->c:I

    .line 38
    iget v9, v2, Ln3/y/e/b;->b:I

    if-eq v9, v8, :cond_8

    .line 39
    iget-object v9, v2, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    invoke-virtual {v9}, Ln3/y/e/b$c;->c()V

    .line 40
    iget-object v9, v2, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    invoke-virtual {v9}, Ln3/y/e/b$c;->c()V

    .line 41
    :cond_8
    iput v8, v2, Ln3/y/e/b;->b:I

    goto :goto_8

    .line 42
    :pswitch_9
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v9

    .line 43
    iget-object v13, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v14, v9, Ln3/y/e/b$c;->c:I

    aget-object v13, v13, v14

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    .line 44
    :goto_6
    iget v14, v9, Ln3/y/e/b$c;->d:I

    if-ge v13, v14, :cond_a

    .line 45
    iget-object v14, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v15, v9, Ln3/y/e/b$c;->c:I

    aget-object v14, v14, v15

    .line 46
    iget-object v14, v14, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v15, 0xa0

    if-eq v14, v15, :cond_9

    .line 47
    iget v13, v9, Ln3/y/e/b$c;->d:I

    :goto_7
    iget-object v14, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v6, v9, Ln3/y/e/b$c;->c:I

    aget-object v6, v14, v6

    .line 48
    iget-object v6, v6, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v13, v6, :cond_b

    .line 49
    iget-object v6, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aget-object v6, v6, v13

    invoke-virtual {v6, v13, v15}, Ln3/y/e/b$b;->b(IC)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 50
    :cond_a
    iget-object v6, v9, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v9, v9, Ln3/y/e/b$c;->c:I

    aput-object v10, v6, v9

    goto :goto_8

    .line 51
    :pswitch_a
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v6

    invoke-virtual {v6}, Ln3/y/e/b$c;->a()V

    goto :goto_8

    .line 52
    :pswitch_b
    iput v4, v2, Ln3/y/e/b;->b:I

    .line 53
    :cond_b
    :goto_8
    :pswitch_c
    iput v7, v2, Ln3/y/e/b;->d:I

    :goto_9
    move v6, v12

    :goto_a
    if-nez v6, :cond_1e

    .line 54
    aget-object v6, v5, v0

    .line 55
    invoke-virtual {v6}, Ln3/y/e/b$a;->f()I

    move-result v6

    if-lez v6, :cond_c

    .line 56
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v7

    .line 57
    invoke-virtual {v7, v6}, Ln3/y/e/b$c;->e(I)V

    move v6, v12

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    if-nez v6, :cond_1e

    .line 58
    aget-object v6, v5, v0

    .line 59
    invoke-virtual {v6}, Ln3/y/e/b$a;->e()Ln3/y/e/b$f;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 60
    iget v7, v2, Ln3/y/e/b;->b:I

    if-ne v7, v8, :cond_13

    .line 61
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v7

    .line 62
    iget v9, v6, Ln3/y/e/b$f;->d:I

    .line 63
    iget v13, v2, Ln3/y/e/b;->c:I

    .line 64
    iget v14, v7, Ln3/y/e/b$c;->c:I

    if-ne v14, v9, :cond_d

    goto :goto_11

    :cond_d
    if-ge v9, v13, :cond_e

    move v15, v9

    goto :goto_c

    :cond_e
    move v15, v13

    :goto_c
    if-ge v14, v15, :cond_f

    move v15, v14

    :cond_f
    if-ge v9, v14, :cond_10

    :goto_d
    add-int/2addr v15, v11

    if-ltz v15, :cond_11

    .line 65
    iget-object v14, v7, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    sub-int v16, v9, v15

    iget v4, v7, Ln3/y/e/b$c;->c:I

    sub-int/2addr v4, v15

    aget-object v4, v14, v4

    aput-object v4, v14, v16

    const/4 v4, 0x3

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v15, :cond_11

    .line 66
    iget-object v11, v7, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    sub-int v14, v9, v4

    iget v8, v7, Ln3/y/e/b$c;->c:I

    sub-int/2addr v8, v4

    aget-object v8, v11, v8

    aput-object v8, v11, v14

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x2

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_f
    sub-int v8, v9, v13

    if-gt v4, v8, :cond_12

    .line 67
    iget-object v8, v7, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aput-object v10, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_12
    :goto_10
    add-int/2addr v9, v12

    .line 68
    iget-object v4, v7, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    array-length v8, v4

    if-ge v9, v8, :cond_13

    .line 69
    aput-object v10, v4, v9

    goto :goto_10

    .line 70
    :cond_13
    :goto_11
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v4

    .line 71
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget v7, v6, Ln3/y/e/b$f;->e:I

    if-ltz v7, :cond_14

    move v8, v12

    goto :goto_12

    :cond_14
    const/4 v8, 0x0

    :goto_12
    if-eqz v8, :cond_15

    .line 73
    iget v8, v6, Ln3/y/e/b$f;->d:I

    .line 74
    invoke-virtual {v4, v8, v7}, Ln3/y/e/b$c;->f(II)V

    goto :goto_13

    .line 75
    :cond_15
    iget v7, v6, Ln3/y/e/b$f;->d:I

    .line 76
    invoke-virtual {v4, v7, v12}, Ln3/y/e/b$c;->f(II)V

    .line 77
    :goto_13
    iget v7, v4, Ln3/y/e/b$c;->c:I

    invoke-virtual {v4, v7}, Ln3/y/e/b$c;->d(I)Ln3/y/e/b$b;

    move-result-object v7

    iget v4, v4, Ln3/y/e/b$c;->d:I

    .line 78
    iget-object v7, v7, Ln3/y/e/b$b;->c:[Ln3/y/e/b$g;

    aput-object v6, v7, v4

    move v4, v12

    goto :goto_14

    :cond_16
    const/4 v4, 0x0

    :goto_14
    if-nez v4, :cond_1d

    .line 79
    aget-object v4, v5, v0

    .line 80
    invoke-virtual {v4}, Ln3/y/e/b$a;->d()Ln3/y/e/b$g;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 81
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v6

    .line 82
    iget v7, v6, Ln3/y/e/b$c;->c:I

    invoke-virtual {v6, v7}, Ln3/y/e/b$c;->d(I)Ln3/y/e/b$b;

    move-result-object v7

    iget v8, v6, Ln3/y/e/b$c;->d:I

    .line 83
    iget-object v9, v7, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 84
    iget-object v7, v7, Ln3/y/e/b$b;->b:[Ln3/y/e/b$g;

    aput-object v4, v7, v8

    .line 85
    invoke-virtual {v6, v12}, Ln3/y/e/b$c;->e(I)V

    move v4, v12

    goto :goto_15

    :cond_17
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_18

    :goto_16
    goto :goto_18

    .line 86
    :cond_18
    aget-object v4, v5, v0

    .line 87
    invoke-virtual {v4}, Ln3/y/e/b$a;->g()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_16

    .line 88
    :cond_19
    invoke-virtual {v4}, Ln3/y/e/b$a;->h()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 89
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v6

    invoke-virtual {v6}, Ln3/y/e/b$c;->a()V

    .line 90
    :cond_1a
    invoke-virtual {v2}, Ln3/y/e/b;->a()Ln3/y/e/b$c;

    move-result-object v6

    invoke-virtual {v4}, Ln3/y/e/b$a;->c()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 92
    :goto_17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1b

    .line 93
    iget v8, v6, Ln3/y/e/b$c;->c:I

    invoke-virtual {v6, v8}, Ln3/y/e/b$c;->d(I)Ln3/y/e/b$b;

    move-result-object v8

    iget v9, v6, Ln3/y/e/b$c;->d:I

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v9, v10}, Ln3/y/e/b$b;->b(IC)V

    .line 94
    invoke-virtual {v6, v12}, Ln3/y/e/b$c;->e(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 95
    :cond_1b
    iget v4, v2, Ln3/y/e/b;->b:I

    const/4 v6, 0x2

    if-eq v4, v12, :cond_1c

    if-ne v4, v6, :cond_1f

    .line 96
    :cond_1c
    invoke-virtual {v2}, Ln3/y/e/b;->b()V

    goto :goto_19

    :cond_1d
    :goto_18
    const/4 v6, 0x2

    goto :goto_19

    :cond_1e
    move v6, v8

    :cond_1f
    :goto_19
    add-int/lit8 v0, v0, 0x1

    move v8, v6

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
