.class public Le/q/e/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Le/q/e/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/q/e/b/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Le/q/e/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/q/e/b/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/q/e/b/g;Le/q/e/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/g<",
            "TT;>;",
            "Le/q/e/b/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/e/b/h;->a:Le/q/e/b/g;

    .line 3
    iput-object p2, p0, Le/q/e/b/h;->b:Le/q/e/b/a;

    return-void
.end method


# virtual methods
.method public final a(Le/q/e/b/g;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/g<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v1, v1, Le/q/e/b/g;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_7

    .line 2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/q/e/b/g;

    const-string v6, ":"

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6
    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    aget-object v6, v5, v7

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 7
    :goto_2
    iget-object v8, v4, Le/q/e/b/g;->b:Le/q/e/b/c;

    .line 8
    aget-object v9, v5, v3

    aget-object v5, v5, v2

    iget-object v10, v0, Le/q/e/b/h;->b:Le/q/e/b/a;

    .line 9
    iget-object v11, v8, Le/q/e/b/c;->b:[[J

    if-eqz v11, :cond_3

    :cond_2
    move-object/from16 v16, v4

    move-object v4, v1

    goto/16 :goto_7

    .line 10
    :cond_3
    iget-object v11, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v7, [I

    aput v12, v13, v3

    aput v11, v13, v2

    const-class v11, J

    invoke-static {v11, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[J

    iput-object v11, v8, Le/q/e/b/c;->b:[[J

    move v11, v3

    .line 11
    :goto_3
    iget-object v12, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 12
    iget-object v12, v8, Le/q/e/b/c;->b:[[J

    add-int/lit8 v13, v11, -0x1

    aget-object v12, v12, v13

    iget-object v14, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/q/e/b/b;

    .line 13
    iget-wide v14, v14, Le/q/e/b/b;->b:J

    .line 14
    iget-object v2, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/e/b/b;

    move-object/from16 v16, v4

    .line 15
    iget-wide v3, v2, Le/q/e/b/b;->b:J

    sub-long/2addr v14, v3

    .line 16
    aput-wide v14, v12, v11

    const-string v2, ""

    if-eqz v6, :cond_4

    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v8, Le/q/e/b/c;->b:[[J

    aget-object v3, v3, v13

    aget-wide v14, v3, v11

    .line 18
    invoke-virtual {v10, v9, v14, v15, v5}, Le/q/e/b/a;->e(Ljava/lang/String;JLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    .line 19
    iget-object v4, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/q/e/b/b;

    .line 20
    iget-object v12, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/q/e/b/b;

    .line 21
    iget-object v13, v4, Le/q/e/b/b;->a:Ljava/lang/Object;

    iget-object v14, v12, Le/q/e/b/b;->a:Ljava/lang/Object;

    .line 22
    new-instance v15, Ljava/util/Date;

    move-object/from16 v17, v8

    .line 23
    iget-wide v7, v4, Le/q/e/b/b;->b:J

    move-object v4, v1

    iget-wide v0, v12, Le/q/e/b/b;->b:J

    .line 24
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 25
    invoke-virtual {v10, v13, v14, v3, v15}, Le/q/e/b/a;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Date;)V

    goto :goto_4

    :cond_4
    move-object v4, v1

    move-object/from16 v17, v8

    :goto_4
    const/4 v0, 0x2

    if-lt v11, v0, :cond_6

    add-int/lit8 v1, v11, -0x2

    :goto_5
    if-ltz v1, :cond_6

    move-object/from16 v3, v17

    .line 26
    iget-object v7, v3, Le/q/e/b/c;->b:[[J

    aget-object v8, v7, v1

    aget-object v12, v7, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, v12, v13

    aget-object v7, v7, v13

    aget-wide v12, v7, v11

    add-long/2addr v14, v12

    aput-wide v14, v8, v11

    if-eqz v6, :cond_5

    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v3, Le/q/e/b/c;->b:[[J

    aget-object v7, v7, v1

    aget-wide v12, v7, v11

    .line 28
    invoke-virtual {v10, v9, v12, v13, v5}, Le/q/e/b/a;->e(Ljava/lang/String;JLjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    .line 29
    iget-object v8, v3, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/q/e/b/b;

    .line 30
    iget-object v12, v3, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/q/e/b/b;

    .line 31
    iget-object v13, v8, Le/q/e/b/b;->a:Ljava/lang/Object;

    iget-object v14, v12, Le/q/e/b/b;->a:Ljava/lang/Object;

    .line 32
    new-instance v15, Ljava/util/Date;

    move/from16 v17, v1

    .line 33
    iget-wide v0, v8, Le/q/e/b/b;->b:J

    move-object v8, v2

    move-object/from16 v18, v3

    iget-wide v2, v12, Le/q/e/b/b;->b:J

    .line 34
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 35
    invoke-virtual {v10, v13, v14, v7, v15}, Le/q/e/b/a;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Date;)V

    goto :goto_6

    :cond_5
    move/from16 v17, v1

    move-object v8, v2

    move-object/from16 v18, v3

    :goto_6
    add-int/lit8 v1, v17, -0x1

    move-object v2, v8

    move-object/from16 v17, v18

    const/4 v0, 0x2

    goto :goto_5

    :cond_6
    move-object/from16 v18, v17

    add-int/lit8 v11, v11, 0x1

    move-object v1, v4

    move-object/from16 v4, v16

    move-object/from16 v8, v18

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_3

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .line 36
    invoke-virtual {v0, v1}, Le/q/e/b/h;->a(Le/q/e/b/g;)V

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public b(Le/q/e/b/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/q/e/b/h;->a:Le/q/e/b/g;

    .line 2
    new-instance v1, Le/q/e/b/b;

    .line 3
    iget-object v2, p1, Le/q/e/b/d;->b:Ljava/lang/Object;

    .line 4
    iget-wide v3, p1, Le/q/e/b/d;->c:J

    .line 5
    invoke-direct {v1, v2, v3, v4}, Le/q/e/b/b;-><init>(Ljava/lang/Object;J)V

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    iget-object v4, p1, Le/q/e/b/d;->e:Ljava/util/List;

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-object v4, p0, Le/q/e/b/h;->b:Le/q/e/b/a;

    .line 9
    iget-object v5, p1, Le/q/e/b/d;->e:Ljava/util/List;

    .line 10
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    iget-object v6, p1, Le/q/e/b/d;->f:Ljava/util/List;

    .line 12
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    iget-object v7, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 14
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    .line 15
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v8, p1, Le/q/e/b/d;->d:Ljava/lang/String;

    const-string v9, ":"

    .line 17
    invoke-static {v7, v8, v9, v6, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v6, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    iget-object v0, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/e/b/g;

    .line 20
    iget-object v5, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-nez v5, :cond_4

    .line 21
    iget-object v5, p1, Le/q/e/b/d;->e:Ljava/util/List;

    .line 22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v5, v3, :cond_4

    .line 23
    iget-object v5, p1, Le/q/e/b/d;->a:Ljava/lang/String;

    .line 24
    iget-wide v6, p1, Le/q/e/b/d;->c:J

    .line 25
    iget-object v8, v0, Le/q/e/b/g;->b:Le/q/e/b/c;

    .line 26
    iget-object v9, v8, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    .line 27
    :cond_3
    iget-object v8, v8, Le/q/e/b/c;->a:Ljava/util/List;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Le/d/c/a/a;->F1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/q/e/b/b;

    .line 28
    :goto_2
    iget-wide v8, v8, Le/q/e/b/b;->b:J

    sub-long/2addr v6, v8

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 30
    iget-object v8, p1, Le/q/e/b/d;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {v4, v5, v6, v7, v8}, Le/q/e/b/a;->a(Ljava/lang/String;JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 32
    iget-object v5, p1, Le/q/e/b/d;->b:Ljava/lang/Object;

    .line 33
    iget-object v4, v4, Le/q/e/b/a;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_4
    iget-wide v4, v0, Le/q/e/b/g;->c:J

    .line 35
    iget-wide v6, p1, Le/q/e/b/d;->c:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 36
    iput-wide v6, v0, Le/q/e/b/g;->c:J

    goto :goto_3

    .line 37
    :cond_5
    new-instance v4, Le/q/e/b/g;

    .line 38
    iget-wide v6, p1, Le/q/e/b/d;->c:J

    .line 39
    invoke-direct {v4, v6, v7}, Le/q/e/b/g;-><init>(J)V

    .line 40
    iget-object v0, v0, Le/q/e/b/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 41
    :cond_6
    :goto_3
    iget-object v4, v0, Le/q/e/b/g;->b:Le/q/e/b/c;

    .line 42
    iget-object v4, v4, Le/q/e/b/c;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method
