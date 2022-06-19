.class public Le/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/d/e;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/d/d/b;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/d/d/c;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/d/d/c;->d:Ljava/util/List;

    const/high16 v0, -0x40000000    # -2.0f

    .line 4
    iput v0, p0, Le/d/d/c;->c:I

    return-void
.end method


# virtual methods
.method public a(Le/d/d/m;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/d/d/c;->b:Le/d/d/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, v1, Le/d/d/m;->a:Ljava/lang/String;

    .line 4
    iget-object v4, v1, Le/d/d/m;->c:Ljava/util/Map;

    .line 5
    iget-object v5, v1, Le/d/d/m;->e:Ljava/util/List;

    .line 6
    iget-object v1, v1, Le/d/d/m;->f:[B

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_33

    :cond_1
    const-string v6, ""

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_4

    .line 9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 11
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v11, -0x1

    if-lez v14, :cond_2

    const-string v14, ";"

    .line 12
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    if-ne v11, v10, :cond_5

    .line 14
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v11, v6

    .line 15
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    :goto_2
    const-string v11, "VERSION"

    .line 16
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_33

    :cond_7
    const-string v11, "FN"

    .line 17
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 18
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 19
    iput-object v15, v1, Le/d/d/b$j;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_8
    const-string v11, "NAME"

    .line 20
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 21
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 22
    iget-object v1, v1, Le/d/d/b$j;->f:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 24
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 25
    iput-object v15, v1, Le/d/d/b$j;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_9
    const-string v11, "N"

    .line 26
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "SORT-AS"

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v11, :cond_16

    .line 27
    iget v1, v2, Le/d/d/b;->o:I

    invoke-static {v1}, Le/d/d/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 28
    iget-object v1, v1, Le/d/d/b$j;->g:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 30
    iget-object v1, v1, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 32
    iget-object v1, v1, Le/d/d/b$j;->h:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 34
    :cond_a
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_f

    .line 35
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_f

    .line 36
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v10, :cond_b

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v3, v2, Le/d/d/b;->o:I

    .line 39
    invoke-static {v1, v3}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v14, :cond_c

    move v3, v14

    :cond_c
    if-eq v3, v8, :cond_e

    if-eq v3, v14, :cond_d

    goto :goto_3

    .line 41
    :cond_d
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 42
    iput-object v4, v3, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 43
    :cond_e
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    iput-object v4, v3, Le/d/d/b$j;->h:Ljava/lang/String;

    .line 45
    :goto_3
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    iput-object v1, v3, Le/d/d/b$j;->g:Ljava/lang/String;

    :cond_f
    :goto_4
    if-eqz v5, :cond_93

    .line 47
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v10, :cond_10

    goto/16 :goto_33

    :cond_10
    if-le v1, v13, :cond_11

    move v1, v13

    :cond_11
    if-eq v1, v8, :cond_15

    if-eq v1, v14, :cond_14

    if-eq v1, v7, :cond_13

    if-eq v1, v13, :cond_12

    goto :goto_5

    .line 48
    :cond_12
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    iput-object v3, v1, Le/d/d/b$j;->e:Ljava/lang/String;

    .line 50
    :cond_13
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    iput-object v3, v1, Le/d/d/b$j;->d:Ljava/lang/String;

    .line 52
    :cond_14
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    iput-object v3, v1, Le/d/d/b$j;->c:Ljava/lang/String;

    .line 54
    :cond_15
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    iput-object v3, v1, Le/d/d/b$j;->b:Ljava/lang/String;

    .line 56
    :goto_5
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    iput-object v2, v1, Le/d/d/b$j;->a:Ljava/lang/String;

    goto/16 :goto_33

    :cond_16
    const-string v11, "SORT-STRING"

    .line 58
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 59
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 60
    iput-object v15, v1, Le/d/d/b$j;->j:Ljava/lang/String;

    goto/16 :goto_33

    :cond_17
    const-string v11, "NICKNAME"

    .line 61
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_91

    const-string v11, "X-NICKNAME"

    .line 62
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    goto/16 :goto_32

    :cond_18
    const-string v11, "SOUND"

    .line 63
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "TYPE"

    if-eqz v11, :cond_23

    .line 64
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_93

    const-string v3, "X-IRMC-N"

    .line 65
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 66
    iget v1, v2, Le/d/d/b;->o:I

    invoke-static {v15, v1}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 67
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 68
    iget-object v3, v3, Le/d/d/b$j;->g:Ljava/lang/String;

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 70
    iget-object v3, v3, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 72
    iget-object v3, v3, Le/d/d/b$j;->h:Ljava/lang/String;

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_33

    .line 74
    :cond_19
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v10, :cond_1a

    goto/16 :goto_33

    :cond_1a
    if-le v3, v14, :cond_1b

    move v3, v14

    .line 75
    :cond_1b
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    move v4, v10

    :goto_6
    if-ge v4, v3, :cond_1d

    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1c

    move v4, v9

    goto :goto_7

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_1d
    move v4, v10

    :goto_7
    if-eqz v4, :cond_20

    .line 77
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 78
    array-length v4, v3

    if-ne v4, v14, :cond_1e

    .line 79
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    aget-object v2, v3, v9

    .line 80
    iput-object v2, v1, Le/d/d/b$j;->g:Ljava/lang/String;

    .line 81
    aget-object v2, v3, v10

    .line 82
    iput-object v2, v1, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 83
    aget-object v2, v3, v8

    .line 84
    iput-object v2, v1, Le/d/d/b$j;->h:Ljava/lang/String;

    goto/16 :goto_33

    :cond_1e
    if-ne v4, v8, :cond_1f

    .line 85
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    aget-object v2, v3, v9

    .line 86
    iput-object v2, v1, Le/d/d/b$j;->g:Ljava/lang/String;

    .line 87
    aget-object v2, v3, v10

    .line 88
    iput-object v2, v1, Le/d/d/b$j;->h:Ljava/lang/String;

    goto/16 :goto_33

    .line 89
    :cond_1f
    iget-object v2, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    iput-object v1, v2, Le/d/d/b$j;->h:Ljava/lang/String;

    goto/16 :goto_33

    :cond_20
    if-eq v3, v8, :cond_22

    if-eq v3, v14, :cond_21

    goto :goto_8

    .line 91
    :cond_21
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    iput-object v4, v3, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 93
    :cond_22
    iget-object v3, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    iput-object v4, v3, Le/d/d/b$j;->h:Ljava/lang/String;

    .line 95
    :goto_8
    iget-object v2, v2, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    iput-object v1, v2, Le/d/d/b$j;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_23
    const-string v11, "ADR"

    .line 97
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v7, "X-"

    const-string v14, "WORK"

    const-string v10, "HOME"

    const-string v9, "PREF"

    const/4 v8, 0x7

    if-eqz v11, :cond_36

    .line 98
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v1, 0x0

    goto :goto_9

    :cond_25
    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_26

    goto/16 :goto_33

    .line 100
    :cond_26
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2f

    .line 101
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_a
    const/4 v6, 0x0

    :cond_27
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 102
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 103
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    const/4 v4, 0x1

    goto :goto_b

    .line 104
    :cond_28
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    const/4 v3, 0x1

    goto :goto_a

    .line 105
    :cond_29
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2d

    const-string v13, "COMPANY"

    .line 106
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2a

    goto :goto_d

    :cond_2a
    const-string v13, "PARCEL"

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    const-string v13, "DOM"

    .line 108
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    const-string v13, "INTL"

    .line 109
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    goto :goto_b

    :cond_2b
    if-gez v3, :cond_27

    .line 110
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x2

    .line 111
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_2c
    move-object v6, v11

    :goto_c
    const/4 v3, 0x0

    goto :goto_b

    :cond_2d
    :goto_d
    const/4 v3, 0x2

    goto :goto_a

    :cond_2e
    move v7, v3

    move/from16 v31, v4

    move-object/from16 v30, v6

    goto :goto_e

    :cond_2f
    const/4 v7, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_e
    if-gez v7, :cond_30

    const/16 v29, 0x1

    goto :goto_f

    :cond_30
    move/from16 v29, v7

    .line 112
    :goto_f
    iget-object v1, v2, Le/d/d/b;->d:Ljava/util/List;

    if-nez v1, :cond_31

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v2, Le/d/d/b;->d:Ljava/util/List;

    .line 114
    :cond_31
    iget-object v1, v2, Le/d/d/b;->d:Ljava/util/List;

    iget v2, v2, Le/d/d/b;->o:I

    new-array v3, v8, [Ljava/lang/String;

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_32

    move v4, v8

    .line 116
    :cond_32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 117
    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v4, :cond_33

    :cond_34
    :goto_10
    if-ge v6, v8, :cond_35

    add-int/lit8 v4, v6, 0x1

    const/4 v5, 0x0

    .line 118
    aput-object v5, v3, v6

    move v6, v4

    goto :goto_10

    .line 119
    :cond_35
    new-instance v4, Le/d/d/b$p;

    const/4 v5, 0x0

    aget-object v22, v3, v5

    const/4 v5, 0x1

    aget-object v23, v3, v5

    const/4 v5, 0x2

    aget-object v24, v3, v5

    const/4 v5, 0x3

    aget-object v25, v3, v5

    const/4 v5, 0x4

    aget-object v26, v3, v5

    const/4 v11, 0x5

    aget-object v27, v3, v11

    const/4 v5, 0x6

    aget-object v28, v3, v5

    move-object/from16 v21, v4

    move/from16 v32, v2

    invoke-direct/range {v21 .. v32}, Le/d/d/b$p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 120
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_36
    const-string v11, "EMAIL"

    .line 121
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 122
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3e

    .line 123
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    :cond_37
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    const/4 v4, 0x1

    goto :goto_11

    .line 126
    :cond_38
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_39

    const/4 v3, 0x1

    goto :goto_11

    .line 127
    :cond_39
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v3, 0x2

    goto :goto_11

    :cond_3a
    const-string v11, "CELL"

    .line 128
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    const/4 v3, 0x4

    goto :goto_11

    :cond_3b
    if-gez v3, :cond_37

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x2

    .line 130
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_3c
    move-object v8, v5

    const/4 v3, 0x0

    goto :goto_11

    :cond_3d
    move v7, v3

    move v9, v4

    goto :goto_12

    :cond_3e
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_12
    if-gez v7, :cond_3f

    const/4 v14, 0x3

    goto :goto_13

    :cond_3f
    move v14, v7

    .line 131
    :goto_13
    iget-object v1, v2, Le/d/d/b;->c:Ljava/util/List;

    if-nez v1, :cond_40

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Le/d/d/b;->c:Ljava/util/List;

    .line 133
    :cond_40
    iget-object v1, v2, Le/d/d/b;->c:Ljava/util/List;

    new-instance v2, Le/d/d/b$e;

    invoke-direct {v2, v15, v14, v8, v9}, Le/d/d/b$e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_41
    const-string v11, "ORG"

    .line 134
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 135
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_44

    .line 136
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_42
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 137
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v3, 0x1

    goto :goto_14

    :cond_43
    move v7, v3

    goto :goto_15

    :cond_44
    const/4 v7, 0x0

    :goto_15
    const/4 v8, 0x1

    .line 138
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_47

    .line 139
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_47

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_45

    .line 141
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    :cond_45
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v3, v2, Le/d/d/b;->o:I

    .line 143
    invoke-static {v1, v3}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 147
    :cond_46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_17

    :cond_47
    const/4 v9, 0x0

    :goto_17
    if-nez v5, :cond_48

    .line 148
    sget-object v5, Le/d/d/b;->r:Ljava/util/List;

    .line 149
    :cond_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4b

    const/4 v4, 0x0

    .line 150
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v3

    :goto_18
    if-ge v10, v1, :cond_4a

    if-le v10, v3, :cond_49

    const/16 v3, 0x20

    .line 152
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_49
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto :goto_18

    .line 154
    :cond_4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_19

    :cond_4b
    const/4 v1, 0x0

    .line 155
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    :cond_4c
    move-object v4, v6

    const/4 v3, 0x0

    .line 156
    :goto_19
    iget-object v1, v2, Le/d/d/b;->e:Ljava/util/List;

    if-nez v1, :cond_4d

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v9

    .line 157
    invoke-virtual/range {v1 .. v7}, Le/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_33

    .line 158
    :cond_4d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/d/d/b$m;

    .line 159
    iget-object v6, v5, Le/d/d/b$m;->a:Ljava/lang/String;

    if-nez v6, :cond_4e

    .line 160
    iget-object v6, v5, Le/d/d/b$m;->b:Ljava/lang/String;

    if-nez v6, :cond_4e

    .line 161
    iput-object v4, v5, Le/d/d/b$m;->a:Ljava/lang/String;

    .line 162
    iput-object v3, v5, Le/d/d/b$m;->b:Ljava/lang/String;

    .line 163
    iput-boolean v7, v5, Le/d/d/b$m;->e:Z

    goto/16 :goto_33

    :cond_4f
    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v9

    move v6, v8

    .line 164
    invoke-virtual/range {v1 .. v7}, Le/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_33

    :cond_50
    const-string v5, "TITLE"

    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 166
    iget-object v1, v2, Le/d/d/b;->e:Ljava/util/List;

    if-nez v1, :cond_51

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    .line 167
    invoke-virtual/range {v1 .. v7}, Le/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_33

    .line 168
    :cond_51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/d/b$m;

    .line 169
    iget-object v4, v3, Le/d/d/b$m;->c:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 170
    iput-object v15, v3, Le/d/d/b$m;->c:Ljava/lang/String;

    goto/16 :goto_33

    :cond_53
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    .line 171
    invoke-virtual/range {v1 .. v7}, Le/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_33

    :cond_54
    const-string v5, "ROLE"

    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    goto/16 :goto_33

    :cond_55
    const-string v5, "PHOTO"

    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "LOGO"

    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    goto/16 :goto_2e

    :cond_56
    const-string v1, "TEL"

    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "sip:"

    if-eqz v1, :cond_6f

    .line 176
    iget v1, v2, Le/d/d/b;->o:I

    invoke-static {v1}, Le/d/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 177
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_1b

    :cond_57
    const-string v1, "tel:"

    .line 178
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v1, 0x4

    .line 179
    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_58
    const/4 v1, 0x4

    move-object v3, v15

    :goto_1a
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_59

    .line 180
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 181
    invoke-virtual {v2, v15, v1}, Le/d/d/b;->d(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_33

    .line 182
    :cond_59
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5a

    goto/16 :goto_33

    .line 183
    :cond_5a
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 184
    sget-object v5, Le/d/d/o;->a:Ljava/util/Map;

    if-nez v3, :cond_5b

    goto :goto_1c

    :cond_5b
    move-object v6, v3

    :goto_1c
    if-eqz v4, :cond_66

    .line 185
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_5c

    goto :goto_1e

    .line 186
    :cond_5c
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 187
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5d

    const/4 v11, 0x1

    goto :goto_1d

    :cond_5d
    const-string v1, "FAX"

    .line 188
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x4

    const/4 v12, 0x1

    goto :goto_1d

    .line 189
    :cond_5e
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    if-gez v13, :cond_5f

    const/4 v1, 0x2

    .line 190
    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 191
    :cond_5f
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_60

    :goto_1e
    const/4 v8, 0x6

    const/16 v20, -0x1

    goto :goto_20

    .line 192
    :cond_60
    sget-object v1, Le/d/d/o;->c:Ljava/util/Map;

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_63

    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "@"

    .line 194
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v8, 0x6

    if-ne v14, v8, :cond_61

    if-lez v15, :cond_61

    .line 195
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v20, -0x1

    add-int/lit8 v14, v14, -0x1

    if-lt v15, v14, :cond_62

    goto :goto_1f

    :cond_61
    const/16 v20, -0x1

    :goto_1f
    if-ltz v13, :cond_62

    if-nez v13, :cond_64

    .line 196
    :cond_62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_21

    :cond_63
    const/4 v8, 0x6

    const/16 v20, -0x1

    if-gez v13, :cond_64

    move-object v10, v14

    const/4 v13, 0x0

    goto :goto_22

    :cond_64
    :goto_20
    move v1, v13

    :goto_21
    move v13, v1

    :goto_22
    const/4 v1, 0x4

    const/4 v8, 0x7

    goto :goto_1d

    :cond_65
    move v7, v13

    goto :goto_23

    :cond_66
    const/16 v20, -0x1

    move/from16 v7, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_23
    if-gez v7, :cond_68

    if-eqz v11, :cond_67

    const/16 v1, 0xc

    goto :goto_24

    :cond_67
    const/4 v1, 0x1

    goto :goto_24

    :cond_68
    move v1, v7

    :goto_24
    if-eqz v12, :cond_6b

    const/4 v5, 0x1

    if-ne v1, v5, :cond_69

    const/4 v13, 0x5

    goto :goto_25

    :cond_69
    const/4 v5, 0x3

    if-ne v1, v5, :cond_6a

    const/4 v13, 0x4

    goto :goto_25

    :cond_6a
    const/4 v5, 0x7

    if-ne v1, v5, :cond_6b

    const/16 v13, 0xd

    goto :goto_25

    :cond_6b
    move v13, v1

    :goto_25
    if-nez v13, :cond_6c

    goto :goto_26

    .line 197
    :cond_6c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 198
    :goto_26
    instance-of v1, v10, Ljava/lang/Integer;

    if-eqz v1, :cond_6d

    .line 199
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x0

    goto :goto_27

    .line 200
    :cond_6d
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    :goto_27
    if-eqz v4, :cond_6e

    .line 201
    invoke-interface {v4, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v9, 0x1

    goto :goto_28

    :cond_6e
    const/4 v9, 0x0

    .line 202
    :goto_28
    invoke-virtual {v2, v1, v3, v8, v9}, Le/d/d/b;->b(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_33

    :cond_6f
    const/16 v20, -0x1

    const-string v1, "X-SKYPE-PSTNNUMBER"

    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 204
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_70

    .line 205
    invoke-interface {v1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_29

    :cond_70
    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 206
    :goto_29
    invoke-virtual {v2, v1, v15, v3, v9}, Le/d/d/b;->b(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_33

    .line 207
    :cond_71
    sget-object v1, Le/d/d/b;->q:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 208
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_76

    .line 210
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v7, v20

    const/16 v19, 0x0

    :cond_72
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/16 v19, 0x1

    goto :goto_2a

    :cond_73
    if-gez v7, :cond_72

    .line 212
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    const/4 v7, 0x1

    goto :goto_2a

    .line 213
    :cond_74
    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v7, 0x2

    goto :goto_2a

    :cond_75
    move/from16 v17, v19

    goto :goto_2b

    :cond_76
    move/from16 v7, v20

    const/16 v17, 0x0

    :goto_2b
    if-gez v7, :cond_77

    const/16 v16, 0x1

    goto :goto_2c

    :cond_77
    move/from16 v16, v7

    :goto_2c
    const/4 v14, 0x0

    .line 214
    iget-object v3, v2, Le/d/d/b;->f:Ljava/util/List;

    if-nez v3, :cond_78

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Le/d/d/b;->f:Ljava/util/List;

    .line 216
    :cond_78
    iget-object v2, v2, Le/d/d/b;->f:Ljava/util/List;

    new-instance v3, Le/d/d/b$i;

    move-object v12, v3

    move v13, v1

    invoke-direct/range {v12 .. v17}, Le/d/d/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_79
    const-string v1, "NOTE"

    .line 217
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 218
    iget-object v1, v2, Le/d/d/b;->k:Ljava/util/List;

    if-nez v1, :cond_7a

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v2, Le/d/d/b;->k:Ljava/util/List;

    .line 220
    :cond_7a
    iget-object v1, v2, Le/d/d/b;->k:Ljava/util/List;

    new-instance v2, Le/d/d/b$l;

    invoke-direct {v2, v15}, Le/d/d/b$l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_7b
    const-string v1, "URL"

    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 222
    iget-object v1, v2, Le/d/d/b;->h:Ljava/util/List;

    if-nez v1, :cond_7c

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v2, Le/d/d/b;->h:Ljava/util/List;

    .line 224
    :cond_7c
    iget-object v1, v2, Le/d/d/b;->h:Ljava/util/List;

    new-instance v2, Le/d/d/b$s;

    invoke-direct {v2, v15}, Le/d/d/b$s;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_7d
    const-string v1, "BDAY"

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 226
    new-instance v1, Le/d/d/b$d;

    invoke-direct {v1, v15}, Le/d/d/b$d;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Le/d/d/b;->m:Le/d/d/b$d;

    goto/16 :goto_33

    :cond_7e
    const-string v1, "ANNIVERSARY"

    .line 227
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 228
    new-instance v1, Le/d/d/b$c;

    invoke-direct {v1, v15}, Le/d/d/b$c;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Le/d/d/b;->n:Le/d/d/b$c;

    goto/16 :goto_33

    :cond_7f
    const-string v1, "X-PHONETIC-FIRST-NAME"

    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 230
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 231
    iput-object v15, v1, Le/d/d/b$j;->h:Ljava/lang/String;

    goto/16 :goto_33

    :cond_80
    const-string v1, "X-PHONETIC-MIDDLE-NAME"

    .line 232
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 233
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 234
    iput-object v15, v1, Le/d/d/b$j;->i:Ljava/lang/String;

    goto/16 :goto_33

    :cond_81
    const-string v1, "X-PHONETIC-LAST-NAME"

    .line 235
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 236
    iget-object v1, v2, Le/d/d/b;->a:Le/d/d/b$j;

    .line 237
    iput-object v15, v1, Le/d/d/b$j;->g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_82
    const-string v1, "IMPP"

    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 239
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 240
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 241
    invoke-virtual {v2, v15, v1}, Le/d/d/b;->d(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_33

    :cond_83
    const-string v1, "X-SIP"

    .line 242
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 243
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 244
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 245
    invoke-virtual {v2, v15, v1}, Le/d/d/b;->d(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_33

    :cond_84
    const-string v1, "X-ANDROID-CUSTOM"

    .line 246
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 247
    iget v1, v2, Le/d/d/b;->o:I

    invoke-static {v15, v1}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 248
    iget-object v3, v2, Le/d/d/b;->l:Ljava/util/List;

    if-nez v3, :cond_85

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Le/d/d/b;->l:Ljava/util/List;

    .line 250
    :cond_85
    iget-object v2, v2, Le/d/d/b;->l:Ljava/util/List;

    .line 251
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_86

    const/4 v3, 0x0

    .line 252
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v8, 0x0

    goto :goto_2d

    :cond_86
    const/4 v3, 0x0

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_87

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 254
    :cond_87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 255
    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    move-object v1, v3

    .line 256
    :goto_2d
    new-instance v3, Le/d/d/b$b;

    invoke-direct {v3, v1, v8}, Le/d/d/b$b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 257
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_88
    :goto_2e
    const/4 v3, 0x0

    const-string v5, "VALUE"

    .line 258
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_8b

    const-string v6, "URI"

    .line 259
    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    const-string v6, "uri"

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 260
    :cond_89
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 261
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v15, :cond_93

    .line 262
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 263
    iget-object v4, v2, Le/d/d/b;->g:Ljava/util/List;

    if-nez v4, :cond_8a

    .line 264
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v2, Le/d/d/b;->g:Ljava/util/List;

    goto :goto_2f

    :cond_8a
    const/4 v5, 0x1

    .line 265
    :goto_2f
    new-instance v4, Le/d/d/b$o;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5, v3}, Le/d/d/b$o;-><init>(Ljava/lang/String;[BZLandroid/net/Uri;)V

    .line 266
    iget-object v1, v2, Le/d/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_8b
    const/4 v6, 0x0

    .line 267
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_8f

    .line 268
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v6

    :cond_8c
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 269
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const/4 v3, 0x1

    goto :goto_30

    :cond_8d
    if-nez v8, :cond_8c

    move-object v8, v5

    goto :goto_30

    :cond_8e
    move v9, v3

    goto :goto_31

    :cond_8f
    move v9, v3

    move-object v8, v6

    .line 270
    :goto_31
    iget-object v3, v2, Le/d/d/b;->g:Ljava/util/List;

    if-nez v3, :cond_90

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Le/d/d/b;->g:Ljava/util/List;

    .line 272
    :cond_90
    new-instance v3, Le/d/d/b$o;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v3, v8, v1, v9, v4}, Le/d/d/b$o;-><init>(Ljava/lang/String;[BZLandroid/net/Uri;)V

    .line 273
    iget-object v1, v2, Le/d/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 274
    :cond_91
    :goto_32
    iget-object v1, v2, Le/d/d/b;->j:Ljava/util/List;

    if-nez v1, :cond_92

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Le/d/d/b;->j:Ljava/util/List;

    .line 276
    :cond_92
    iget-object v1, v2, Le/d/d/b;->j:Ljava/util/List;

    new-instance v2, Le/d/d/b$k;

    invoke-direct {v2, v15}, Le/d/d/b$k;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    :goto_33
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/d/d/c;->b:Le/d/d/b;

    .line 2
    iget-object v1, v0, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v0}, Le/d/d/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Le/d/d/b$j;->k:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/d/d/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/d;

    .line 4
    iget-object v2, p0, Le/d/d/c;->b:Le/d/d/b;

    invoke-interface {v1, v2}, Le/d/d/d;->b(Le/d/d/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/d/d/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 6
    iget-object v2, p0, Le/d/d/c;->a:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d/d/b;

    .line 7
    iget-object v3, p0, Le/d/d/c;->b:Le/d/d/b;

    .line 8
    iget-object v4, v2, Le/d/d/b;->p:Ljava/util/List;

    if-nez v4, :cond_1

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Le/d/d/b;->p:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v4, v2, Le/d/d/b;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object v2, p0, Le/d/d/c;->b:Le/d/d/b;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Le/d/d/c;->b:Le/d/d/b;

    .line 13
    :goto_1
    iget-object v2, p0, Le/d/d/c;->a:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/d/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/d;

    .line 2
    invoke-interface {v1}, Le/d/d/d;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/d/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/d;

    .line 2
    invoke-interface {v1}, Le/d/d/d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Le/d/d/b;

    iget v1, p0, Le/d/d/c;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/d/d/b;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Le/d/d/c;->b:Le/d/d/b;

    .line 2
    iget-object v1, p0, Le/d/d/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
