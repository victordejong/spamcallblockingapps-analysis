.class public final Le/m/i/j/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/i/j/d/a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/i/j/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/i/j/d/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/i/j/d/c;->a:Le/m/i/j/d/a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/i/j/d/c;->b:Ljava/util/List;

    .line 4
    new-instance v1, Le/m/i/j/d/b;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a([II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v2, :cond_e

    .line 1
    array-length v3, v1

    sub-int/2addr v3, v2

    if-lez v3, :cond_d

    .line 2
    iget-object v4, v0, Le/m/i/j/d/c;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "GenericGFPolys do not have same GenericGF field"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v2, v4, :cond_5

    .line 3
    iget-object v4, v0, Le/m/i/j/d/c;->b:Ljava/util/List;

    invoke-static {v4, v8}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/i/j/d/b;

    .line 4
    iget-object v9, v0, Le/m/i/j/d/c;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-gt v9, v2, :cond_5

    .line 5
    new-instance v10, Le/m/i/j/d/b;

    iget-object v11, v0, Le/m/i/j/d/c;->a:Le/m/i/j/d/a;

    new-array v6, v6, [I

    aput v8, v6, v7

    add-int/lit8 v12, v9, -0x1

    .line 6
    iget v13, v11, Le/m/i/j/d/a;->f:I

    add-int/2addr v12, v13

    .line 7
    iget-object v13, v11, Le/m/i/j/d/a;->a:[I

    aget v12, v13, v12

    aput v12, v6, v8

    .line 8
    invoke-direct {v10, v11, v6}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    .line 9
    iget-object v6, v4, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v4}, Le/m/i/j/d/b;->d()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v10}, Le/m/i/j/d/b;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 11
    :cond_0
    iget-object v6, v4, Le/m/i/j/d/b;->b:[I

    .line 12
    array-length v8, v6

    .line 13
    iget-object v10, v10, Le/m/i/j/d/b;->b:[I

    .line 14
    array-length v11, v10

    add-int v12, v8, v11

    add-int/lit8 v12, v12, -0x1

    .line 15
    new-array v12, v12, [I

    move v13, v7

    :goto_1
    if-ge v7, v8, :cond_2

    .line 16
    aget v14, v6, v7

    :goto_2
    if-ge v13, v11, :cond_1

    add-int v15, v7, v13

    .line 17
    aget v16, v12, v15

    move-object/from16 v17, v6

    iget-object v6, v4, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    move/from16 v18, v8

    aget v8, v10, v13

    .line 18
    invoke-virtual {v6, v14, v8}, Le/m/i/j/d/a;->a(II)I

    move-result v6

    xor-int v6, v6, v16

    .line 19
    aput v6, v12, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v17

    move/from16 v8, v18

    goto :goto_2

    :cond_1
    move-object/from16 v17, v6

    move/from16 v18, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_1

    .line 20
    :cond_2
    new-instance v6, Le/m/i/j/d/b;

    iget-object v4, v4, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    invoke-direct {v6, v4, v12}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    move-object v4, v6

    goto :goto_4

    .line 21
    :cond_3
    :goto_3
    iget-object v4, v4, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    .line 22
    iget-object v4, v4, Le/m/i/j/d/a;->c:Le/m/i/j/d/b;

    .line 23
    :goto_4
    iget-object v6, v0, Le/m/i/j/d/c;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_0

    .line 24
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_5
    iget-object v4, v0, Le/m/i/j/d/c;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/i/j/d/b;

    .line 26
    new-array v6, v3, [I

    const/4 v7, 0x0

    .line 27
    invoke-static {v1, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v7, Le/m/i/j/d/b;

    iget-object v8, v0, Le/m/i/j/d/c;->a:Le/m/i/j/d/a;

    invoke-direct {v7, v8, v6}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    const/4 v6, 0x1

    .line 29
    invoke-virtual {v7, v2, v6}, Le/m/i/j/d/b;->e(II)Le/m/i/j/d/b;

    move-result-object v6

    .line 30
    iget-object v7, v6, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    iget-object v8, v4, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 31
    invoke-virtual {v4}, Le/m/i/j/d/b;->d()Z

    move-result v5

    if-nez v5, :cond_b

    .line 32
    iget-object v5, v6, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    .line 33
    iget-object v5, v5, Le/m/i/j/d/a;->c:Le/m/i/j/d/b;

    .line 34
    invoke-virtual {v4}, Le/m/i/j/d/b;->c()I

    move-result v7

    invoke-virtual {v4, v7}, Le/m/i/j/d/b;->b(I)I

    move-result v7

    .line 35
    iget-object v8, v6, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    .line 36
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 37
    iget-object v9, v8, Le/m/i/j/d/a;->a:[I

    iget v10, v8, Le/m/i/j/d/a;->d:I

    iget-object v8, v8, Le/m/i/j/d/a;->b:[I

    aget v7, v8, v7

    sub-int/2addr v10, v7

    add-int/lit8 v10, v10, -0x1

    aget v7, v9, v10

    move-object v8, v6

    .line 38
    :goto_5
    invoke-virtual {v8}, Le/m/i/j/d/b;->c()I

    move-result v9

    invoke-virtual {v4}, Le/m/i/j/d/b;->c()I

    move-result v10

    if-lt v9, v10, :cond_8

    invoke-virtual {v8}, Le/m/i/j/d/b;->d()Z

    move-result v9

    if-nez v9, :cond_8

    .line 39
    invoke-virtual {v8}, Le/m/i/j/d/b;->c()I

    move-result v9

    invoke-virtual {v4}, Le/m/i/j/d/b;->c()I

    move-result v10

    sub-int/2addr v9, v10

    .line 40
    iget-object v10, v6, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    invoke-virtual {v8}, Le/m/i/j/d/b;->c()I

    move-result v11

    invoke-virtual {v8, v11}, Le/m/i/j/d/b;->b(I)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Le/m/i/j/d/a;->a(II)I

    move-result v10

    .line 41
    invoke-virtual {v4, v9, v10}, Le/m/i/j/d/b;->e(II)Le/m/i/j/d/b;

    move-result-object v11

    .line 42
    iget-object v12, v6, Le/m/i/j/d/b;->a:Le/m/i/j/d/a;

    .line 43
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v9, :cond_7

    if-nez v10, :cond_6

    .line 44
    iget-object v9, v12, Le/m/i/j/d/a;->c:Le/m/i/j/d/b;

    goto :goto_6

    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 45
    new-array v9, v9, [I

    const/4 v13, 0x0

    .line 46
    aput v10, v9, v13

    .line 47
    new-instance v10, Le/m/i/j/d/b;

    invoke-direct {v10, v12, v9}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    move-object v9, v10

    .line 48
    :goto_6
    invoke-virtual {v5, v9}, Le/m/i/j/d/b;->a(Le/m/i/j/d/b;)Le/m/i/j/d/b;

    move-result-object v5

    .line 49
    invoke-virtual {v8, v11}, Le/m/i/j/d/b;->a(Le/m/i/j/d/b;)Le/m/i/j/d/b;

    move-result-object v8

    goto :goto_5

    .line 50
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_8
    const/4 v4, 0x2

    new-array v4, v4, [Le/m/i/j/d/b;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v8, v4, v5

    .line 51
    aget-object v4, v4, v5

    .line 52
    iget-object v4, v4, Le/m/i/j/d/b;->b:[I

    .line 53
    array-length v5, v4

    sub-int/2addr v2, v5

    move v5, v6

    :goto_7
    if-ge v5, v2, :cond_9

    add-int v7, v3, v5

    .line 54
    aput v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    add-int/2addr v3, v2

    .line 55
    array-length v2, v4

    invoke-static {v4, v6, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 56
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1}, Ljava/lang/ArithmeticException;-><init>()V

    throw v1

    .line 57
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Divide by 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No data bytes provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No error correction bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
