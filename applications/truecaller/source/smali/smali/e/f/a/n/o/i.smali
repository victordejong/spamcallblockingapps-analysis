.class public Le/f/a/n/o/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/g$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Le/f/a/t/k/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/i$g;,
        Le/f/a/n/o/i$f;,
        Le/f/a/n/o/i$d;,
        Le/f/a/n/o/i$a;,
        Le/f/a/n/o/i$c;,
        Le/f/a/n/o/i$e;,
        Le/f/a/n/o/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/o/g$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Le/f/a/n/o/i<",
        "*>;>;",
        "Le/f/a/t/k/a$d;"
    }
.end annotation


# instance fields
.field public A:Le/f/a/n/a;

.field public B:Le/f/a/n/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/n/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile C:Le/f/a/n/o/g;

.field public volatile D:Z

.field public volatile E:Z

.field public final a:Le/f/a/n/o/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/t/k/d;

.field public final d:Le/f/a/n/o/i$d;

.field public final e:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "Le/f/a/n/o/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Le/f/a/n/o/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/i$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Le/f/a/n/o/i$e;

.field public h:Le/f/a/e;

.field public i:Le/f/a/n/f;

.field public j:Le/f/a/f;

.field public k:Le/f/a/n/o/o;

.field public l:I

.field public m:I

.field public n:Le/f/a/n/o/k;

.field public o:Le/f/a/n/i;

.field public p:Le/f/a/n/o/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/i$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Le/f/a/n/o/i$g;

.field public s:Le/f/a/n/o/i$f;

.field public t:J

.field public u:Z

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Thread;

.field public x:Le/f/a/n/f;

.field public y:Le/f/a/n/f;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/f/a/n/o/i$d;Ln3/k/h/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/i$d;",
            "Ln3/k/h/e<",
            "Le/f/a/n/o/i<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/o/h;

    invoke-direct {v0}, Le/f/a/n/o/h;-><init>()V

    iput-object v0, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    .line 4
    new-instance v0, Le/f/a/t/k/d$b;

    invoke-direct {v0}, Le/f/a/t/k/d$b;-><init>()V

    .line 5
    iput-object v0, p0, Le/f/a/n/o/i;->c:Le/f/a/t/k/d;

    .line 6
    new-instance v0, Le/f/a/n/o/i$c;

    invoke-direct {v0}, Le/f/a/n/o/i$c;-><init>()V

    iput-object v0, p0, Le/f/a/n/o/i;->f:Le/f/a/n/o/i$c;

    .line 7
    new-instance v0, Le/f/a/n/o/i$e;

    invoke-direct {v0}, Le/f/a/n/o/i$e;-><init>()V

    iput-object v0, p0, Le/f/a/n/o/i;->g:Le/f/a/n/o/i$e;

    .line 8
    iput-object p1, p0, Le/f/a/n/o/i;->d:Le/f/a/n/o/i$d;

    .line 9
    iput-object p2, p0, Le/f/a/n/o/i;->e:Ln3/k/h/e;

    return-void
.end method


# virtual methods
.method public final a(Le/f/a/n/n/d;Ljava/lang/Object;Le/f/a/n/a;)Le/f/a/n/o/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/a/n/n/d<",
            "*>;TData;",
            "Le/f/a/n/a;",
            ")",
            "Le/f/a/n/o/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/f/a/n/o/r;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Le/f/a/n/n/d;->b()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    sget v1, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, p2, p3}, Le/f/a/n/o/i;->e(Ljava/lang/Object;Le/f/a/n/a;)Le/f/a/n/o/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 4
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p3, v1, v2, v0}, Le/f/a/n/o/i;->m(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-interface {p1}, Le/f/a/n/n/d;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Le/f/a/n/n/d;->b()V

    throw p2
.end method

.method public c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Ljava/lang/Exception;",
            "Le/f/a/n/n/d<",
            "*>;",
            "Le/f/a/n/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Le/f/a/n/n/d;->b()V

    .line 2
    new-instance v0, Le/f/a/n/o/r;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Le/f/a/n/n/d;->a()Ljava/lang/Class;

    move-result-object p2

    .line 4
    iput-object p1, v0, Le/f/a/n/o/r;->b:Le/f/a/n/f;

    .line 5
    iput-object p4, v0, Le/f/a/n/o/r;->c:Le/f/a/n/a;

    .line 6
    iput-object p2, v0, Le/f/a/n/o/r;->d:Ljava/lang/Class;

    .line 7
    iget-object p1, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Le/f/a/n/o/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 9
    sget-object p1, Le/f/a/n/o/i$f;->b:Le/f/a/n/o/i$f;

    iput-object p1, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    .line 10
    iget-object p1, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast p1, Le/f/a/n/o/m;

    invoke-virtual {p1, p0}, Le/f/a/n/o/m;->i(Le/f/a/n/o/i;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Le/f/a/n/o/i;->p()V

    :goto_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Le/f/a/n/o/i;

    .line 2
    iget-object v0, p0, Le/f/a/n/o/i;->j:Le/f/a/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Le/f/a/n/o/i;->j:Le/f/a/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Le/f/a/n/o/i;->q:I

    iget p1, p1, Le/f/a/n/o/i;->q:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public d()Le/f/a/t/k/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->c:Le/f/a/t/k/d;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Le/f/a/n/a;)Le/f/a/n/o/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Le/f/a/n/a;",
            ")",
            "Le/f/a/n/o/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/f/a/n/o/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/a/n/o/h;->d(Ljava/lang/Class;)Le/f/a/n/o/u;

    move-result-object v2

    .line 2
    iget-object v0, p0, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v1, Le/f/a/n/a;->d:Le/f/a/n/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 5
    iget-boolean v1, v1, Le/f/a/n/o/h;->r:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    sget-object v3, Le/f/a/n/q/d/n;->i:Le/f/a/n/h;

    invoke-virtual {v0, v3}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 8
    :cond_4
    new-instance v0, Le/f/a/n/i;

    invoke-direct {v0}, Le/f/a/n/i;-><init>()V

    .line 9
    iget-object v4, p0, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    invoke-virtual {v0, v4}, Le/f/a/n/i;->d(Le/f/a/n/i;)V

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    iget-object v4, v0, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v4, v3, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :goto_3
    iget-object v0, p0, Le/f/a/n/o/i;->h:Le/f/a/e;

    .line 13
    iget-object v0, v0, Le/f/a/e;->b:Le/f/a/g;

    .line 14
    iget-object v0, v0, Le/f/a/g;->e:Le/f/a/n/n/f;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, v0, Le/f/a/n/n/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/n/e$a;

    if-nez v1, :cond_6

    .line 17
    iget-object v3, v0, Le/f/a/n/n/f;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/f/a/n/n/e$a;

    .line 18
    invoke-interface {v5}, Le/f/a/n/n/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v5

    :cond_6
    if-nez v1, :cond_7

    .line 19
    sget-object v1, Le/f/a/n/n/f;->b:Le/f/a/n/n/e$a;

    .line 20
    :cond_7
    invoke-interface {v1, p1}, Le/f/a/n/n/e$a;->b(Ljava/lang/Object;)Le/f/a/n/n/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 21
    :try_start_1
    iget v5, p0, Le/f/a/n/o/i;->l:I

    iget v6, p0, Le/f/a/n/o/i;->m:I

    new-instance v7, Le/f/a/n/o/i$b;

    invoke-direct {v7, p0, p2}, Le/f/a/n/o/i$b;-><init>(Le/f/a/n/o/i;Le/f/a/n/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Le/f/a/n/o/u;->a(Le/f/a/n/n/e;Le/f/a/n/i;IILe/f/a/n/o/j$a;)Le/f/a/n/o/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-interface {p1}, Le/f/a/n/n/e;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Le/f/a/n/n/e;->b()V

    throw p2

    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1
.end method

.method public final f()V
    .locals 12

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    .line 2
    iget-wide v1, p0, Le/f/a/n/o/i;->t:J

    const-string v3, "data: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/f/a/n/o/i;->z:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/f/a/n/o/i;->B:Le/f/a/n/n/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Le/f/a/n/o/i;->m(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/f/a/n/o/i;->B:Le/f/a/n/n/d;

    iget-object v2, p0, Le/f/a/n/o/i;->z:Ljava/lang/Object;

    iget-object v3, p0, Le/f/a/n/o/i;->A:Le/f/a/n/a;

    invoke-virtual {p0, v1, v2, v3}, Le/f/a/n/o/i;->a(Le/f/a/n/n/d;Ljava/lang/Object;Le/f/a/n/a;)Le/f/a/n/o/w;

    move-result-object v1
    :try_end_0
    .catch Le/f/a/n/o/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Le/f/a/n/o/i;->y:Le/f/a/n/f;

    iget-object v3, p0, Le/f/a/n/o/i;->A:Le/f/a/n/a;

    .line 5
    iput-object v2, v1, Le/f/a/n/o/r;->b:Le/f/a/n/f;

    .line 6
    iput-object v3, v1, Le/f/a/n/o/r;->c:Le/f/a/n/a;

    .line 7
    iput-object v0, v1, Le/f/a/n/o/r;->d:Ljava/lang/Class;

    .line 8
    iget-object v2, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_c

    .line 9
    iget-object v2, p0, Le/f/a/n/o/i;->A:Le/f/a/n/a;

    .line 10
    instance-of v3, v1, Le/f/a/n/o/s;

    if-eqz v3, :cond_1

    .line 11
    move-object v3, v1

    check-cast v3, Le/f/a/n/o/s;

    invoke-interface {v3}, Le/f/a/n/o/s;->initialize()V

    .line 12
    :cond_1
    iget-object v3, p0, Le/f/a/n/o/i;->f:Le/f/a/n/o/i$c;

    .line 13
    iget-object v3, v3, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 14
    invoke-static {v1}, Le/f/a/n/o/v;->e(Le/f/a/n/o/w;)Le/f/a/n/o/v;

    move-result-object v0

    move-object v1, v0

    .line 15
    :cond_3
    invoke-virtual {p0}, Le/f/a/n/o/i;->r()V

    .line 16
    iget-object v3, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast v3, Le/f/a/n/o/m;

    .line 17
    monitor-enter v3

    .line 18
    :try_start_1
    iput-object v1, v3, Le/f/a/n/o/m;->q:Le/f/a/n/o/w;

    .line 19
    iput-object v2, v3, Le/f/a/n/o/m;->r:Le/f/a/n/a;

    .line 20
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 21
    monitor-enter v3

    .line 22
    :try_start_2
    iget-object v1, v3, Le/f/a/n/o/m;->b:Le/f/a/t/k/d;

    invoke-virtual {v1}, Le/f/a/t/k/d;->a()V

    .line 23
    iget-boolean v1, v3, Le/f/a/n/o/m;->x:Z

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, v3, Le/f/a/n/o/m;->q:Le/f/a/n/o/w;

    invoke-interface {v1}, Le/f/a/n/o/w;->b()V

    .line 25
    invoke-virtual {v3}, Le/f/a/n/o/m;->g()V

    .line 26
    monitor-exit v3

    goto :goto_3

    .line 27
    :cond_4
    iget-object v1, v3, Le/f/a/n/o/m;->a:Le/f/a/n/o/m$e;

    invoke-virtual {v1}, Le/f/a/n/o/m$e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 28
    iget-boolean v1, v3, Le/f/a/n/o/m;->s:Z

    if-nez v1, :cond_a

    .line 29
    iget-object v1, v3, Le/f/a/n/o/m;->e:Le/f/a/n/o/m$c;

    iget-object v7, v3, Le/f/a/n/o/m;->q:Le/f/a/n/o/w;

    iget-boolean v8, v3, Le/f/a/n/o/m;->m:Z

    iget-object v10, v3, Le/f/a/n/o/m;->l:Le/f/a/n/f;

    iget-object v11, v3, Le/f/a/n/o/m;->c:Le/f/a/n/o/q$a;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Le/f/a/n/o/q;

    const/4 v9, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Le/f/a/n/o/q;-><init>(Le/f/a/n/o/w;ZZLe/f/a/n/f;Le/f/a/n/o/q$a;)V

    .line 32
    iput-object v1, v3, Le/f/a/n/o/m;->v:Le/f/a/n/o/q;

    .line 33
    iput-boolean v5, v3, Le/f/a/n/o/m;->s:Z

    .line 34
    iget-object v1, v3, Le/f/a/n/o/m;->a:Le/f/a/n/o/m$e;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Le/f/a/n/o/m$e;->a:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    .line 38
    invoke-virtual {v3, v1}, Le/f/a/n/o/m;->e(I)V

    .line 39
    iget-object v1, v3, Le/f/a/n/o/m;->l:Le/f/a/n/f;

    .line 40
    iget-object v6, v3, Le/f/a/n/o/m;->v:Le/f/a/n/o/q;

    .line 41
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 42
    iget-object v7, v3, Le/f/a/n/o/m;->f:Le/f/a/n/o/n;

    check-cast v7, Le/f/a/n/o/l;

    invoke-virtual {v7, v3, v1, v6}, Le/f/a/n/o/l;->e(Le/f/a/n/o/m;Le/f/a/n/f;Le/f/a/n/o/q;)V

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/n/o/m$d;

    .line 45
    iget-object v6, v2, Le/f/a/n/o/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Le/f/a/n/o/m$b;

    iget-object v2, v2, Le/f/a/n/o/m$d;->a:Le/f/a/r/i;

    invoke-direct {v7, v3, v2}, Le/f/a/n/o/m$b;-><init>(Le/f/a/n/o/m;Le/f/a/r/i;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {v3}, Le/f/a/n/o/m;->c()V

    .line 47
    :goto_3
    sget-object v1, Le/f/a/n/o/i$g;->e:Le/f/a/n/o/i$g;

    iput-object v1, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    .line 48
    :try_start_3
    iget-object v1, p0, Le/f/a/n/o/i;->f:Le/f/a/n/o/i$c;

    .line 49
    iget-object v2, v1, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    if-eqz v2, :cond_7

    .line 50
    iget-object v2, p0, Le/f/a/n/o/i;->d:Le/f/a/n/o/i$d;

    iget-object v3, p0, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    .line 51
    check-cast v2, Le/f/a/n/o/l$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Le/f/a/n/o/l$c;->a()Le/f/a/n/o/c0/a;

    move-result-object v2

    iget-object v6, v1, Le/f/a/n/o/i$c;->a:Le/f/a/n/f;

    new-instance v7, Le/f/a/n/o/f;

    iget-object v8, v1, Le/f/a/n/o/i$c;->b:Le/f/a/n/l;

    iget-object v9, v1, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    invoke-direct {v7, v8, v9, v3}, Le/f/a/n/o/f;-><init>(Le/f/a/n/d;Ljava/lang/Object;Le/f/a/n/i;)V

    .line 52
    invoke-interface {v2, v6, v7}, Le/f/a/n/o/c0/a;->a(Le/f/a/n/f;Le/f/a/n/o/c0/a$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    :try_start_5
    iget-object v1, v1, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    invoke-virtual {v1}, Le/f/a/n/o/v;->f()V

    goto :goto_5

    :catchall_0
    move-exception v2

    iget-object v1, v1, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    invoke-virtual {v1}, Le/f/a/n/o/v;->f()V

    .line 54
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {v0}, Le/f/a/n/o/v;->f()V

    .line 56
    :cond_8
    iget-object v0, p0, Le/f/a/n/o/i;->g:Le/f/a/n/o/i$e;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_6
    iput-boolean v5, v0, Le/f/a/n/o/i$e;->b:Z

    .line 59
    invoke-virtual {v0, v4}, Le/f/a/n/o/i$e;->a(Z)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_d

    .line 60
    invoke-virtual {p0}, Le/f/a/n/o/i;->o()V

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 61
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v0}, Le/f/a/n/o/v;->f()V

    :cond_9
    throw v1

    .line 63
    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 65
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 66
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 67
    :cond_c
    invoke-virtual {p0}, Le/f/a/n/o/i;->p()V

    :cond_d
    :goto_6
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/o/i$f;->b:Le/f/a/n/o/i$f;

    iput-object v0, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    .line 2
    iget-object v0, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast v0, Le/f/a/n/o/m;

    invoke-virtual {v0, p0}, Le/f/a/n/o/m;->i(Le/f/a/n/o/i;)V

    return-void
.end method

.method public h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Ljava/lang/Object;",
            "Le/f/a/n/n/d<",
            "*>;",
            "Le/f/a/n/a;",
            "Le/f/a/n/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    .line 2
    iput-object p2, p0, Le/f/a/n/o/i;->z:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Le/f/a/n/o/i;->B:Le/f/a/n/n/d;

    .line 4
    iput-object p4, p0, Le/f/a/n/o/i;->A:Le/f/a/n/a;

    .line 5
    iput-object p5, p0, Le/f/a/n/o/i;->y:Le/f/a/n/f;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Le/f/a/n/o/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, Le/f/a/n/o/i$f;->c:Le/f/a/n/o/i$f;

    iput-object p1, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    .line 8
    iget-object p1, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast p1, Le/f/a/n/o/m;

    invoke-virtual {p1, p0}, Le/f/a/n/o/m;->i(Le/f/a/n/o/i;)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/f/a/n/o/i;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final i()Le/f/a/n/o/g;
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Le/f/a/n/o/a0;

    iget-object v1, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    invoke-direct {v0, v1, p0}, Le/f/a/n/o/a0;-><init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Le/f/a/n/o/d;

    iget-object v1, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    invoke-direct {v0, v1, p0}, Le/f/a/n/o/d;-><init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Le/f/a/n/o/x;

    iget-object v1, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    invoke-direct {v0, v1, p0}, Le/f/a/n/o/x;-><init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V

    return-object v0
.end method

.method public final j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;
    .locals 4

    .line 1
    sget-object v0, Le/f/a/n/o/i$g;->b:Le/f/a/n/o/i$g;

    sget-object v1, Le/f/a/n/o/i$g;->c:Le/f/a/n/o/i$g;

    sget-object v2, Le/f/a/n/o/i$g;->f:Le/f/a/n/o/i$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    .line 3
    :cond_2
    iget-boolean p1, p0, Le/f/a/n/o/i;->u:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Le/f/a/n/o/i$g;->d:Le/f/a/n/o/i$g;

    :goto_1
    return-object v2

    .line 4
    :cond_4
    iget-object p1, p0, Le/f/a/n/o/i;->n:Le/f/a/n/o/k;

    invoke-virtual {p1}, Le/f/a/n/o/k;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0, v1}, Le/f/a/n/o/i;->j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;

    move-result-object v1

    :goto_2
    return-object v1

    .line 6
    :cond_6
    iget-object p1, p0, Le/f/a/n/o/i;->n:Le/f/a/n/o/k;

    invoke-virtual {p1}, Le/f/a/n/o/k;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 7
    :cond_7
    invoke-virtual {p0, v0}, Le/f/a/n/o/i;->j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final m(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Le/f/a/t/f;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/f/a/n/o/i;->k:Le/f/a/n/o/o;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, ", "

    .line 3
    invoke-static {p2, p4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/f/a/n/o/i;->r()V

    .line 2
    new-instance v0, Le/f/a/n/o/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast v1, Le/f/a/n/o/m;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iput-object v0, v1, Le/f/a/n/o/m;->t:Le/f/a/n/o/r;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, v1, Le/f/a/n/o/m;->b:Le/f/a/t/k/d;

    invoke-virtual {v0}, Le/f/a/t/k/d;->a()V

    .line 9
    iget-boolean v0, v1, Le/f/a/n/o/m;->x:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Le/f/a/n/o/m;->g()V

    .line 11
    monitor-exit v1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, v1, Le/f/a/n/o/m;->a:Le/f/a/n/o/m$e;

    invoke-virtual {v0}, Le/f/a/n/o/m$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-boolean v0, v1, Le/f/a/n/o/m;->u:Z

    if-nez v0, :cond_3

    .line 14
    iput-boolean v2, v1, Le/f/a/n/o/m;->u:Z

    .line 15
    iget-object v0, v1, Le/f/a/n/o/m;->l:Le/f/a/n/f;

    .line 16
    iget-object v3, v1, Le/f/a/n/o/m;->a:Le/f/a/n/o/m$e;

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Le/f/a/n/o/m$e;->a:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 20
    invoke-virtual {v1, v3}, Le/f/a/n/o/m;->e(I)V

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    iget-object v3, v1, Le/f/a/n/o/m;->f:Le/f/a/n/o/n;

    const/4 v5, 0x0

    check-cast v3, Le/f/a/n/o/l;

    invoke-virtual {v3, v1, v0, v5}, Le/f/a/n/o/l;->e(Le/f/a/n/o/m;Le/f/a/n/f;Le/f/a/n/o/q;)V

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/a/n/o/m$d;

    .line 25
    iget-object v4, v3, Le/f/a/n/o/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Le/f/a/n/o/m$a;

    iget-object v3, v3, Le/f/a/n/o/m$d;->a:Le/f/a/r/i;

    invoke-direct {v5, v1, v3}, Le/f/a/n/o/m$a;-><init>(Le/f/a/n/o/m;Le/f/a/r/i;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1}, Le/f/a/n/o/m;->c()V

    .line 27
    :goto_1
    iget-object v0, p0, Le/f/a/n/o/i;->g:Le/f/a/n/o/i$e;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_2
    iput-boolean v2, v0, Le/f/a/n/o/i$e;->c:Z

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Le/f/a/n/o/i$e;->a(Z)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p0}, Le/f/a/n/o/i;->o()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1

    .line 33
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 36
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->g:Le/f/a/n/o/i$e;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Le/f/a/n/o/i$e;->b:Z

    .line 4
    iput-boolean v1, v0, Le/f/a/n/o/i$e;->a:Z

    .line 5
    iput-boolean v1, v0, Le/f/a/n/o/i$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Le/f/a/n/o/i;->f:Le/f/a/n/o/i$c;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Le/f/a/n/o/i$c;->a:Le/f/a/n/f;

    .line 9
    iput-object v2, v0, Le/f/a/n/o/i$c;->b:Le/f/a/n/l;

    .line 10
    iput-object v2, v0, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    .line 11
    iget-object v0, p0, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 12
    iput-object v2, v0, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 13
    iput-object v2, v0, Le/f/a/n/o/h;->d:Ljava/lang/Object;

    .line 14
    iput-object v2, v0, Le/f/a/n/o/h;->n:Le/f/a/n/f;

    .line 15
    iput-object v2, v0, Le/f/a/n/o/h;->g:Ljava/lang/Class;

    .line 16
    iput-object v2, v0, Le/f/a/n/o/h;->k:Ljava/lang/Class;

    .line 17
    iput-object v2, v0, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    .line 18
    iput-object v2, v0, Le/f/a/n/o/h;->o:Le/f/a/f;

    .line 19
    iput-object v2, v0, Le/f/a/n/o/h;->j:Ljava/util/Map;

    .line 20
    iput-object v2, v0, Le/f/a/n/o/h;->p:Le/f/a/n/o/k;

    .line 21
    iget-object v3, v0, Le/f/a/n/o/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    iput-boolean v1, v0, Le/f/a/n/o/h;->l:Z

    .line 23
    iget-object v3, v0, Le/f/a/n/o/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iput-boolean v1, v0, Le/f/a/n/o/h;->m:Z

    .line 25
    iput-boolean v1, p0, Le/f/a/n/o/i;->D:Z

    .line 26
    iput-object v2, p0, Le/f/a/n/o/i;->h:Le/f/a/e;

    .line 27
    iput-object v2, p0, Le/f/a/n/o/i;->i:Le/f/a/n/f;

    .line 28
    iput-object v2, p0, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    .line 29
    iput-object v2, p0, Le/f/a/n/o/i;->j:Le/f/a/f;

    .line 30
    iput-object v2, p0, Le/f/a/n/o/i;->k:Le/f/a/n/o/o;

    .line 31
    iput-object v2, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    .line 32
    iput-object v2, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    .line 33
    iput-object v2, p0, Le/f/a/n/o/i;->C:Le/f/a/n/o/g;

    .line 34
    iput-object v2, p0, Le/f/a/n/o/i;->w:Ljava/lang/Thread;

    .line 35
    iput-object v2, p0, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    .line 36
    iput-object v2, p0, Le/f/a/n/o/i;->z:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, Le/f/a/n/o/i;->A:Le/f/a/n/a;

    .line 38
    iput-object v2, p0, Le/f/a/n/o/i;->B:Le/f/a/n/n/d;

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Le/f/a/n/o/i;->t:J

    .line 40
    iput-boolean v1, p0, Le/f/a/n/o/i;->E:Z

    .line 41
    iput-object v2, p0, Le/f/a/n/o/i;->v:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Le/f/a/n/o/i;->e:Ln3/k/h/e;

    invoke-interface {v0, p0}, Ln3/k/h/e;->b(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/o/i;->w:Ljava/lang/Thread;

    .line 2
    sget v0, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Le/f/a/n/o/i;->t:J

    const/4 v0, 0x0

    .line 4
    :cond_0
    iget-boolean v1, p0, Le/f/a/n/o/i;->E:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Le/f/a/n/o/i;->C:Le/f/a/n/o/g;

    if-eqz v1, :cond_1

    iget-object v0, p0, Le/f/a/n/o/i;->C:Le/f/a/n/o/g;

    .line 5
    invoke-interface {v0}, Le/f/a/n/o/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v1, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    invoke-virtual {p0, v1}, Le/f/a/n/o/i;->j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;

    move-result-object v1

    iput-object v1, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    .line 7
    invoke-virtual {p0}, Le/f/a/n/o/i;->i()Le/f/a/n/o/g;

    move-result-object v1

    iput-object v1, p0, Le/f/a/n/o/i;->C:Le/f/a/n/o/g;

    .line 8
    iget-object v1, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    sget-object v2, Le/f/a/n/o/i$g;->d:Le/f/a/n/o/i$g;

    if-ne v1, v2, :cond_0

    .line 9
    sget-object v0, Le/f/a/n/o/i$f;->b:Le/f/a/n/o/i$f;

    iput-object v0, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    .line 10
    iget-object v0, p0, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    check-cast v0, Le/f/a/n/o/m;

    invoke-virtual {v0, p0}, Le/f/a/n/o/m;->i(Le/f/a/n/o/i;)V

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    sget-object v2, Le/f/a/n/o/i$g;->f:Le/f/a/n/o/i$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Le/f/a/n/o/i;->E:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Le/f/a/n/o/i;->n()V

    :cond_3
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/n/o/i;->f()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/f/a/n/o/i;->p()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Le/f/a/n/o/i$g;->a:Le/f/a/n/o/i$g;

    invoke-virtual {p0, v0}, Le/f/a/n/o/i;->j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    .line 6
    invoke-virtual {p0}, Le/f/a/n/o/i;->i()Le/f/a/n/o/g;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/o/i;->C:Le/f/a/n/o/g;

    .line 7
    invoke-virtual {p0}, Le/f/a/n/o/i;->p()V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->c:Le/f/a/t/k/d;

    invoke-virtual {v0}, Le/f/a/t/k/d;->a()V

    .line 2
    iget-boolean v0, p0, Le/f/a/n/o/i;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-static {v0, v1}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Le/f/a/n/o/i;->D:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/n/o/i;->B:Le/f/a/n/n/d;

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/f/a/n/o/i;->E:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Le/f/a/n/o/i;->n()V
    :try_end_0
    .catch Le/f/a/n/o/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/f/a/n/n/d;->b()V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Le/f/a/n/o/i;->q()V
    :try_end_1
    .catch Le/f/a/n/o/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Le/f/a/n/n/d;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Le/f/a/n/o/i;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v2, p0, Le/f/a/n/o/i;->r:Le/f/a/n/o/i$g;

    sget-object v3, Le/f/a/n/o/i$g;->e:Le/f/a/n/o/i$g;

    if-eq v2, v3, :cond_4

    .line 10
    iget-object v2, p0, Le/f/a/n/o/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Le/f/a/n/o/i;->n()V

    .line 12
    :cond_4
    iget-boolean v2, p0, Le/f/a/n/o/i;->E:Z

    if-nez v2, :cond_5

    .line 13
    throw v1

    .line 14
    :cond_5
    throw v1

    :catch_0
    move-exception v1

    .line 15
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Le/f/a/n/n/d;->b()V

    .line 17
    :cond_6
    throw v1
.end method
