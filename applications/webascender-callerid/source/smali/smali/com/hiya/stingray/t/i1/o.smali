.class public Lcom/hiya/stingray/t/i1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/r0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/i1/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/o;->a:Lcom/hiya/stingray/t/i1/r0;

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Lcom/hiya/stingray/t/i1/o$a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/t/i1/o$a;-><init>(Lcom/hiya/stingray/t/i1/o;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public b(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {}, Lcom/hiya/stingray/t/d0;->c()Lcom/hiya/stingray/t/d0$a;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/d0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;

    .line 4
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/d0$a;->d(I)Lcom/hiya/stingray/t/d0$a;

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/t/d0$a;->j(J)Lcom/hiya/stingray/t/d0$a;

    sget-object v2, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    .line 6
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/d0$a;->c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;

    sget-object v2, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 7
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/d0$a;->b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;

    .line 8
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/d0$a;->i(Z)Lcom/hiya/stingray/t/d0$a;

    .line 9
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/d0$a;->h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;

    .line 10
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/d0$a;->f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;

    .line 11
    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0$a;->a()Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/hiya/stingray/q/c/i/c;Ljava/lang/String;Lcom/hiya/stingray/q/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/hiya/stingray/t/j0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;)",
            "Lcom/hiya/stingray/t/j0;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/j0$a;->b()Lcom/hiya/stingray/t/j0$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/t/i1/o;->a:Lcom/hiya/stingray/t/i1/r0;

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/i1/r0;->a(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/y0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/o;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 4
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v5, p3

    move-object p3, p1

    move-object p1, v3

    move-object v3, v5

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->X0()Ljava/lang/String;

    move-result-object p1

    move-object p3, p1

    move-object p1, v3

    move-object p6, p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    move-object p3, p1

    move-object p6, p3

    .line 7
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-static {p4}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_4
    move-object p4, v3

    :goto_2
    if-nez p1, :cond_5

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    sget-object v3, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 14
    sget-object v3, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v0, p4}, Lcom/hiya/stingray/t/j0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;

    .line 16
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/j0$a;->g(Ljava/util/Map;)Lcom/hiya/stingray/t/j0$a;

    .line 17
    invoke-virtual {v0, p6}, Lcom/hiya/stingray/t/j0$a;->c(Ljava/util/List;)Lcom/hiya/stingray/t/j0$a;

    .line 18
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/t/j0$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;

    .line 19
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/j0$a;->i(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/j0$a;

    .line 20
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/j0$a;->e(Z)Lcom/hiya/stingray/t/j0$a;

    .line 21
    invoke-virtual {v0, p5}, Lcom/hiya/stingray/t/j0$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;

    .line 22
    invoke-virtual {v0}, Lcom/hiya/stingray/t/j0$a;->a()Lcom/hiya/stingray/t/j0;

    move-result-object p1

    return-object p1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Phone cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
