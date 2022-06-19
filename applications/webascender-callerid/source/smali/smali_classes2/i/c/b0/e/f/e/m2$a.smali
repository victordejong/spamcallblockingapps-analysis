.class final Li/c/b0/e/f/e/m2$a;
.super Li/c/b0/e/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/e/e/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:J

.field h:J

.field i:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Integer;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m2$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/m2$a;->h:J

    .line 4
    iput-wide p4, p0, Li/c/b0/e/f/e/m2$a;->g:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/m2$a;->h:J

    .line 2
    iget-wide v2, p0, Li/c/b0/e/f/e/m2$a;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Li/c/b0/e/f/e/m2$a;->h:J

    long-to-int v1, v0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/m2$a;->g:J

    iput-wide v0, p0, Li/c/b0/e/f/e/m2$a;->h:J

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/m2$a;->h:J

    iget-wide v2, p0, Li/c/b0/e/f/e/m2$a;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/m2$a;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/m2$a;->i:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/m2$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m2$a;->f:Li/c/b0/b/c0;

    .line 3
    iget-wide v1, p0, Li/c/b0/e/f/e/m2$a;->g:J

    .line 4
    iget-wide v3, p0, Li/c/b0/e/f/e/m2$a;->h:J

    :goto_0
    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_1

    long-to-int v5, v3

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 8
    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :cond_2
    return-void
.end method
