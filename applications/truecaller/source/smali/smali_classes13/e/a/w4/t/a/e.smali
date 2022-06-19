.class public Le/a/w4/t/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Le/a/w4/t/a/c$a;IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    array-length v3, v1

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2
    :cond_0
    aget-object v3, v1, v2

    .line 3
    iget-object v5, v0, Le/a/w4/t/a/e;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 4
    iput v4, v0, Le/a/w4/t/a/e;->b:I

    iput v4, v0, Le/a/w4/t/a/e;->a:I

    return v4

    :cond_1
    const/4 v6, -0x1

    const/16 v7, 0x30

    const/16 v8, 0x2b

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lt v5, v9, :cond_7

    .line 5
    iget-object v11, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v9, :cond_7

    iget-object v11, v0, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_7

    iget-object v11, v0, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_7

    .line 7
    iget-object v11, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_2

    iget-object v11, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v7, :cond_3

    :cond_2
    iget-object v11, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_7

    .line 9
    :cond_3
    iget-object v11, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_4

    move v11, v6

    goto :goto_0

    :cond_4
    move v11, v4

    :goto_0
    if-ne v5, v9, :cond_6

    .line 10
    iput v4, v0, Le/a/w4/t/a/e;->a:I

    .line 11
    iget-object v1, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_5

    .line 12
    iput v10, v0, Le/a/w4/t/a/e;->b:I

    goto :goto_1

    .line 13
    :cond_5
    iput v9, v0, Le/a/w4/t/a/e;->b:I

    :goto_1
    return v10

    :cond_6
    move v12, v9

    goto :goto_2

    :cond_7
    move v11, v4

    move v12, v11

    .line 14
    :goto_2
    iget-object v13, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v9, :cond_9

    iget-object v13, v0, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_9

    iget-object v13, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_9

    iget-object v3, v3, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_9

    if-ne v5, v10, :cond_8

    .line 15
    iput v4, v0, Le/a/w4/t/a/e;->a:I

    .line 16
    iput v9, v0, Le/a/w4/t/a/e;->b:I

    return v10

    :cond_8
    move v3, v10

    move v12, v3

    goto :goto_3

    :cond_9
    move v3, v4

    move v9, v3

    move v6, v11

    .line 17
    :goto_3
    aget-object v7, v1, v2

    iget v7, v7, Le/a/w4/t/a/c$a;->d:I

    iput v7, v0, Le/a/w4/t/a/e;->a:I

    add-int v7, v9, v12

    add-int/2addr v7, v6

    .line 18
    :goto_4
    aget-object v6, v1, v2

    iget-object v6, v6, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v11, v2

    move v13, v4

    :goto_5
    if-ge v12, v5, :cond_12

    .line 19
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_c

    add-int/lit8 v11, v11, 0x1

    .line 20
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    if-nez v12, :cond_a

    .line 21
    iget v6, v0, Le/a/w4/t/a/e;->a:I

    add-int/2addr v6, v10

    iput v6, v0, Le/a/w4/t/a/e;->a:I

    .line 22
    :cond_a
    array-length v6, v1

    if-lt v11, v6, :cond_b

    .line 23
    iput v4, v0, Le/a/w4/t/a/e;->b:I

    iput v4, v0, Le/a/w4/t/a/e;->a:I

    return v4

    .line 24
    :cond_b
    aget-object v6, v1, v11

    iget-object v6, v6, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v7, v4

    move v13, v7

    goto :goto_6

    .line 25
    :cond_c
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 26
    iget-object v15, v0, Le/a/w4/t/a/e;->e:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 27
    iget-object v10, v0, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_e

    if-nez v7, :cond_d

    aget-object v10, v1, v11

    iget-object v10, v10, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_e

    :cond_d
    :goto_7
    move v10, v4

    goto :goto_9

    :cond_e
    if-eq v15, v14, :cond_11

    if-eqz p3, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 28
    aget-object v10, v1, v11

    iget-object v10, v10, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v13, v10, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v12, v7

    .line 29
    aget-object v6, v1, v11

    iget-object v6, v6, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v7, v4

    goto :goto_8

    :cond_11
    add-int/lit8 v7, v7, 0x1

    :goto_8
    const/4 v10, 0x1

    add-int/2addr v12, v10

    goto :goto_5

    :cond_12
    const/4 v10, 0x1

    :goto_9
    if-eqz v10, :cond_17

    .line 30
    iget v5, v0, Le/a/w4/t/a/e;->a:I

    add-int/2addr v5, v9

    iput v5, v0, Le/a/w4/t/a/e;->a:I

    .line 31
    aget-object v2, v1, v2

    iget-object v2, v2, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Le/a/w4/t/a/c;->c(C)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 32
    iget v2, v0, Le/a/w4/t/a/e;->a:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Le/a/w4/t/a/e;->a:I

    :cond_13
    if-eqz v3, :cond_14

    .line 33
    iput v4, v0, Le/a/w4/t/a/e;->a:I

    .line 34
    :cond_14
    aget-object v2, v1, v11

    iget v2, v2, Le/a/w4/t/a/c$a;->d:I

    add-int/2addr v2, v7

    iput v2, v0, Le/a/w4/t/a/e;->b:I

    .line 35
    aget-object v2, v1, v11

    iget-object v2, v2, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Le/a/w4/t/a/c;->c(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 36
    iget v2, v0, Le/a/w4/t/a/e;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Le/a/w4/t/a/e;->b:I

    .line 37
    :cond_15
    iget v2, v0, Le/a/w4/t/a/e;->b:I

    aget-object v3, v1, v11

    iget v3, v3, Le/a/w4/t/a/c$a;->e:I

    if-le v2, v3, :cond_16

    .line 38
    aget-object v1, v1, v11

    iget v1, v1, Le/a/w4/t/a/c$a;->e:I

    iput v1, v0, Le/a/w4/t/a/e;->b:I

    :cond_16
    const/4 v3, 0x1

    return v3

    :cond_17
    const/4 v3, 0x1

    if-nez p3, :cond_18

    .line 39
    iput v4, v0, Le/a/w4/t/a/e;->b:I

    iput v4, v0, Le/a/w4/t/a/e;->a:I

    return v4

    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 40
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v9, v6, :cond_1a

    add-int/lit8 v2, v2, 0x1

    .line 41
    array-length v6, v1

    if-lt v2, v6, :cond_19

    .line 42
    iput v4, v0, Le/a/w4/t/a/e;->b:I

    iput v4, v0, Le/a/w4/t/a/e;->a:I

    return v4

    .line 43
    :cond_19
    aget-object v6, v1, v2

    iget v6, v6, Le/a/w4/t/a/c$a;->d:I

    iput v6, v0, Le/a/w4/t/a/e;->a:I

    move v7, v4

    move v9, v7

    goto :goto_a

    :cond_1a
    move v7, v9

    :goto_a
    move v10, v3

    move v3, v4

    move v12, v3

    goto/16 :goto_4
.end method
