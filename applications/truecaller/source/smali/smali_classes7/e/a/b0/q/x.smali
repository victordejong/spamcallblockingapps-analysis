.class public final Le/a/b0/q/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/q/w;


# instance fields
.field public final a:Le/a/f4/b/b;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/m/f/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/f4/b/b;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f4/b/b;",
            "Lo3/a<",
            "Le/m/f/a/j;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "domainResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/q/x;->a:Le/a/f4/b/b;

    iput-object p2, p0, Le/a/b0/q/x;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Le/m/f/a/o;",
            ">;)",
            "Ljava/util/Map<",
            "Le/a/b0/b/e;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    sget-object v1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    const-string v2, "numbers"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/b0/q/x;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/f/a/j;

    .line 2
    iget-object v3, p0, Le/a/b0/q/x;->a:Le/a/f4/b/b;

    invoke-interface {v3}, Le/a/f4/b/b;->a()Lcom/truecaller/common/network/KnownDomain;

    move-result-object v3

    .line 3
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 4
    new-instance v4, Le/a/b0/q/x$a;

    invoke-direct {v4, v2}, Le/a/b0/q/x$a;-><init>(Le/m/f/a/j;)V

    invoke-static {p1, v4}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast p1, Ls1/e0/c0;

    .line 8
    iget-object v6, p1, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 9
    invoke-interface {v6}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 10
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11
    iget-object v7, p1, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 13
    move-object v8, v7

    check-cast v8, Ls1/k;

    .line 14
    iget-object v9, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v9, Le/m/f/a/o;

    .line 16
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 17
    check-cast v8, Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v9, v8}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 19
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    sget-object v6, Le/a/b0/q/x$b;->b:Le/a/b0/q/x$b;

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "phoneNumberUtil.format(number, E164)"

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/k;

    .line 24
    iget-object v9, v7, Ls1/k;->a:Ljava/lang/Object;

    .line 25
    check-cast v9, Le/m/f/a/o;

    .line 26
    iget-object v7, v7, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v7, Ljava/lang/String;

    const-string v10, "regionCode"

    .line 28
    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/n/g0;->b(Ljava/lang/String;)Lcom/truecaller/common/network/KnownDomain;

    move-result-object v7

    if-eq v7, v3, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_5

    .line 29
    new-instance v10, Le/a/b0/b/e$b;

    invoke-direct {v10, v7}, Le/a/b0/b/e$b;-><init>(Lcom/truecaller/common/network/KnownDomain;)V

    goto :goto_5

    :cond_5
    move-object v10, v1

    .line 30
    :goto_5
    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 31
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {p1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 35
    invoke-virtual {v2, v9, v0}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    .line 37
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 38
    check-cast v4, Le/m/f/a/o;

    .line 39
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 40
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_8
    check-cast v5, Ljava/util/List;

    .line 44
    invoke-virtual {v2, v4, v0}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    return-object p1
.end method

.method public b(Le/m/f/a/o;)Le/a/b0/b/e;
    .locals 3

    sget-object v0, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    const-string v1, "number"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/b0/q/x;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/f/a/j;

    .line 2
    invoke-virtual {v1, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, p1, v2}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "regionCodeForNumber"

    .line 4
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/n/g0;->b(Ljava/lang/String;)Lcom/truecaller/common/network/KnownDomain;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/b0/q/x;->a:Le/a/f4/b/b;

    invoke-interface {v1}, Le/a/f4/b/b;->a()Lcom/truecaller/common/network/KnownDomain;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq p1, v1, :cond_1

    .line 6
    new-instance v0, Le/a/b0/b/e$b;

    invoke-direct {v0, p1}, Le/a/b0/b/e$b;-><init>(Lcom/truecaller/common/network/KnownDomain;)V

    :cond_1
    return-object v0
.end method
