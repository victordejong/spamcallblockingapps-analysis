.class public abstract Le/a/f4/b/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/b/h/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NonBlocking:",
        "Lp3/a/q1/c<",
        "TNonBlocking;>;Blocking:",
        "Lp3/a/q1/c<",
        "TBlocking;>;>",
        "Ljava/lang/Object;",
        "Le/a/f4/b/h/g<",
        "TNonBlocking;TBlocking;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/b0/b/e;",
            "Le/a/f4/b/h/i<",
            "TNonBlocking;TBlocking;>;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lcom/truecaller/common/network/util/KnownEndpoints;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/b0/e/h;

.field public final f:Le/a/p5/g;

.field public final g:Ljava/lang/Integer;

.field public final h:Le/a/f4/b/h/c;

.field public final i:Le/a/f4/b/g/b;

.field public final j:Le/a/f4/b/b;

.field public final k:Ljava/lang/String;

.field public final l:Le/a/f4/b/f/b;

.field public final m:Le/a/f4/b/a;

.field public final n:Le/a/x3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/common/network/util/KnownEndpoints;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/Integer;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryAuthTokenManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelNetworkChangesHandler"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeLocationsManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainFrontingResolver"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/b/h/h;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/f4/b/h/h;->c:Lcom/truecaller/common/network/util/KnownEndpoints;

    iput-object p3, p0, Le/a/f4/b/h/h;->d:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/f4/b/h/h;->e:Le/a/b0/e/h;

    iput-object p5, p0, Le/a/f4/b/h/h;->f:Le/a/p5/g;

    iput-object p6, p0, Le/a/f4/b/h/h;->g:Ljava/lang/Integer;

    iput-object p7, p0, Le/a/f4/b/h/h;->h:Le/a/f4/b/h/c;

    iput-object p8, p0, Le/a/f4/b/h/h;->i:Le/a/f4/b/g/b;

    iput-object p9, p0, Le/a/f4/b/h/h;->j:Le/a/f4/b/b;

    iput-object p10, p0, Le/a/f4/b/h/h;->k:Ljava/lang/String;

    iput-object p11, p0, Le/a/f4/b/h/h;->l:Le/a/f4/b/f/b;

    iput-object p12, p0, Le/a/f4/b/h/h;->m:Le/a/f4/b/a;

    iput-object p13, p0, Le/a/f4/b/h/h;->n:Le/a/x3/c;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    return-void
.end method

.method public static k(Le/a/f4/b/h/h;Lp3/a/q1/c;Ljava/lang/Integer;ILjava/lang/Object;)Lp3/a/q1/c;
    .locals 4

    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-eqz p3, :cond_0

    .line 1
    iget-object p0, p0, Le/a/f4/b/h/h;->g:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p3, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    iget-object v0, p1, Lp3/a/q1/c;->a:Lp3/a/d;

    iget-object v1, p1, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lp3/a/r;->d:Lp3/a/r$b;

    const-string v3, "units"

    .line 6
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lp3/a/r;

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    invoke-direct {v3, v2, p3, p4, p2}, Lp3/a/r;-><init>(Lp3/a/r$c;JZ)V

    .line 8
    invoke-virtual {v1, v3}, Lp3/a/c;->c(Lp3/a/r;)Lp3/a/c;

    move-result-object p0

    .line 9
    invoke-virtual {p1, v0, p0}, Lp3/a/q1/c;->a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;

    move-result-object p1

    const-string p0, "this.withDeadlineAfter(timeout.toLong(), SECONDS)"

    .line 10
    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Le/a/b0/b/e;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "targetDomain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/b/h/h;->i(Le/a/b0/b/e;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/b/h/i;

    if-eqz v0, :cond_4

    .line 3
    iget-object v2, p0, Le/a/f4/b/h/h;->m:Le/a/f4/b/a;

    invoke-virtual {v2, p1}, Le/a/f4/b/a;->a(Le/a/b0/b/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/a/f4/b/h/h;->e:Le/a/b0/e/h;

    invoke-interface {v2}, Le/a/b0/e/h;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Le/a/f4/b/h/h;->d:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 5
    iget-object v1, v0, Le/a/f4/b/h/i;->c:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    monitor-exit p0

    return v3

    .line 7
    :cond_2
    :try_start_2
    new-instance v1, Le/a/f4/b/h/a;

    invoke-direct {v1, v2}, Le/a/f4/b/h/a;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    .line 9
    iget-object v5, v0, Le/a/f4/b/h/i;->a:Lp3/a/q1/c;

    .line 10
    iget-object v6, v5, Lp3/a/q1/c;->a:Lp3/a/d;

    iget-object v7, v5, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 11
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v8, Lp3/a/c;

    invoke-direct {v8, v7}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 13
    iput-object v1, v8, Lp3/a/c;->d:Lp3/a/b;

    .line 14
    invoke-virtual {v5, v6, v8}, Lp3/a/q1/c;->a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;

    move-result-object v5

    .line 15
    invoke-virtual {p0}, Le/a/f4/b/h/h;->d()[Lp3/a/g;

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lp3/a/g;

    invoke-virtual {v5, v6}, Lp3/a/q1/c;->b([Lp3/a/g;)Lp3/a/q1/c;

    move-result-object v5

    const-string v6, "asyncStub.withCallCreden\u2026ors(*buildInterceptors())"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v6, v0, Le/a/f4/b/h/i;->b:Lp3/a/q1/c;

    .line 17
    iget-object v7, v6, Lp3/a/q1/c;->a:Lp3/a/d;

    iget-object v8, v6, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 18
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v9, Lp3/a/c;

    invoke-direct {v9, v8}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 20
    iput-object v1, v9, Lp3/a/c;->d:Lp3/a/b;

    .line 21
    invoke-virtual {v6, v7, v9}, Lp3/a/q1/c;->a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Le/a/f4/b/h/h;->d()[Lp3/a/g;

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lp3/a/g;

    invoke-virtual {v1, v6}, Lp3/a/q1/c;->b([Lp3/a/g;)Lp3/a/q1/c;

    move-result-object v1

    const-string v6, "syncStub.withCallCredent\u2026ors(*buildInterceptors())"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, v0, Le/a/f4/b/h/i;->d:Ljava/lang/String;

    const-string v6, "asyncStub"

    .line 24
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "syncStub"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "host"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Le/a/f4/b/h/i;

    invoke-direct {v6, v5, v1, v2, v0}, Le/a/f4/b/h/i;-><init>(Lp3/a/q1/c;Lp3/a/q1/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    monitor-exit p0

    return v3

    .line 27
    :cond_3
    monitor-exit p0

    return v1

    .line 28
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Le/a/b0/b/e;)Lp3/a/q1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/b/e;",
            ")TNonBlocking;"
        }
    .end annotation

    const-string v0, "targetDomain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/b/h/h;->a(Le/a/b0/b/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/h/i;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/f4/b/h/i;->a:Lp3/a/q1/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v1, v0, v1}, Le/a/f4/b/h/h;->k(Le/a/f4/b/h/h;Lp3/a/q1/c;Ljava/lang/Integer;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public c(Le/a/b0/b/e;)Lp3/a/q1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/b/e;",
            ")TBlocking;"
        }
    .end annotation

    const-string v0, "targetDomain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/b/h/h;->a(Le/a/b0/b/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/h/i;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/f4/b/h/i;->b:Lp3/a/q1/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v1, v0, v1}, Le/a/f4/b/h/h;->k(Le/a/f4/b/h/h;Lp3/a/q1/c;Ljava/lang/Integer;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final d()[Lp3/a/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/f4/b/h/h;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/f4/b/h/h;->f:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Le/a/f4/b/h/f;

    invoke-direct {v1}, Le/a/f4/b/h/f;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lp3/a/g;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lp3/a/g;

    return-object v0
.end method

.method public e(Lp3/a/o1/d;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract f(Lp3/a/d;)Lp3/a/q1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/d;",
            ")TBlocking;"
        }
    .end annotation
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lp3/a/l0;
    .locals 7

    .line 1
    new-instance v0, Lp3/a/o1/d;

    invoke-direct {v0, p1}, Lp3/a/o1/d;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Le/p/a/i;->f:Le/p/a/i;

    const/4 v1, 0x1

    const-string v2, "Cannot change security when using ChannelCredentials"

    .line 3
    invoke-static {v1, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    iget-boolean v1, p1, Le/p/a/i;->a:Z

    const-string v2, "plaintext ConnectionSpec is not accepted"

    .line 5
    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 6
    sget v1, Lp3/a/o1/n;->a:I

    .line 7
    iget-boolean v1, p1, Le/p/a/i;->a:Z

    .line 8
    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Le/p/a/i;->d()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    .line 11
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/p/a/x;

    .line 12
    iget-object v6, v6, Le/p/a/x;->a:Ljava/lang/String;

    .line 13
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Le/p/a/i;->a()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Lp3/a/o1/o/a;

    :goto_1
    if-ge v4, v2, :cond_1

    .line 16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/p/a/g;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lp3/a/o1/o/a;->valueOf(Ljava/lang/String;)Lp3/a/o1/o/a;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lp3/a/o1/o/b$b;

    .line 18
    iget-boolean v2, p1, Le/p/a/i;->a:Z

    .line 19
    invoke-direct {v1, v2}, Lp3/a/o1/o/b$b;-><init>(Z)V

    .line 20
    iget-boolean p1, p1, Le/p/a/i;->b:Z

    .line 21
    invoke-virtual {v1, p1}, Lp3/a/o1/o/b$b;->c(Z)Lp3/a/o1/o/b$b;

    .line 22
    invoke-virtual {v1, v3}, Lp3/a/o1/o/b$b;->e([Ljava/lang/String;)Lp3/a/o1/o/b$b;

    .line 23
    invoke-virtual {v1, v5}, Lp3/a/o1/o/b$b;->b([Lp3/a/o1/o/a;)Lp3/a/o1/o/b$b;

    .line 24
    invoke-virtual {v1}, Lp3/a/o1/o/b$b;->a()Lp3/a/o1/o/b;

    move-result-object p1

    .line 25
    iput-object p1, v0, Lp3/a/o1/d;->d:Lp3/a/o1/o/b;

    const-wide/16 v1, 0x14

    .line 26
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lp3/a/n1/b;->b(JLjava/util/concurrent/TimeUnit;)Lp3/a/m0;

    .line 27
    iget-object p1, p0, Le/a/f4/b/h/h;->k:Ljava/lang/String;

    .line 28
    iget-object v1, v0, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    .line 29
    iput-object p1, v1, Lp3/a/n1/q1;->h:Ljava/lang/String;

    const-string p1, "this"

    .line 30
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/f4/b/h/h;->e(Lp3/a/o1/d;)V

    if-eqz p2, :cond_2

    .line 31
    iget-object p1, v0, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lp3/a/n1/r0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iput-object p2, p1, Lp3/a/n1/q1;->i:Ljava/lang/String;

    .line 35
    :cond_2
    invoke-virtual {v0}, Lp3/a/n1/b;->a()Lp3/a/l0;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Lp3/a/d;)Lp3/a/q1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/d;",
            ")TNonBlocking;"
        }
    .end annotation
.end method

.method public final declared-synchronized i(Le/a/b0/b/e;)Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/f4/b/h/h;->n:Le/a/x3/c;

    invoke-interface {v0}, Le/a/x3/c;->f()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/f4/b/h/h;->m:Le/a/f4/b/a;

    invoke-virtual {v0, p1}, Le/a/f4/b/a;->b(Le/a/b0/b/e;)Le/a/b0/b/e$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Le/a/f4/b/h/h;->i:Le/a/f4/b/g/b;

    .line 5
    iget-object v0, v0, Le/a/b0/b/e$b;->a:Lcom/truecaller/common/network/KnownDomain;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Le/a/f4/b/h/h;->c:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v3}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Le/a/f4/b/g/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/f4/b/h/h;->c:Lcom/truecaller/common/network/util/KnownEndpoints;

    iget-object v2, p0, Le/a/f4/b/h/h;->i:Le/a/f4/b/g/b;

    iget-object v3, p0, Le/a/f4/b/h/h;->j:Le/a/f4/b/b;

    const-string v4, "$this$getNativeEdgeHost"

    .line 8
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "edgeLocationsManager"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "domainResolver"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3}, Le/a/c/p/a;->D0(Ljava/lang/String;Le/a/f4/b/g/b;Le/a/f4/b/b;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 10
    iget-object v2, p0, Le/a/f4/b/h/h;->l:Le/a/f4/b/f/b;

    invoke-interface {v2}, Le/a/f4/b/f/b;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Le/a/f4/b/h/h;->l:Le/a/f4/b/f/b;

    iget-object v4, p0, Le/a/f4/b/h/h;->m:Le/a/f4/b/a;

    invoke-interface {v2, p1, v4}, Le/a/f4/b/f/b;->a(Le/a/b0/b/e;Le/a/f4/b/a;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    move-object v1, v3

    .line 12
    :goto_1
    :try_start_2
    iget-object v2, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f4/b/h/i;

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, v2, Le/a/f4/b/h/i;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 14
    :goto_2
    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 15
    monitor-exit p0

    return v4

    .line 16
    :cond_5
    :try_start_3
    sget-object v2, Le/a/b0/b/c;->b:Le/a/b0/b/c;

    iget-object v5, p0, Le/a/f4/b/h/h;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context.applicationContext"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Le/a/b0/b/c;->a(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, v0, v1}, Le/a/f4/b/h/h;->g(Ljava/lang/String;Ljava/lang/String;)Lp3/a/l0;

    move-result-object v1

    .line 18
    iget-object v2, p0, Le/a/f4/b/h/h;->h:Le/a/f4/b/h/c;

    invoke-interface {v2, p1, v1}, Le/a/f4/b/h/c;->a(Ljava/lang/Object;Lp3/a/l0;)V

    .line 19
    iget-object v2, p0, Le/a/f4/b/h/h;->a:Ljava/util/Map;

    new-instance v5, Le/a/f4/b/h/i;

    .line 20
    invoke-virtual {p0, v1}, Le/a/f4/b/h/h;->h(Lp3/a/d;)Lp3/a/q1/c;

    move-result-object v6

    .line 21
    invoke-virtual {p0, v1}, Le/a/f4/b/h/h;->f(Lp3/a/d;)Lp3/a/q1/c;

    move-result-object v1

    .line 22
    invoke-direct {v5, v6, v1, v3, v0}, Le/a/f4/b/h/i;-><init>(Lp3/a/q1/c;Lp3/a/q1/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return v4

    .line 24
    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract j()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lp3/a/g;",
            ">;"
        }
    .end annotation
.end method
