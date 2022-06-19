.class public final Le/a/i/c0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c0/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/r2/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "campaign"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v1, Le/a/i/c0/i;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->LEADGEN:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v2, v3}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 4
    new-instance v3, Le/a/b0/b/g/b;

    invoke-direct {v3}, Le/a/b0/b/g/b;-><init>()V

    .line 5
    sget-object v4, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5, v0}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 6
    invoke-static {v3}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/c0/i;

    .line 10
    invoke-interface {v1, p1}, Le/a/i/c0/i;->get(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v1, "it"

    .line 12
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 14
    check-cast p1, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 15
    :catch_0
    :cond_0
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(\n          \u2026l\n            }\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Le/a/r2/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/r2/x<",
            "Le/a/i/c0/m;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "campaign"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v0, Le/a/i/c0/i;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->LEADGEN:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 4
    new-instance v2, Le/a/b0/b/g/b;

    invoke-direct {v2}, Le/a/b0/b/g/b;-><init>()V

    .line 5
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 6
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c0/i;

    .line 10
    invoke-interface {v0, p1, p2}, Le/a/i/c0/i;->b(Ljava/lang/String;Ljava/util/Map;)Lx3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 13
    iget p1, p1, Lu3/k0;->e:I

    .line 14
    sget-object p2, Le/a/i/c0/m;->b:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/i/c0/m;

    .line 16
    iget v1, v1, Le/a/i/c0/m;->a:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    move-object v5, v0

    .line 17
    :cond_2
    check-cast v5, Le/a/i/c0/m;

    if-eqz v5, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    sget-object v5, Le/a/i/c0/m$e;->c:Le/a/i/c0/m$e;

    .line 19
    :goto_1
    invoke-static {v5}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(\n          \u2026te.UnknownError\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 20
    :catch_0
    sget-object p1, Le/a/i/c0/m$e;->c:Le/a/i/c0/m$e;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(LeadgenSubmitState.UnknownError)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
