.class Li/a/b/q$b;
.super Li/a/b/s/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/b/s/a/b<",
        "Li/a/b/p;",
        "Li/a/b/q$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Li/a/b/s/a/a$d<",
            "Li/a/b/p;",
            ">;",
            "Li/a/b/q$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Li/a/b/s/a/a$d<",
            "Li/a/b/p;",
            ">;",
            "Li/a/b/q$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Li/a/b/s/a/b;-><init>(ZZLjava/util/concurrent/ConcurrentMap;)V

    .line 2
    iput-object p1, p0, Li/a/b/q$b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "weak-ref-cleaner-strictcontextstorage"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static m()Li/a/b/q$b;
    .locals 2

    .line 1
    new-instance v0, Li/a/b/q$b;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Li/a/b/q$b;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method static synthetic p(Li/a/b/q$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Li/a/b/q$a;->i:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/a/b/q$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/q$b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Li/a/b/a;->a:Li/a/b/a;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Li/a/b/q$b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Li/a/b/q$b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/b/q$a;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, v0, Li/a/b/q$a;->i:Z

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Li/a/b/q;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Scope garbage collected before being closed."

    .line 5
    invoke-static {v0}, Li/a/b/q;->c(Li/a/b/q$a;)Ljava/lang/AssertionError;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
