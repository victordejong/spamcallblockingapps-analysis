.class public Lcom/hiya/stingray/t/i1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PERSON"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BUSINESS"

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "UNCATEGORIZED"

    goto :goto_0

    :cond_2
    const-string p1, "UNKNOWN"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/a;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;"
        }
    .end annotation

    const-string v0, "contactDTOs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberToLogsMap"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/hiya/stingray/q/c/e;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v3

    .line 9
    :goto_2
    invoke-static {v5, v3}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Lcom/hiya/stingray/q/c/b;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const-string v3, "DataUtil.convertPhoneType(it.phones)"

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CONTACT"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/hiya/stingray/q/c/b;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v2, v1

    check-cast v2, Lcom/hiya/stingray/q/c/b;

    .line 15
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/b;->c()Ljava/util/Map;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object p2
.end method

.method public final c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/a;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;"
        }
    .end annotation

    const-string v0, "realmCallerIdMap"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberToLogsMap"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/c;

    .line 3
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lcom/hiya/stingray/q/c/b;

    sget-object v4, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-static {v2, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v4

    invoke-static {v4}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v5

    .line 5
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/c;->X0()Ljava/lang/String;

    move-result-object v7

    const-string v2, "realmId.photoUrl"

    invoke-static {v7, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/c;->Q0()Ljava/lang/String;

    move-result-object v8

    const-string v2, "realmId.displayName"

    invoke-static {v8, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/c;->R0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realmId.kind"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/hiya/stingray/t/i1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    .line 9
    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/q/c/b;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v2, v1

    check-cast v2, Lcom/hiya/stingray/q/c/b;

    .line 15
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/b;->c()Ljava/util/Map;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final d(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/g0;
    .locals 4

    const-string v0, "contactDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/g0;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v3, "DataUtil.convertPhoneType(contactDTO.phones)"

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CONTACT"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/hiya/stingray/t/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/g0;
    .locals 5

    const-string v0, "realmDto"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/g0;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->Q0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realmDto.displayName"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->X0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "realmDto.photoUrl"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-static {v3, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    invoke-static {v3}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->R0()Ljava/lang/String;

    move-result-object p1

    const-string v4, "realmDto.kind"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/hiya/stingray/t/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/hiya/stingray/q/c/b;

    .line 4
    new-instance v2, Lcom/hiya/stingray/t/g0;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/b;->c()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/hiya/stingray/t/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
