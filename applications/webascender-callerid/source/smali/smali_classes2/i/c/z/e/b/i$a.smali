.class final Li/c/z/e/b/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lo/a/c;",
        ">;",
        "Li/c/i<",
        "TU;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:J

.field final g:Li/c/z/e/b/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/e/b/i$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:I

.field volatile j:Z

.field volatile k:Li/c/z/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/i<",
            "TU;>;"
        }
    .end annotation
.end field

.field l:J

.field m:I


# direct methods
.method constructor <init>(Li/c/z/e/b/i$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/i$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p2, p0, Li/c/z/e/b/i$a;->f:J

    .line 3
    iput-object p1, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    .line 4
    iget p1, p1, Li/c/z/e/b/i$b;->j:I

    iput p1, p0, Li/c/z/e/b/i$a;->i:I

    shr-int/lit8 p1, p1, 0x2

    .line 5
    iput p1, p0, Li/c/z/e/b/i$a;->h:I

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 3

    .line 1
    iget v0, p0, Li/c/z/e/b/i$a;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Li/c/z/e/b/i$a;->l:J

    add-long/2addr v0, p1

    .line 3
    iget p1, p0, Li/c/z/e/b/i$a;->h:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Li/c/z/e/b/i$a;->l:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/a/c;

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Li/c/z/e/b/i$a;->l:J

    :cond_1
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/z/i/g;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/z/e/b/i$a;->j:Z

    .line 2
    iget-object v0, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    invoke-virtual {v0}, Li/c/z/e/b/i$b;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    invoke-virtual {v0, p0, p1}, Li/c/z/e/b/i$b;->j(Li/c/z/e/b/i$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/z/e/b/i$a;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    invoke-virtual {v0, p1, p0}, Li/c/z/e/b/i$b;->l(Ljava/lang/Object;Li/c/z/e/b/i$a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    invoke-virtual {p1}, Li/c/z/e/b/i$b;->f()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Li/c/z/i/g;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Li/c/z/c/f;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Li/c/z/c/f;

    const/4 v1, 0x7

    .line 4
    invoke-interface {v0, v1}, Li/c/z/c/e;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Li/c/z/e/b/i$a;->m:I

    .line 6
    iput-object v0, p0, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    .line 7
    iput-boolean v2, p0, Li/c/z/e/b/i$a;->j:Z

    .line 8
    iget-object p1, p0, Li/c/z/e/b/i$a;->g:Li/c/z/e/b/i$b;

    invoke-virtual {p1}, Li/c/z/e/b/i$b;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Li/c/z/e/b/i$a;->m:I

    .line 10
    iput-object v0, p0, Li/c/z/e/b/i$a;->k:Li/c/z/c/i;

    .line 11
    :cond_1
    iget v0, p0, Li/c/z/e/b/i$a;->i:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_2
    return-void
.end method
