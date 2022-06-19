.class public Lcom/google/firebase/inappmessaging/j0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/j0/s$c;,
        Lcom/google/firebase/inappmessaging/j0/s$b;,
        Lcom/google/firebase/inappmessaging/j0/s$a;,
        Lcom/google/firebase/inappmessaging/j0/s$f;,
        Lcom/google/firebase/inappmessaging/j0/s$d;,
        Lcom/google/firebase/inappmessaging/j0/s$e;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/r;",
            "Lcom/google/firebase/inappmessaging/j0/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/s;",
            "Lcom/google/firebase/inappmessaging/j0/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/u;",
            "Lcom/google/firebase/inappmessaging/j0/s$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/v;",
            "Lcom/google/firebase/inappmessaging/j0/s$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/s;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/s;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/s;->e:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/inappmessaging/j0/s;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/inappmessaging/j0/s$e;

    const-string v1, "EventListeners-"

    invoke-direct {v8, v1}, Lcom/google/firebase/inappmessaging/j0/s$e;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/s;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/inappmessaging/j0/s$c;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/s$c;->b()Lcom/google/firebase/inappmessaging/u;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/firebase/inappmessaging/u;->a(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$b;)V

    return-void
.end method

.method static synthetic d(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/s$f;->b()Lcom/google/firebase/inappmessaging/v;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/firebase/inappmessaging/v;->a(Lcom/google/firebase/inappmessaging/model/i;)V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/s$a;->b()Lcom/google/firebase/inappmessaging/r;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/firebase/inappmessaging/r;->a(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/inappmessaging/j0/s$b;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/s$b;->b()Lcom/google/firebase/inappmessaging/s;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/firebase/inappmessaging/s;->a(Lcom/google/firebase/inappmessaging/model/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/j0/s$c;

    .line 2
    sget-object v2, Lcom/google/firebase/inappmessaging/j0/s;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/s$d;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, p1, p2}, Lcom/google/firebase/inappmessaging/j0/p;->a(Lcom/google/firebase/inappmessaging/j0/s$c;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$b;)Ljava/lang/Runnable;

    move-result-object v1

    .line 4
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/j0/s$f;

    .line 2
    sget-object v2, Lcom/google/firebase/inappmessaging/j0/s;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/s$d;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/google/firebase/inappmessaging/j0/o;->a(Lcom/google/firebase/inappmessaging/j0/s$f;Lcom/google/firebase/inappmessaging/model/i;)Ljava/lang/Runnable;

    move-result-object v1

    .line 4
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/j0/s$a;

    .line 2
    sget-object v2, Lcom/google/firebase/inappmessaging/j0/s;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/s$d;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, p1, p2}, Lcom/google/firebase/inappmessaging/j0/q;->a(Lcom/google/firebase/inappmessaging/j0/s$a;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)Ljava/lang/Runnable;

    move-result-object v1

    .line 4
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/j0/s$b;

    .line 2
    sget-object v2, Lcom/google/firebase/inappmessaging/j0/s;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/s$d;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/google/firebase/inappmessaging/j0/r;->a(Lcom/google/firebase/inappmessaging/j0/s$b;Lcom/google/firebase/inappmessaging/model/i;)Ljava/lang/Runnable;

    move-result-object v1

    .line 4
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/s;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
