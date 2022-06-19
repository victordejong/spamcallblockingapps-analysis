.class public final Le/a/l0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/k;


# instance fields
.field public a:Le/a/l0/k$a;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ls1/w/f;

.field public final f:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k3/j/j;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "contentResolver"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/m;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/l0/m;->f:Landroid/content/ContentResolver;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/l0/m;->b:Ljava/util/Set;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/l0/m;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/m;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/l0/m;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/l0/m;->d:Z

    return-void
.end method

.method public c(Le/a/l0/k$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/l0/m;->a:Le/a/l0/k$a;

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l0/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l0/m$a;

    iget v1, v0, Le/a/l0/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l0/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l0/m$a;

    invoke-direct {v0, p0, p1}, Le/a/l0/m$a;-><init>(Le/a/l0/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l0/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l0/m$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v4, v0, Le/a/l0/m$a;->k:J

    iget-object v2, v0, Le/a/l0/m$a;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v6, v0, Le/a/l0/m$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/l0/m$a;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v0, Le/a/l0/m$a;->g:Ljava/lang/Object;

    check-cast v8, Le/a/l0/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    iget-object v2, p0, Le/a/l0/m;->b:Ljava/util/Set;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v6, p0, Le/a/l0/m;->b:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v6, p0, Le/a/l0/m;->b:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    monitor-exit v2

    const/16 v2, 0xc8

    .line 10
    invoke-static {p1, v2}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p0

    move-object v6, p1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    iput-object v8, v0, Le/a/l0/m$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/l0/m$a;->h:Ljava/lang/Object;

    iput-object v6, v0, Le/a/l0/m$a;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/l0/m$a;->j:Ljava/lang/Object;

    iput-wide v4, v0, Le/a/l0/m$a;->k:J

    iput v3, v0, Le/a/l0/m$a;->e:I

    .line 15
    iget-object v7, v8, Le/a/l0/m;->e:Ls1/w/f;

    new-instance v9, Le/a/l0/l;

    const/4 v10, 0x0

    invoke-direct {v9, v8, p1, v10}, Le/a/l0/l;-><init>(Le/a/l0/m;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v7, v9, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, v2

    .line 16
    :goto_2
    check-cast p1, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    goto :goto_1

    .line 17
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 18
    invoke-static {v2}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    iget-object v1, v8, Le/a/l0/m;->c:Ljava/util/Set;

    monitor-enter v1

    .line 21
    :try_start_1
    iget-object v2, v8, Le/a/l0/m;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v2, v8, Le/a/l0/m;->c:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit v1

    .line 24
    iget-boolean v1, v8, Le/a/l0/m;->d:Z

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, v8, Le/a/l0/m;->d:Z

    .line 26
    iget-object v2, v8, Le/a/l0/m;->a:Le/a/l0/k$a;

    if-eqz v2, :cond_5

    invoke-interface {v2, p1, v0, v1}, Le/a/l0/k$a;->a(Ljava/util/Set;Ljava/util/Set;Z)V

    .line 27
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 28
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 30
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 32
    monitor-exit v2

    throw p1
.end method
