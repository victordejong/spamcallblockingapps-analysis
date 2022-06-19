.class public Le/q/f/a/e/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Le/q/f/a/b;


# instance fields
.field public a:Le/q/f/a/c/b;

.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/q/f/a/e/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/q/f/a/e/a;


# direct methods
.method public constructor <init>(Le/q/f/a/c/b;Le/q/f/a/e/a;Le/q/f/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/e/g/b;->a:Le/q/f/a/c/b;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Le/q/f/a/e/g/b;->d:Le/q/f/a/e/a;

    .line 5
    sput-object p3, Le/q/f/a/e/g/b;->e:Le/q/f/a/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/q/f/a/e/g/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/g/a;

    .line 5
    iget-boolean v4, v3, Le/q/f/a/e/g/a;->e:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 8
    iput-boolean v3, p0, Le/q/f/a/e/g/b;->b:Z

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/f/a/e/g/a;

    .line 15
    iput-boolean v1, v2, Le/q/f/a/e/g/a;->e:Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string p3, "\\|"

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    aget-object p1, p3, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 4
    aget-object p2, p3, v5

    .line 5
    aget-object v0, p3, v3

    aget-object p3, p3, v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v5

    invoke-virtual {v0, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p3

    if-ne v0, v3, :cond_1

    aget-object v0, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x7b

    if-ne v0, v6, :cond_1

    .line 7
    aget-object p1, p3, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 8
    aget-object p2, p3, v5

    goto :goto_0

    .line 9
    :cond_1
    array-length v0, p3

    if-ne v0, v3, :cond_2

    .line 10
    aget-object p2, p3, v4

    .line 11
    aget-object v0, p3, v5

    aget-object p3, p3, v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v5

    invoke-virtual {v0, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    new-array p3, v2, [Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v4

    aput-object p2, p3, v5

    aput-object v1, p3, v3

    return-object p3
.end method

.method public c(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/q/f/a/e/g/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/f/a/e/g/a;

    .line 2
    iget-object v2, p0, Le/q/f/a/e/g/b;->d:Le/q/f/a/e/a;

    .line 3
    iget-object v2, v2, Le/q/f/a/e/a;->b:Le/q/f/a/e/c/a;

    .line 4
    iget-object v2, v2, Le/q/f/a/e/c/a;->f:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    iget v6, v1, Le/q/f/a/e/g/a;->a:I

    if-ge v6, v3, :cond_1

    if-le p1, v3, :cond_2

    move v4, v5

    :cond_2
    if-nez v4, :cond_0

    .line 7
    iget-object v2, v1, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    iget-boolean v3, v2, Le/q/f/a/c/e;->a:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v2, v2, Le/q/f/a/c/b;->f:Ljava/lang/String;

    const-string v3, "vendor"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {p2, v5}, Le/q/b/d;->f(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v5, v2

    :cond_3
    if-eqz v5, :cond_0

    .line 11
    iget-object v2, v1, Le/q/f/a/e/g/a;->c:Le/q/c/b/a;

    iget-object v3, v1, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    iget-object v3, v3, Le/q/f/a/c/b;->f:Ljava/lang/String;

    check-cast v2, Le/q/f/a/f/n;

    invoke-virtual {v2, v3}, Le/q/f/a/f/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Le/q/f/a/e/g/a;->d:Le/q/c/b/a;

    iget-object v3, v1, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    iget-object v3, v3, Le/q/f/a/c/b;->f:Ljava/lang/String;

    check-cast v2, Le/q/f/a/f/n;

    invoke-virtual {v2, v3}, Le/q/f/a/f/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    iget-object v2, v1, Le/q/f/a/e/g/a;->d:Le/q/c/b/a;

    iget-object v3, v1, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    iget-object v3, v3, Le/q/f/a/c/b;->f:Ljava/lang/String;

    check-cast v2, Le/q/f/a/f/n;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 15
    iget-object v2, v2, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    iget-object v2, v1, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    iget-boolean v2, v2, Le/q/f/a/c/e;->b:Z

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v1}, Le/q/f/a/e/g/a;->a()V

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0}, Le/q/f/a/e/g/b;->a()V

    return-void
.end method

.method public d(Le/q/f/a/f/c;Le/q/f/a/e/d/c;Z)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Le/q/f/a/e/g/b;->e:Le/q/f/a/b;

    .line 2
    iget-object v4, v3, Le/q/f/a/b;->m:Ljava/util/Map;

    .line 3
    iget-object v3, v3, Le/q/f/a/b;->n:Ljava/util/ArrayList;

    .line 4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v7, v2, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "CONTEXTBREAK"

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/q/f/a/e/d/b;

    .line 8
    iget-object v12, v10, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    .line 10
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 11
    :cond_1
    iget-object v11, v10, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 12
    iget-object v10, v10, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    iget-object v2, v2, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 16
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "order_item"

    if-ge v7, v13, :cond_1c

    .line 17
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/q/f/a/e/d/b;

    .line 18
    iget-object v13, v13, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 20
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 21
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v19, v4

    .line 22
    array-length v4, v6

    move-object/from16 v20, v5

    const/4 v5, 0x0

    :goto_3
    const-string v21, "GDO_NONDET"

    move/from16 v22, v9

    const/4 v9, 0x3

    if-ge v5, v4, :cond_6

    move/from16 v23, v4

    aget-object v4, v6, v5

    move-object/from16 v24, v6

    const/4 v6, 0x0

    .line 23
    invoke-virtual {v0, v9, v4, v6}, Le/q/f/a/e/g/b;->b(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 24
    aget-object v4, v4, v6

    const/4 v6, 0x0

    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v6, 0x23

    if-ne v9, v6, :cond_4

    move-object/from16 v4, v21

    .line 26
    :cond_4
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v22

    move/from16 v4, v23

    move-object/from16 v6, v24

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_8

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v28, v2

    move-object/from16 v23, v3

    move/from16 v30, v7

    move-object/from16 v27, v14

    const/4 v15, 0x0

    goto/16 :goto_11

    .line 27
    :cond_8
    :goto_5
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 28
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 29
    aget-object v8, v4, v5

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v8, v10}, Le/q/f/a/e/g/b;->b(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 30
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v9, 0x1

    .line 31
    aget-object v10, v8, v9

    const/4 v9, 0x2

    .line 32
    aget-object v15, v8, v9

    const-string v9, ","

    if-eqz v15, :cond_9

    new-instance v15, Ljava/util/HashSet;

    const/16 v23, 0x2

    aget-object v8, v8, v23

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v23, v3

    move v8, v7

    move/from16 v26, v8

    move-object/from16 v27, v14

    move-object v3, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    .line 33
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_15

    .line 34
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/q/f/a/e/d/b;

    move-object/from16 v28, v2

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x23

    if-ne v2, v1, :cond_a

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v2, v15

    move-object/from16 v15, v21

    goto :goto_8

    :cond_a
    move-object/from16 v2, v25

    .line 37
    :goto_8
    iget-object v1, v14, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 38
    invoke-virtual {v14}, Le/q/f/a/e/d/b;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iget-object v1, v14, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-static {v1}, Le/q/f/a/d/a;->i1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v15

    const-string v15, "item"

    .line 40
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v29, v2

    move-object/from16 v15, v27

    goto :goto_9

    :cond_b
    move-object v15, v2

    move-object/from16 v29, v15

    .line 41
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v30, v7

    const/4 v7, 0x3

    if-lt v2, v7, :cond_d

    .line 42
    invoke-virtual {v6, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_c
    move-object/from16 v29, v2

    move/from16 v30, v7

    move-object/from16 v25, v15

    :cond_d
    :goto_a
    if-eqz v3, :cond_e

    .line 43
    iget-object v1, v14, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->i1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 44
    array-length v1, v4

    if-ne v10, v1, :cond_f

    move/from16 v26, v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v7, 0x3

    const/4 v15, 0x0

    goto :goto_d

    .line 45
    :cond_f
    aget-object v1, v4, v10

    const/4 v2, 0x0

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1, v2}, Le/q/f/a/e/g/b;->b(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    .line 46
    aget-object v3, v1, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x1

    .line 47
    aget-object v14, v1, v3

    const/4 v3, 0x2

    .line 48
    aget-object v18, v1, v3

    if-eqz v18, :cond_10

    new-instance v2, Ljava/util/HashSet;

    aget-object v1, v1, v3

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    move-object v3, v2

    move/from16 v26, v8

    move-object/from16 v25, v14

    goto :goto_c

    :cond_11
    move-object/from16 v29, v2

    move/from16 v30, v7

    move-object/from16 v25, v15

    const/4 v7, 0x3

    const/4 v15, 0x0

    sub-int v1, v8, v26

    if-ge v1, v5, :cond_14

    .line 49
    iget-object v1, v14, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez p3, :cond_12

    goto :goto_e

    :cond_12
    :goto_c
    move/from16 v1, v24

    const/4 v2, -0x1

    :goto_d
    const/4 v14, 0x1

    if-eq v1, v2, :cond_16

    if-ne v1, v14, :cond_13

    goto :goto_f

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v1

    move-object/from16 v15, v25

    move-object/from16 v2, v28

    move-object/from16 v25, v29

    move/from16 v7, v30

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_14
    :goto_e
    const/4 v2, -0x1

    const/4 v14, 0x1

    move v1, v2

    goto :goto_f

    :cond_15
    move-object/from16 v28, v2

    move/from16 v30, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v1, v24

    :cond_16
    :goto_f
    if-ne v1, v14, :cond_17

    .line 50
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    :goto_10
    move-object v10, v6

    if-eqz v6, :cond_18

    const/4 v9, 0x1

    goto :goto_12

    :cond_18
    :goto_11
    move-object/from16 v1, p1

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v9, v22

    move-object/from16 v3, v23

    move-object/from16 v14, v27

    move-object/from16 v2, v28

    move/from16 v7, v30

    goto/16 :goto_2

    :cond_19
    move-object/from16 v28, v2

    move-object/from16 v23, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v30, v7

    move/from16 v22, v9

    move-object/from16 v27, v14

    const/4 v15, 0x0

    move/from16 v9, v22

    .line 51
    :goto_12
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v12, v12, 0x1

    :cond_1a
    if-eqz v9, :cond_1b

    goto :goto_13

    :cond_1b
    add-int/lit8 v7, v30, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v2, v28

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v28, v2

    move/from16 v22, v9

    move-object/from16 v27, v14

    :goto_13
    if-eqz v9, :cond_1d

    .line 52
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v3, p1

    .line 53
    iget-object v4, v3, Le/q/f/a/f/c;->c:Le/q/c/b/a;

    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Le/q/f/a/d/a;->i1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v4, Le/q/f/a/f/n;

    invoke-virtual {v4, v5, v2}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    :cond_1d
    move-object/from16 v3, p1

    .line 55
    iget-object v1, v3, Le/q/f/a/f/c;->c:Le/q/c/b/a;

    .line 56
    check-cast v1, Le/q/f/a/f/n;

    .line 57
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 58
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_1f

    .line 59
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move-object/from16 v5, v28

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/f/a/e/d/b;

    .line 60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    :goto_15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-le v6, v7, :cond_1f

    .line 61
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/q/f/a/e/d/b;

    .line 62
    sget-object v8, Le/q/f/a/g/d;->c:Ljava/util/Set;

    iget-object v9, v7, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v1}, Le/q/f/a/e/d/b;->f()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 63
    iget-object v3, v3, Le/q/f/a/f/c;->c:Le/q/c/b/a;

    .line 64
    iget-object v1, v1, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-static {v1}, Le/q/f/a/d/a;->i1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v3, Le/q/f/a/f/n;

    invoke-virtual {v3, v2, v1}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_16

    :cond_1e
    add-int/lit8 v6, v6, -0x1

    move-object v1, v7

    goto :goto_15

    :cond_1f
    :goto_16
    return-void
.end method

.method public final e(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "[-/@#$%^&_+=()]+"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
