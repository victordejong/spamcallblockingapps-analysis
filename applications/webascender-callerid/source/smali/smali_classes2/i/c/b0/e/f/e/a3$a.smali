.class final Li/c/b0/e/f/e/a3$a;
.super Li/c/b0/e/f/e/a3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a3$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile k:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/b/a0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Li/c/b0/e/f/e/a3$c;-><init>(Li/c/b0/b/c0;Li/c/b0/b/a0;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/a3$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/a3$a;->k:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/a3$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/a3$c;->c()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/a3$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Li/c/b0/e/f/e/a3$a;->k:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/a3$c;->c()V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/a3$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
