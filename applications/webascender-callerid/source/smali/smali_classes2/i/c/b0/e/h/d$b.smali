.class final Li/c/b0/e/h/d$b;
.super Li/c/b0/b/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final f:Li/c/b0/c/a;

.field private final g:Li/c/b0/e/h/d$a;

.field private final h:Li/c/b0/e/h/d$c;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Li/c/b0/e/h/d$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/d$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Li/c/b0/e/h/d$b;->g:Li/c/b0/e/h/d$a;

    .line 4
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/d$b;->f:Li/c/b0/c/a;

    .line 5
    invoke-virtual {p1}, Li/c/b0/e/h/d$a;->b()Li/c/b0/e/h/d$c;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/h/d$b;->h:Li/c/b0/e/h/d$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 6

    .line 1
    iget-object v0, p0, Li/c/b0/e/h/d$b;->f:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/h/d$b;->h:Li/c/b0/e/h/d$c;

    iget-object v5, p0, Li/c/b0/e/h/d$b;->f:Li/c/b0/c/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/e/h/f;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/b0/c/d;)Li/c/b0/e/h/k;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/h/d$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/h/d$b;->f:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/h/d$b;->g:Li/c/b0/e/h/d$a;

    iget-object v1, p0, Li/c/b0/e/h/d$b;->h:Li/c/b0/e/h/d$c;

    invoke-virtual {v0, v1}, Li/c/b0/e/h/d$a;->d(Li/c/b0/e/h/d$c;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/h/d$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
