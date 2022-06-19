.class public final Le/a/f4/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Le/a/f4/b/g/b;

.field public final b:Le/a/q2/a;

.field public final c:Le/a/f4/b/b;

.field public final d:Le/a/f4/b/d;

.field public final e:Z


# direct methods
.method public constructor <init>(Le/a/f4/b/g/b;Le/a/q2/a;Le/a/f4/b/b;Le/a/f4/b/d;Z)V
    .locals 1

    const-string v0, "edgeLocationsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    iput-object p2, p0, Le/a/f4/d/a;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/f4/d/a;->c:Le/a/f4/b/b;

    iput-object p4, p0, Le/a/f4/d/a;->d:Le/a/f4/b/d;

    iput-boolean p5, p0, Le/a/f4/d/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 9

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    invoke-virtual {v0}, Lu3/g0;->c()Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lu3/g0;->b:Lu3/a0;

    .line 4
    invoke-static {v1}, Le/a/c/p/a;->M0(Lu3/a0;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 5
    iget-boolean v2, p0, Le/a/f4/d/a;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 6
    iget-object v2, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v4, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    invoke-interface {v4}, Le/a/f4/b/g/b;->a()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    .line 8
    :try_start_1
    iget-object v4, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    invoke-interface {v4}, Le/a/f4/b/g/b;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Success"

    goto :goto_1

    :cond_1
    const-string v4, "OtherFailure"

    .line 9
    :goto_1
    invoke-virtual {p0, v4, v5}, Le/a/f4/d/a;->b(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 10
    :try_start_2
    invoke-static {v4}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    if-ne v5, v6, :cond_2

    const-string v4, "Exception"

    .line 11
    invoke-virtual {p0, v4, v5}, Le/a/f4/d/a;->b(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x3e8

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2

    throw p1

    .line 14
    :cond_4
    :goto_4
    iget-object v2, p0, Le/a/f4/d/a;->d:Le/a/f4/b/d;

    invoke-static {v0}, Le/a/n/g0;->T(Lu3/g0;)Le/a/b0/b/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Le/a/f4/b/a;->b(Le/a/b0/b/e;)Le/a/b0/b/e$b;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 15
    iget-object v4, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    .line 16
    iget-object v2, v2, Le/a/b0/b/e$b;->a:Lcom/truecaller/common/network/KnownDomain;

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Le/a/f4/b/g/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    iget-object v2, p0, Le/a/f4/d/a;->a:Le/a/f4/b/g/b;

    iget-object v4, p0, Le/a/f4/d/a;->c:Le/a/f4/b/b;

    invoke-static {v1, v2, v4}, Le/a/c/p/a;->D0(Ljava/lang/String;Le/a/f4/b/g/b;Le/a/f4/b/b;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_9

    const-string v1, "$this$splitPort"

    .line 19
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v4, v1, [C

    const/16 v5, 0x3a

    aput-char v5, v4, v3

    const/4 v5, 0x2

    .line 20
    invoke-static {v2, v4, v3, v5, v5}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {v1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 22
    :goto_6
    check-cast v3, Ljava/lang/String;

    .line 23
    iget-object v2, v0, Lu3/g0;->b:Lu3/a0;

    .line 24
    invoke-virtual {v2}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lu3/a0$a;->e(Ljava/lang/String;)Lu3/a0$a;

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lu3/a0$a;->h(I)Lu3/a0$a;

    :cond_7
    const-string v1, "request"

    .line 26
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    iget-object v5, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 29
    iget-object v7, v0, Lu3/g0;->e:Lu3/j0;

    .line 30
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_7

    .line 33
    :cond_8
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 34
    invoke-static {v1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 35
    :goto_7
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 36
    invoke-virtual {v0}, Lu3/z;->c()Lu3/z$a;

    move-result-object v0

    .line 37
    invoke-virtual {v2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v4

    const-string v2, "url"

    .line 38
    invoke-static {v4, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v6

    .line 40
    invoke-static {v1}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 41
    new-instance v0, Lu3/g0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 42
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 43
    :cond_9
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 44
    :cond_a
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Le/a/q2/g$b;

    const-string v1, "FetchEdgeLocations"

    invoke-direct {v0, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v1, "Context"

    const-string v2, "Interceptor"

    .line 2
    invoke-virtual {v0, v1, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v1, "FinalResult"

    .line 3
    invoke-virtual {v0, v1, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string p1, "Attempts"

    .line 4
    invoke-virtual {v0, p1, p2}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 5
    invoke-virtual {v0}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    .line 6
    iget-object p2, p0, Le/a/f4/d/a;->b:Le/a/q2/a;

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
