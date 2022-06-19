.class public Le/m/b/x/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/lang/String;

.field public static final c:Lp3/b/c/v;

.field public static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public static volatile e:Z

.field public static volatile f:Lp3/b/c/z/a;

.field public static volatile g:Lp3/b/c/z/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Le/m/b/x/b/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/m/b/x/b/y;->a:Ljava/util/logging/Logger;

    const-string v0, "Sent."

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Le/m/b/x/b/n;

    const-string v2, ".execute"

    .line 3
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/b/x/b/y;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Lp3/b/c/x;->b:Lp3/b/c/s;

    invoke-virtual {v0}, Lp3/b/c/s;->b()Lp3/b/c/v;

    move-result-object v0

    .line 5
    sput-object v0, Le/m/b/x/b/y;->c:Lp3/b/c/v;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Le/m/b/x/b/y;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Le/m/b/x/b/y;->e:Z

    const/4 v1, 0x0

    .line 8
    sput-object v1, Le/m/b/x/b/y;->f:Lp3/b/c/z/a;

    .line 9
    sput-object v1, Le/m/b/x/b/y;->g:Lp3/b/c/z/a$a;

    .line 10
    :try_start_0
    new-instance v1, Lp3/b/b/a/a/a;

    invoke-direct {v1}, Lp3/b/b/a/a/a;-><init>()V

    .line 11
    sput-object v1, Le/m/b/x/b/y;->f:Lp3/b/c/z/a;

    .line 12
    new-instance v1, Le/m/b/x/b/y$a;

    invoke-direct {v1}, Le/m/b/x/b/y$a;-><init>()V

    sput-object v1, Le/m/b/x/b/y;->g:Lp3/b/c/z/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    sget-object v2, Le/m/b/x/b/y;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Cannot initialize default OpenCensus HTTP propagation text format."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    :try_start_1
    sget-object v1, Lp3/b/c/x;->b:Lp3/b/c/s;

    invoke-virtual {v1}, Lp3/b/c/s;->a()Lp3/b/c/y/a;

    move-result-object v1

    .line 15
    check-cast v1, Lp3/b/c/y/a$b;

    .line 16
    iget-object v1, v1, Lp3/b/c/y/a$b;->a:Lp3/b/c/y/b;

    .line 17
    sget-object v2, Le/m/b/x/b/y;->b:Ljava/lang/String;

    .line 18
    sget-object v3, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 19
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 20
    check-cast v1, Lp3/b/c/y/b$b;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "spanNames"

    .line 22
    invoke-static {v0, v2}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v2, v1, Lp3/b/c/y/b$b;->a:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :try_start_2
    iget-object v1, v1, Lp3/b/c/y/b$b;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 26
    sget-object v1, Le/m/b/x/b/y;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot register default OpenCensus span names for collection."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp3/b/c/o;JLp3/b/c/m$b;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "span should not be null."

    .line 1
    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 2
    :cond_1
    sget-object v0, Le/m/b/x/b/y;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lp3/b/c/m;->a(Lp3/b/c/m$b;J)Lp3/b/c/m$a;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p1, p2}, Lp3/b/c/m$a;->b(J)Lp3/b/c/m$a;

    .line 5
    invoke-virtual {p3}, Lp3/b/c/m$a;->a()Lp3/b/c/m;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lp3/b/c/o;->a(Lp3/b/c/m;)V

    return-void
.end method
