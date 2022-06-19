.class abstract Li/c/z/e/b/b$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Li/c/z/e/b/b$f;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/b;
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
        "Li/c/i<",
        "TT;>;",
        "Li/c/z/e/b/b$f<",
        "TR;>;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/z/e/b/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/e/b/b$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
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

.field l:Li/c/z/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile m:Z

.field volatile n:Z

.field final o:Li/c/z/j/c;

.field volatile p:Z

.field q:I


# direct methods
.method constructor <init>(Li/c/y/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/b$b;->g:Li/c/y/d;

    .line 3
    iput p2, p0, Li/c/z/e/b/b$b;->h:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Li/c/z/e/b/b$b;->i:I

    .line 5
    new-instance p1, Li/c/z/e/b/b$e;

    invoke-direct {p1, p0}, Li/c/z/e/b/b$e;-><init>(Li/c/z/e/b/b$f;)V

    iput-object p1, p0, Li/c/z/e/b/b$b;->f:Li/c/z/e/b/b$e;

    .line 6
    new-instance p1, Li/c/z/j/c;

    invoke-direct {p1}, Li/c/z/j/c;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/b$b;->o:Li/c/z/j/c;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Li/c/z/e/b/b$b;->p:Z

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->e()V

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
    iput-boolean v0, p0, Li/c/z/e/b/b$b;->m:Z

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->e()V

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
    iget v0, p0, Li/c/z/e/b/b$b;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/b$b;->l:Li/c/z/c/i;

    invoke-interface {v0, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Li/c/z/e/b/b$b;->j:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->e()V

    return-void
.end method

.method public final onSubscribe(Lo/a/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/z/e/b/b$b;->j:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/z/e/b/b$b;->j:Lo/a/c;

    .line 3
    instance-of v0, p1, Li/c/z/c/f;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Li/c/z/c/f;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Li/c/z/c/e;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Li/c/z/e/b/b$b;->q:I

    .line 7
    iput-object v0, p0, Li/c/z/e/b/b$b;->l:Li/c/z/c/i;

    .line 8
    iput-boolean v2, p0, Li/c/z/e/b/b$b;->m:Z

    .line 9
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->f()V

    .line 10
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->e()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Li/c/z/e/b/b$b;->q:I

    .line 12
    iput-object v0, p0, Li/c/z/e/b/b$b;->l:Li/c/z/c/i;

    .line 13
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->f()V

    .line 14
    iget v0, p0, Li/c/z/e/b/b$b;->h:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Li/c/z/f/a;

    iget v1, p0, Li/c/z/e/b/b$b;->h:I

    invoke-direct {v0, v1}, Li/c/z/f/a;-><init>(I)V

    iput-object v0, p0, Li/c/z/e/b/b$b;->l:Li/c/z/c/i;

    .line 16
    invoke-virtual {p0}, Li/c/z/e/b/b$b;->f()V

    .line 17
    iget v0, p0, Li/c/z/e/b/b$b;->h:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_2
    return-void
.end method
