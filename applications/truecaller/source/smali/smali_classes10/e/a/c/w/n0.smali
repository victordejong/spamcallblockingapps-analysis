.class public final Le/a/c/w/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/a0/c0;


# direct methods
.method public constructor <init>(Le/a/c/a0/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "travelDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/n0;->a:Le/a/c/a0/c0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$f;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    move-object v6, v1

    check-cast v6, Lcom/truecaller/insights/models/InsightsDomain$f;

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_2

    goto/16 :goto_5

    .line 14
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 17
    move-object v9, v8

    check-cast v9, Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v3

    invoke-static {v10}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 19
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 20
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    move-object v1, v7

    goto :goto_5

    .line 22
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 24
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    move v8, v5

    goto :goto_4

    :cond_7
    move v8, v4

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_8
    :goto_5
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26
    :cond_9
    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$f;

    const-string v3, "$this$isCancelled"

    .line 29
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v3

    const-string v6, "alert"

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "cancel"

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v5

    goto :goto_7

    :cond_b
    move v3, v4

    :goto_7
    if-eqz v3, :cond_c

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v2

    goto :goto_8

    .line 32
    :cond_c
    iget-object v2, v2, Lcom/truecaller/insights/models/InsightsDomain$f;->a:Lw3/b/a/b;

    .line 33
    invoke-virtual {v2, v5}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v2

    :goto_8
    if-eqz p2, :cond_d

    .line 34
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 35
    invoke-virtual {v3, v2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v2

    if-lez v2, :cond_e

    goto :goto_9

    .line 36
    :cond_d
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 37
    invoke-virtual {v3, v2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v2

    if-gtz v2, :cond_e

    :goto_9
    move v2, v5

    goto :goto_a

    :cond_e
    move v2, v4

    :goto_a
    if-eqz v2, :cond_a

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    return-object v0
.end method
