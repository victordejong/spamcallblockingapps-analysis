.class public final Le/m/a/c/m1/t/g;
.super Le/m/a/c/m1/c;
.source "SourceFile"


# instance fields
.field public final n:Le/m/a/c/m1/t/f;

.field public final o:Le/m/a/c/q1/t;

.field public final p:Le/m/a/c/m1/t/e$b;

.field public final q:Le/m/a/c/m1/t/a;

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/m1/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/m/a/c/m1/t/f;

    invoke-direct {v0}, Le/m/a/c/m1/t/f;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/g;->n:Le/m/a/c/m1/t/f;

    .line 3
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0}, Le/m/a/c/q1/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    .line 4
    new-instance v0, Le/m/a/c/m1/t/e$b;

    invoke-direct {v0}, Le/m/a/c/m1/t/e$b;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/g;->p:Le/m/a/c/m1/t/e$b;

    .line 5
    new-instance v0, Le/m/a/c/m1/t/a;

    invoke-direct {v0}, Le/m/a/c/m1/t/a;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/g;->q:Le/m/a/c/m1/t/a;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/g;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public j([BIZ)Le/m/a/c/m1/e;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m1/g;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Le/m/a/c/q1/t;->a:[B

    move/from16 v2, p2

    .line 3
    iput v2, v0, Le/m/a/c/q1/t;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Le/m/a/c/q1/t;->b:I

    .line 5
    iget-object v0, v1, Le/m/a/c/m1/t/g;->p:Le/m/a/c/m1/t/e$b;

    invoke-virtual {v0}, Le/m/a/c/m1/t/e$b;->b()V

    .line 6
    iget-object v0, v1, Le/m/a/c/m1/t/g;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :try_start_0
    iget-object v0, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    invoke-static {v0}, Le/m/a/c/m1/t/h;->c(Le/m/a/c/q1/t;)V
    :try_end_0
    .catch Le/m/a/c/m0; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    iget-object v0, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_1
    :goto_1
    iget-object v3, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    move v9, v2

    move v8, v6

    :goto_2
    if-ne v8, v6, :cond_5

    .line 11
    iget v9, v3, Le/m/a/c/q1/t;->b:I

    .line 12
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    const-string v10, "STYLE"

    .line 13
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    const-string v10, "NOTE"

    .line 14
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v4

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v3, v9}, Le/m/a/c/q1/t;->C(I)V

    if-eqz v8, :cond_32

    if-ne v8, v7, :cond_6

    .line 16
    iget-object v3, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    .line 17
    :goto_3
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_6
    if-ne v8, v5, :cond_2c

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 19
    iget-object v3, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    .line 20
    iget-object v3, v1, Le/m/a/c/m1/t/g;->r:Ljava/util/List;

    iget-object v4, v1, Le/m/a/c/m1/t/g;->q:Le/m/a/c/m1/t/a;

    iget-object v5, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    .line 21
    iget-object v8, v4, Le/m/a/c/m1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    iget v8, v5, Le/m/a/c/q1/t;->b:I

    .line 23
    :cond_7
    invoke-virtual {v5}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 25
    iget-object v9, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    iget-object v10, v5, Le/m/a/c/q1/t;->a:[B

    .line 26
    iget v5, v5, Le/m/a/c/q1/t;->b:I

    .line 27
    invoke-virtual {v9, v10, v5}, Le/m/a/c/q1/t;->A([BI)V

    .line 28
    iget-object v5, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    invoke-virtual {v5, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_4
    iget-object v8, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    iget-object v9, v4, Le/m/a/c/m1/t/a;->b:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v8}, Le/m/a/c/m1/t/a;->c(Le/m/a/c/q1/t;)V

    .line 32
    invoke-virtual {v8}, Le/m/a/c/q1/t;->a()I

    move-result v10

    const/4 v11, 0x5

    const-string v12, "{"

    const-string v13, ""

    if-ge v10, v11, :cond_8

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {v8, v11}, Le/m/a/c/q1/t;->n(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "::cue"

    .line 34
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_8

    .line 35
    :cond_9
    iget v10, v8, Le/m/a/c/q1/t;->b:I

    .line 36
    invoke-static {v8, v9}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    goto :goto_8

    .line 37
    :cond_a
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 38
    invoke-virtual {v8, v10}, Le/m/a/c/q1/t;->C(I)V

    move-object v10, v13

    goto :goto_9

    :cond_b
    const-string v10, "("

    .line 39
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 40
    iget v10, v8, Le/m/a/c/q1/t;->b:I

    .line 41
    iget v11, v8, Le/m/a/c/q1/t;->c:I

    move v15, v2

    :goto_5
    if-ge v10, v11, :cond_d

    if-nez v15, :cond_d

    .line 42
    iget-object v15, v8, Le/m/a/c/q1/t;->a:[B

    add-int/lit8 v16, v10, 0x1

    aget-byte v10, v15, v10

    int-to-char v10, v10

    const/16 v15, 0x29

    if-ne v10, v15, :cond_c

    move v15, v7

    goto :goto_6

    :cond_c
    move v15, v2

    :goto_6
    move/from16 v10, v16

    goto :goto_5

    :cond_d
    add-int/lit8 v10, v10, -0x1

    .line 43
    iget v11, v8, Le/m/a/c/q1/t;->b:I

    sub-int/2addr v10, v11

    .line 44
    invoke-virtual {v8, v10}, Le/m/a/c/q1/t;->n(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    .line 45
    :goto_7
    invoke-static {v8, v9}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ")"

    .line 46
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :goto_8
    const/4 v10, 0x0

    :cond_f
    :goto_9
    if-eqz v10, :cond_2a

    .line 47
    iget-object v8, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    iget-object v9, v4, Le/m/a/c/m1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_17

    .line 48
    :cond_10
    new-instance v8, Le/m/a/c/m1/t/d;

    invoke-direct {v8}, Le/m/a/c/m1/t/d;-><init>()V

    .line 49
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_b

    :cond_11
    const/16 v9, 0x5b

    .line 50
    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_13

    .line 51
    sget-object v11, Le/m/a/c/m1/t/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 52
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 53
    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 54
    iput-object v11, v8, Le/m/a/c/m1/t/d;->d:Ljava/lang/String;

    .line 55
    :cond_12
    invoke-virtual {v10, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_13
    const-string v9, "\\."

    .line 56
    invoke-static {v10, v9}, Le/m/a/c/q1/d0;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 57
    aget-object v10, v9, v2

    const/16 v11, 0x23

    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v6, :cond_14

    .line 59
    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 60
    iput-object v12, v8, Le/m/a/c/m1/t/d;->b:Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    .line 61
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    iput-object v10, v8, Le/m/a/c/m1/t/d;->a:Ljava/lang/String;

    goto :goto_a

    .line 63
    :cond_14
    iput-object v10, v8, Le/m/a/c/m1/t/d;->b:Ljava/lang/String;

    .line 64
    :goto_a
    array-length v10, v9

    if-le v10, v7, :cond_15

    .line 65
    array-length v10, v9

    invoke-static {v9, v7, v10}, Le/m/a/c/q1/d0;->y([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 66
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Le/m/a/c/m1/t/d;->c:Ljava/util/List;

    :cond_15
    :goto_b
    move v9, v2

    const/4 v10, 0x0

    :goto_c
    const-string v11, "}"

    if-nez v9, :cond_28

    .line 67
    iget-object v9, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    .line 68
    iget v10, v9, Le/m/a/c/q1/t;->b:I

    .line 69
    iget-object v12, v4, Le/m/a/c/m1/t/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    .line 70
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_d

    :cond_16
    move v12, v2

    goto :goto_e

    :cond_17
    :goto_d
    move v12, v7

    :goto_e
    if-nez v12, :cond_26

    .line 71
    iget-object v15, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    invoke-virtual {v15, v10}, Le/m/a/c/q1/t;->C(I)V

    .line 72
    iget-object v10, v4, Le/m/a/c/m1/t/a;->a:Le/m/a/c/q1/t;

    iget-object v15, v4, Le/m/a/c/m1/t/a;->b:Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v10}, Le/m/a/c/m1/t/a;->c(Le/m/a/c/q1/t;)V

    .line 74
    invoke-static {v10, v15}, Le/m/a/c/m1/t/a;->a(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    goto/16 :goto_15

    .line 76
    :cond_18
    invoke-static {v10, v15}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v14, ":"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_15

    .line 77
    :cond_19
    invoke-static {v10}, Le/m/a/c/m1/t/a;->c(Le/m/a/c/q1/t;)V

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    :goto_f
    const-string v7, ";"

    if-nez v14, :cond_1d

    move-object/from16 v17, v4

    .line 79
    iget v4, v10, Le/m/a/c/q1/t;->b:I

    move-object/from16 v18, v9

    .line 80
    invoke-static {v10, v15}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1a

    const/4 v4, 0x0

    goto :goto_12

    .line 81
    :cond_1a
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_10

    .line 82
    :cond_1b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 83
    :cond_1c
    :goto_10
    invoke-virtual {v10, v4}, Le/m/a/c/q1/t;->C(I)V

    const/4 v14, 0x1

    :goto_11
    move-object/from16 v4, v17

    move-object/from16 v9, v18

    goto :goto_f

    :cond_1d
    move-object/from16 v17, v4

    move-object/from16 v18, v9

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    if-eqz v4, :cond_25

    .line 85
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto/16 :goto_14

    .line 86
    :cond_1e
    iget v6, v10, Le/m/a/c/q1/t;->b:I

    .line 87
    invoke-static {v10, v15}, Le/m/a/c/m1/t/a;->b(Le/m/a/c/q1/t;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_13

    .line 89
    :cond_1f
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 90
    invoke-virtual {v10, v6}, Le/m/a/c/q1/t;->C(I)V

    :goto_13
    const-string v6, "color"

    .line 91
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    .line 92
    invoke-static {v4, v6}, Le/m/a/c/q1/h;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 93
    iput v2, v8, Le/m/a/c/m1/t/d;->f:I

    .line 94
    iput-boolean v6, v8, Le/m/a/c/m1/t/d;->g:Z

    goto :goto_16

    :cond_20
    const/4 v6, 0x1

    const-string v7, "background-color"

    .line 95
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 96
    invoke-static {v4, v6}, Le/m/a/c/q1/h;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 97
    iput v2, v8, Le/m/a/c/m1/t/d;->h:I

    .line 98
    iput-boolean v6, v8, Le/m/a/c/m1/t/d;->i:Z

    goto :goto_16

    :cond_21
    const-string v7, "text-decoration"

    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v2, "underline"

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 101
    iput v6, v8, Le/m/a/c/m1/t/d;->k:I

    goto :goto_16

    :cond_22
    const-string v6, "font-family"

    .line 102
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 103
    invoke-static {v4}, Le/m/a/c/q1/d0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Le/m/a/c/m1/t/d;->e:Ljava/lang/String;

    goto :goto_14

    :cond_23
    const-string v6, "font-weight"

    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v2, "bold"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v6, 0x1

    .line 106
    iput v6, v8, Le/m/a/c/m1/t/d;->l:I

    goto :goto_16

    :cond_24
    const/4 v6, 0x1

    const-string v7, "font-style"

    .line 107
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "italic"

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 109
    iput v6, v8, Le/m/a/c/m1/t/d;->m:I

    goto :goto_16

    :cond_25
    :goto_14
    const/4 v6, 0x1

    goto :goto_16

    :cond_26
    :goto_15
    move-object/from16 v17, v4

    move v6, v7

    move-object/from16 v18, v9

    :cond_27
    :goto_16
    move v7, v6

    move v9, v12

    move-object/from16 v4, v17

    move-object/from16 v10, v18

    const/4 v2, 0x0

    const/4 v6, -0x1

    goto/16 :goto_c

    :cond_28
    move-object/from16 v17, v4

    move v6, v7

    .line 110
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 111
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    move v7, v6

    move-object/from16 v4, v17

    const/4 v2, 0x0

    const/4 v6, -0x1

    goto/16 :goto_4

    .line 112
    :cond_2a
    :goto_17
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 113
    :cond_2b
    new-instance v0, Le/m/a/c/m1/g;

    const-string v2, "A style block was found after the first cue."

    invoke-direct {v0, v2}, Le/m/a/c/m1/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    if-ne v8, v4, :cond_31

    .line 114
    iget-object v2, v1, Le/m/a/c/m1/t/g;->n:Le/m/a/c/m1/t/f;

    iget-object v5, v1, Le/m/a/c/m1/t/g;->o:Le/m/a/c/q1/t;

    iget-object v6, v1, Le/m/a/c/m1/t/g;->p:Le/m/a/c/m1/t/e$b;

    iget-object v8, v1, Le/m/a/c/m1/t/g;->r:Ljava/util/List;

    .line 115
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v5}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    :cond_2d
    :goto_18
    const/4 v2, 0x0

    goto :goto_19

    .line 117
    :cond_2e
    sget-object v4, Le/m/a/c/m1/t/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 118
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2f

    const/4 v3, 0x0

    .line 119
    iget-object v2, v2, Le/m/a/c/m1/t/f;->a:Ljava/lang/StringBuilder;

    move-object v4, v7

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Le/m/a/c/m1/t/f;->b(Ljava/lang/String;Ljava/util/regex/Matcher;Le/m/a/c/q1/t;Le/m/a/c/m1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v2

    goto :goto_19

    .line 120
    :cond_2f
    invoke-virtual {v5}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_30

    goto :goto_18

    .line 121
    :cond_30
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v2, Le/m/a/c/m1/t/f;->a:Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v8}, Le/m/a/c/m1/t/f;->b(Ljava/lang/String;Ljava/util/regex/Matcher;Le/m/a/c/q1/t;Le/m/a/c/m1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v2

    :goto_19
    if-eqz v2, :cond_31

    .line 124
    iget-object v2, v1, Le/m/a/c/m1/t/g;->p:Le/m/a/c/m1/t/e$b;

    invoke-virtual {v2}, Le/m/a/c/m1/t/e$b;->a()Le/m/a/c/m1/t/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, v1, Le/m/a/c/m1/t/g;->p:Le/m/a/c/m1/t/e$b;

    invoke-virtual {v2}, Le/m/a/c/m1/t/e$b;->b()V

    :cond_31
    :goto_1a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 126
    :cond_32
    new-instance v2, Le/m/a/c/m1/t/i;

    invoke-direct {v2, v0}, Le/m/a/c/m1/t/i;-><init>(Ljava/util/List;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 127
    new-instance v2, Le/m/a/c/m1/g;

    invoke-direct {v2, v0}, Le/m/a/c/m1/g;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
