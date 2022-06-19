.class public final Lp3/a/n1/q1;
.super Lp3/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/q1$a;,
        Lp3/a/n1/q1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/m0<",
        "Lp3/a/n1/q1;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/logging/Logger;

.field public static final B:J

.field public static final C:J

.field public static final D:Lp3/a/n1/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/y1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Lp3/a/t;

.field public static final F:Lp3/a/n;


# instance fields
.field public a:Lp3/a/n1/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/y1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lp3/a/n1/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/y1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lp3/a/u0;

.field public e:Lp3/a/r0$c;

.field public final f:Ljava/lang/String;

.field public final g:Lp3/a/b;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lp3/a/t;

.field public l:Lp3/a/n;

.field public m:J

.field public n:I

.field public o:I

.field public p:J

.field public q:J

.field public r:Z

.field public s:Lp3/a/a0;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lp3/a/n1/q1$b;

.field public final z:Lp3/a/n1/q1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lp3/a/n1/q1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lp3/a/n1/q1;->B:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lp3/a/n1/q1;->C:J

    .line 4
    sget-object v0, Lp3/a/n1/r0;->m:Lp3/a/n1/n2$c;

    .line 5
    new-instance v1, Lp3/a/n1/p2;

    invoke-direct {v1, v0}, Lp3/a/n1/p2;-><init>(Lp3/a/n1/n2$c;)V

    .line 6
    sput-object v1, Lp3/a/n1/q1;->D:Lp3/a/n1/y1;

    .line 7
    sget-object v0, Lp3/a/t;->d:Lp3/a/t;

    .line 8
    sput-object v0, Lp3/a/n1/q1;->E:Lp3/a/t;

    .line 9
    sget-object v0, Lp3/a/n;->b:Lp3/a/n;

    .line 10
    sput-object v0, Lp3/a/n1/q1;->F:Lp3/a/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp3/a/n1/q1$b;Lp3/a/n1/q1$a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp3/a/m0;-><init>()V

    .line 2
    sget-object v0, Lp3/a/n1/q1;->D:Lp3/a/n1/y1;

    iput-object v0, p0, Lp3/a/n1/q1;->a:Lp3/a/n1/y1;

    .line 3
    iput-object v0, p0, Lp3/a/n1/q1;->b:Lp3/a/n1/y1;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/q1;->c:Ljava/util/List;

    .line 5
    sget-object v0, Lp3/a/u0;->d:Ljava/util/logging/Logger;

    const-class v0, Lp3/a/s0;

    const-class v1, Lp3/a/u0;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lp3/a/u0;->e:Lp3/a/u0;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "io.grpc.internal.DnsNameResolverProvider"

    .line 8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v4

    .line 9
    :try_start_2
    sget-object v5, Lp3/a/u0;->d:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Unable to find DNS NameResolver"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Lp3/a/u0$b;

    invoke-direct {v5, v3}, Lp3/a/u0$b;-><init>(Lp3/a/t0;)V

    .line 12
    invoke-static {v0, v2, v4, v5}, Le/q/f/a/d/a;->U1(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lp3/a/f1;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    sget-object v2, Lp3/a/u0;->d:Ljava/util/logging/Logger;

    const-string v4, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 15
    :cond_0
    new-instance v2, Lp3/a/u0;

    invoke-direct {v2}, Lp3/a/u0;-><init>()V

    sput-object v2, Lp3/a/u0;->e:Lp3/a/u0;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/s0;

    .line 17
    sget-object v4, Lp3/a/u0;->d:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service loader found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Lp3/a/s0;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    sget-object v4, Lp3/a/u0;->e:Lp3/a/u0;

    .line 20
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    invoke-virtual {v2}, Lp3/a/s0;->c()Z

    move-result v5

    const-string v6, "isAvailable() returned false"

    invoke-static {v5, v6}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 22
    iget-object v5, v4, Lp3/a/u0;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    .line 24
    :cond_2
    sget-object v0, Lp3/a/u0;->e:Lp3/a/u0;

    .line 25
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lp3/a/u0;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    new-instance v4, Lp3/a/t0;

    invoke-direct {v4, v0}, Lp3/a/t0;-><init>(Lp3/a/u0;)V

    invoke-static {v4}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lp3/a/u0;->c:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 30
    :cond_3
    :goto_2
    sget-object v0, Lp3/a/u0;->e:Lp3/a/u0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v1

    .line 31
    iput-object v0, p0, Lp3/a/n1/q1;->d:Lp3/a/u0;

    .line 32
    iget-object v0, v0, Lp3/a/u0;->a:Lp3/a/r0$c;

    .line 33
    iput-object v0, p0, Lp3/a/n1/q1;->e:Lp3/a/r0$c;

    const-string v0, "pick_first"

    .line 34
    iput-object v0, p0, Lp3/a/n1/q1;->j:Ljava/lang/String;

    .line 35
    sget-object v0, Lp3/a/n1/q1;->E:Lp3/a/t;

    iput-object v0, p0, Lp3/a/n1/q1;->k:Lp3/a/t;

    .line 36
    sget-object v0, Lp3/a/n1/q1;->F:Lp3/a/n;

    iput-object v0, p0, Lp3/a/n1/q1;->l:Lp3/a/n;

    .line 37
    sget-wide v0, Lp3/a/n1/q1;->B:J

    iput-wide v0, p0, Lp3/a/n1/q1;->m:J

    const/4 v0, 0x5

    .line 38
    iput v0, p0, Lp3/a/n1/q1;->n:I

    .line 39
    iput v0, p0, Lp3/a/n1/q1;->o:I

    const-wide/32 v0, 0x1000000

    .line 40
    iput-wide v0, p0, Lp3/a/n1/q1;->p:J

    const-wide/32 v0, 0x100000

    .line 41
    iput-wide v0, p0, Lp3/a/n1/q1;->q:J

    .line 42
    sget-object v0, Lp3/a/a0;->e:Lp3/a/a0;

    .line 43
    iput-object v0, p0, Lp3/a/n1/q1;->s:Lp3/a/a0;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lp3/a/n1/q1;->t:Z

    .line 45
    iput-boolean v0, p0, Lp3/a/n1/q1;->u:Z

    .line 46
    iput-boolean v0, p0, Lp3/a/n1/q1;->v:Z

    .line 47
    iput-boolean v0, p0, Lp3/a/n1/q1;->w:Z

    .line 48
    iput-boolean v0, p0, Lp3/a/n1/q1;->x:Z

    const-string v0, "target"

    .line 49
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/q1;->f:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lp3/a/n1/q1;->g:Lp3/a/b;

    const-string p1, "clientTransportFactoryBuilder"

    .line 51
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/q1;->y:Lp3/a/n1/q1$b;

    .line 52
    iput-object p3, p0, Lp3/a/n1/q1;->z:Lp3/a/n1/q1$a;

    return-void

    :catchall_2
    move-exception p1

    .line 53
    monitor-exit v1

    throw p1
.end method
