.class public final Li/c/b0/e/h/d;
.super Li/c/b0/b/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/h/d$c;,
        Li/c/b0/e/h/d$b;,
        Li/c/b0/e/h/d$a;
    }
.end annotation


# static fields
.field static final d:Li/c/b0/e/h/h;

.field static final e:Li/c/b0/e/h/h;

.field private static final f:J

.field private static final g:Ljava/util/concurrent/TimeUnit;

.field static final h:Li/c/b0/e/h/d$c;

.field static final i:Li/c/b0/e/h/d$a;


# instance fields
.field final b:Ljava/util/concurrent/ThreadFactory;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/h/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Li/c/b0/e/h/d;->g:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx3.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    .line 2
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Li/c/b0/e/h/d;->f:J

    .line 3
    new-instance v0, Li/c/b0/e/h/d$c;

    new-instance v1, Li/c/b0/e/h/h;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Li/c/b0/e/h/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li/c/b0/e/h/d$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Li/c/b0/e/h/d;->h:Li/c/b0/e/h/d$c;

    .line 4
    invoke-virtual {v0}, Li/c/b0/e/h/f;->dispose()V

    const-string v0, "rx3.io-priority"

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    new-instance v1, Li/c/b0/e/h/h;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Li/c/b0/e/h/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c/b0/e/h/d;->d:Li/c/b0/e/h/h;

    .line 8
    new-instance v2, Li/c/b0/e/h/h;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Li/c/b0/e/h/h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li/c/b0/e/h/d;->e:Li/c/b0/e/h/h;

    .line 9
    new-instance v0, Li/c/b0/e/h/d$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Li/c/b0/e/h/d$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Li/c/b0/e/h/d;->i:Li/c/b0/e/h/d$a;

    .line 10
    invoke-virtual {v0}, Li/c/b0/e/h/d$a;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/h/d;->d:Li/c/b0/e/h/h;

    invoke-direct {p0, v0}, Li/c/b0/e/h/d;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Li/c/b0/b/d0;-><init>()V

    .line 3
    iput-object p1, p0, Li/c/b0/e/h/d;->b:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Li/c/b0/e/h/d;->i:Li/c/b0/e/h/d$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Li/c/b0/e/h/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/h/d;->g()V

    return-void
.end method


# virtual methods
.method public b()Li/c/b0/b/d0$c;
    .locals 2

    .line 1
    new-instance v0, Li/c/b0/e/h/d$b;

    iget-object v1, p0, Li/c/b0/e/h/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/e/h/d$a;

    invoke-direct {v0, v1}, Li/c/b0/e/h/d$b;-><init>(Li/c/b0/e/h/d$a;)V

    return-object v0
.end method

.method public g()V
    .locals 5

    .line 1
    new-instance v0, Li/c/b0/e/h/d$a;

    sget-wide v1, Li/c/b0/e/h/d;->f:J

    sget-object v3, Li/c/b0/e/h/d;->g:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Li/c/b0/e/h/d;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Li/c/b0/e/h/d$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Li/c/b0/e/h/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Li/c/b0/e/h/d;->i:Li/c/b0/e/h/d$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/h/d$a;->e()V

    :cond_0
    return-void
.end method
