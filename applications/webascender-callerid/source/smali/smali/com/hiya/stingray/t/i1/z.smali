.class public Lcom/hiya/stingray/t/i1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/i1/j0;)V
    .locals 1

    const-string v0, "lineTypeMapper"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, ""

    .line 2
    :goto_2
    invoke-static {p2}, Lcom/hiya/stingray/util/p;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string p2, "parsed"

    .line 3
    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 5
    :cond_5
    invoke-static {}, Lcom/hiya/stingray/t/n;->a()Lcom/hiya/stingray/t/n$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/t/n$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n$a;->a()Lcom/hiya/stingray/t/n;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final b(Lcom/hiya/stingray/t/o0;Ljava/lang/String;)Lcom/hiya/stingray/t/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/i1/z;->a:Lh/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "voiceMailNumber"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final c(Lcom/hiya/stingray/t/o0;Ljava/util/Map;)Lcom/hiya/stingray/t/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/o0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/hiya/stingray/t/o0;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/t/i1/z;->a:Lh/a;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "voiceMailNumber"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 5
    sget-object p1, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    :cond_4
    return-object p1
.end method

.method private final i(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 3
    sget-object v1, Lcom/hiya/stingray/t/o0;->SCREENER:Lcom/hiya/stingray/t/o0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 4
    sget-object v1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/b;->O0()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 7
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 8
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 9
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 10
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    const-string p1, "IdentityData.builder()\n \u2026TypeItem.empty().build())"

    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final j(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Lcom/hiya/stingray/t/n0$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/e;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/hiya/stingray/q/c/e;

    .line 5
    invoke-virtual {v6}, Lcom/hiya/stingray/q/c/e;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Lcom/hiya/stingray/q/c/e;

    .line 9
    invoke-virtual {v6}, Lcom/hiya/stingray/q/c/e;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v4}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/hiya/stingray/q/c/e;

    .line 13
    invoke-static {v8, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v1

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 16
    check-cast v5, Lcom/hiya/stingray/q/c/e;

    .line 17
    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_6
    invoke-static {v0}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/hiya/stingray/q/c/e;

    .line 22
    invoke-virtual {v7}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v1

    if-eqz v7, :cond_7

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/e;

    .line 24
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_6

    .line 25
    :cond_9
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const-string v5, ""

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v3, "phoneMap.keys"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/s/k;->K(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/hiya/stingray/t/i1/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    .line 28
    :cond_a
    invoke-static {v3}, Lcom/google/common/collect/a0;->c(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 29
    :goto_7
    invoke-virtual {p1, v1}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 30
    sget-object v1, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/hiya/stingray/t/i1/z;->c(Lcom/hiya/stingray/t/o0;Ljava/util/Map;)Lcom/hiya/stingray/t/o0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 31
    sget-object v1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 32
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 33
    invoke-virtual {p1, v4}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 34
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    move-object v1, v5

    :goto_8
    invoke-virtual {p1, v1}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 35
    invoke-static {v0}, Lcom/google/common/collect/z;->t(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 36
    invoke-virtual {p1, v5}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 37
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    const-string v0, "IdentityData.builder()\n \u2026TypeItem.empty().build())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 38
    :cond_c
    invoke-static {}, Lcom/hiya/stingray/t/n0;->b()Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    const-string v0, "IdentityData.empty()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    return-object p1
.end method

.method private final k(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/n0$a;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->V0()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/hiya/stingray/t/i1/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    sget-object v1, Lcom/hiya/stingray/t/o0;->DB_API:Lcom/hiya/stingray/t/o0;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hiya/stingray/t/i1/z;->b(Lcom/hiya/stingray/t/o0;Ljava/lang/String;)Lcom/hiya/stingray/t/o0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 7
    sget-object v1, Lcom/hiya/stingray/t/m0;->Companion:Lcom/hiya/stingray/t/m0$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->R0()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/m0$a;->a(Ljava/lang/String;)Lcom/hiya/stingray/t/m0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->Q0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 9
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->X0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 11
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 12
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->P0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 13
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->T0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/r0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    .line 14
    sget-object v2, Lcom/hiya/stingray/t/q0;->Companion:Lcom/hiya/stingray/t/q0$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->S0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/hiya/stingray/t/q0$a;->a(Ljava/lang/String;)Lcom/hiya/stingray/t/q0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/r0$a;->b(Lcom/hiya/stingray/t/q0;)Lcom/hiya/stingray/t/r0$a;

    .line 15
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->U0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v3, p1

    :cond_5
    invoke-virtual {v1, v3}, Lcom/hiya/stingray/t/r0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    const-string p1, "IdentityData.builder()\n \u2026oltip.orEmpty()).build())"

    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d(Lcom/hiya/stingray/q/c/d;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0;
    .locals 9

    const-string v0, "compositeLog"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p3}, Lcom/hiya/stingray/t/i1/z;->f(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/t/i1/z;->g(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/n0;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->d()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/s/h0;->b()Ljava/util/Set;

    move-result-object p3

    .line 4
    :goto_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 6
    :goto_2
    check-cast v1, Ljava/lang/String;

    const-string p3, ""

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, p3

    .line 7
    :goto_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    .line 8
    sget-object v2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    .line 9
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/hiya/stingray/t/o0;->UNAVAILABLE:Lcom/hiya/stingray/t/o0;

    .line 10
    :goto_5
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->d()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/hiya/stingray/util/t;->c(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->d()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v4, :cond_c

    .line 11
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->d()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "compositeLog.names!!"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 14
    invoke-static {v8, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    if-eqz v8, :cond_9

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 15
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_c
    if-eqz p2, :cond_d

    .line 16
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {}, Lkotlin/s/h0;->b()Ljava/util/Set;

    move-result-object v6

    .line 17
    :cond_e
    :goto_7
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v5

    if-eqz p2, :cond_f

    .line 18
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->c()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p3, v7}, Lcom/hiya/stingray/t/i1/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 19
    :goto_8
    invoke-virtual {v5, v7}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 20
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/hiya/stingray/t/i1/z;->b(Lcom/hiya/stingray/t/o0;Ljava/lang/String;)Lcom/hiya/stingray/t/o0;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    if-eqz p2, :cond_10

    .line 21
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    sget-object v2, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    :goto_9
    invoke-virtual {v5, v2}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v3, 0x1

    :cond_11
    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    if-eqz p2, :cond_13

    .line 23
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_13
    move-object v1, v0

    :goto_a
    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    move-object v1, p3

    .line 24
    :goto_b
    invoke-virtual {v5, v1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 25
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/t;->d(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 26
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    .line 27
    :cond_15
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v1

    .line 28
    :goto_c
    invoke-virtual {v5, v1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 29
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 30
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_16
    if-eqz p2, :cond_17

    .line 31
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_17
    move-object p1, v0

    :goto_d
    if-eqz p1, :cond_18

    goto :goto_e

    :cond_18
    move-object p1, p3

    .line 32
    :goto_e
    invoke-virtual {v5, p1}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 33
    invoke-static {v6}, Lcom/google/common/collect/z;->t(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object p1

    .line 34
    invoke-virtual {v5, p1}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    if-eqz p2, :cond_19

    .line 35
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->d()Ljava/lang/String;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_1a

    move-object p3, v0

    :cond_1a
    invoke-virtual {v5, p3}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    if-eqz p2, :cond_1b

    .line 36
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    if-eqz p1, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    :goto_f
    invoke-virtual {v5, p1}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    .line 37
    invoke-virtual {v5}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string p2, "IdentityData.builder()\n \u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/n0;
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hiya/stingray/q/c/e;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "Lists.newArrayList(contact)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/i1/z;->h(Ljava/util/List;)Lcom/hiya/stingray/t/n0;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0;
    .locals 1

    const-string v0, "realmScreener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/z;->i(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string v0, "mapFromCallScreener(realmScreener).build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/n0;
    .locals 1

    const-string v0, "realmCallerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/z;->k(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string v0, "mapFromRealmCallerId(realmCallerId).build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(Ljava/util/List;)Lcom/hiya/stingray/t/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Lcom/hiya/stingray/t/n0;"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/z;->j(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string v0, "mapFromContactDTOs(contacts).build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()Lcom/hiya/stingray/t/n0$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n0;->b()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    const-string v1, "IdentityData.empty()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
