.class abstract Li/c/b0/e/f/b/b$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;
.implements Li/c/b0/e/f/b/b$f;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/o<",
        "TT;>;",
        "Li/c/b0/e/f/b/b$f<",
        "TR;>;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/b/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/b/b$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:I

.field j:Lo/a/c;

.field k:I

.field l:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile m:Z

.field volatile n:Z

.field final o:Li/c/b0/e/k/c;

.field volatile p:Z

.field q:I


# direct methods
.method constructor <init>(Li/c/b0/d/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/b$b;->g:Li/c/b0/d/o;

    .line 3
    iput p2, p0, Li/c/b0/e/f/b/b$b;->h:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Li/c/b0/e/f/b/b$b;->i:I

    .line 5
    new-instance p1, Li/c/b0/e/f/b/b$e;

    invoke-direct {p1, p0}, Li/c/b0/e/f/b/b$e;-><init>(Li/c/b0/e/f/b/b$f;)V

    iput-object p1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    .line 6
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->e()V

    return-void
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/b/b$b;->m:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->e()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/f/b/b$b;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->e()V

    return-void
.end method

.method public final onSubscribe(Lo/a/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-static {v0, p1}, Li/c/b0/e/j/f;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/h;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Li/c/b0/e/c/h;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Li/c/b0/e/f/b/b$b;->q:I

    .line 7
    iput-object v0, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    .line 8
    iput-boolean v2, p0, Li/c/b0/e/f/b/b$b;->m:Z

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->f()V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->e()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Li/c/b0/e/f/b/b$b;->q:I

    .line 12
    iput-object v0, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    .line 13
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->f()V

    .line 14
    iget v0, p0, Li/c/b0/e/f/b/b$b;->h:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Li/c/b0/e/g/b;

    iget v1, p0, Li/c/b0/e/f/b/b$b;->h:I

    invoke-direct {v0, v1}, Li/c/b0/e/g/b;-><init>(I)V

    iput-object v0, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    .line 16
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$b;->f()V

    .line 17
    iget v0, p0, Li/c/b0/e/f/b/b$b;->h:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_2
    return-void
.end method
