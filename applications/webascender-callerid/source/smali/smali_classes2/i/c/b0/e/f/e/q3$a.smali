.class final Li/c/b0/e/f/e/q3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/q3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/q3$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:I

.field volatile i:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile j:Z


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/q3$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/q3$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/q3$a;->g:J

    .line 4
    iput p4, p0, Li/c/b0/e/f/e/q3$a;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/q3$a;->g:J

    iget-object v2, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    iget-wide v2, v2, Li/c/b0/e/f/e/q3$b;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/q3$a;->j:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/q3$b;->b()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    invoke-virtual {v0, p0, p1}, Li/c/b0/e/f/e/q3$b;->c(Li/c/b0/e/f/e/q3$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/q3$a;->g:J

    iget-object v2, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    iget-wide v2, v2, Li/c/b0/e/f/e/q3$b;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/q3$a;->i:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/q3$b;->b()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x7

    .line 4
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput-object p1, p0, Li/c/b0/e/f/e/q3$a;->i:Li/c/b0/e/c/k;

    .line 6
    iput-boolean v1, p0, Li/c/b0/e/f/e/q3$a;->j:Z

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/e/q3$a;->f:Li/c/b0/e/f/e/q3$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/q3$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8
    iput-object p1, p0, Li/c/b0/e/f/e/q3$a;->i:Li/c/b0/e/c/k;

    return-void

    .line 9
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/e/q3$a;->h:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/q3$a;->i:Li/c/b0/e/c/k;

    :cond_2
    return-void
.end method
