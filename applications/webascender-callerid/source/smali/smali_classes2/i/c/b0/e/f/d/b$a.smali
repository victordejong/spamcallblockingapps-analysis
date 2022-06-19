.class final Li/c/b0/e/f/d/b$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g;

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/k/i;

.field final i:Li/c/b0/e/k/c;

.field final j:Li/c/b0/e/f/d/b$a$a;

.field final k:I

.field l:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field m:Li/c/b0/c/c;

.field volatile n:Z

.field volatile o:Z

.field volatile p:Z


# direct methods
.method constructor <init>(Li/c/b0/b/g;Li/c/b0/d/o;Li/c/b0/e/k/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;",
            "Li/c/b0/e/k/i;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/b$a;->g:Li/c/b0/d/o;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/d/b$a;->h:Li/c/b0/e/k/i;

    .line 5
    iput p4, p0, Li/c/b0/e/f/d/b$a;->k:I

    .line 6
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    .line 7
    new-instance p1, Li/c/b0/e/f/d/b$a$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/d/b$a$a;-><init>(Li/c/b0/e/f/d/b$a;)V

    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->j:Li/c/b0/e/f/d/b$a$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/d/b$a;->h:Li/c/b0/e/k/i;

    .line 4
    :cond_1
    iget-boolean v2, p0, Li/c/b0/e/f/d/b$a;->p:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Li/c/b0/e/f/d/b$a;->n:Z

    if-nez v2, :cond_6

    .line 7
    sget-object v2, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iput-boolean v3, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 10
    iget-object v1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    .line 11
    iget-object v1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    return-void

    .line 12
    :cond_3
    iget-boolean v2, p0, Li/c/b0/e/f/d/b$a;->o:Z

    const/4 v4, 0x0

    .line 13
    :try_start_0
    iget-object v5, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v5}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 14
    iget-object v4, p0, Li/c/b0/e/f/d/b$a;->g:Li/c/b0/d/o;

    invoke-interface {v4, v5}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Li/c/b0/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    .line 15
    iput-boolean v3, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 16
    iget-object v1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    return-void

    :cond_5
    if-nez v5, :cond_6

    .line 17
    iput-boolean v3, p0, Li/c/b0/e/f/d/b$a;->n:Z

    .line 18
    iget-object v2, p0, Li/c/b0/e/f/d/b$a;->j:Li/c/b0/e/f/d/b$a$a;

    invoke-interface {v4, v2}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 19
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    iput-boolean v3, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 21
    iget-object v2, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v2}, Li/c/b0/e/c/k;->clear()V

    .line 22
    iget-object v2, p0, Li/c/b0/e/f/d/b$a;->m:Li/c/b0/c/c;

    invoke-interface {v2}, Li/c/b0/c/c;->dispose()V

    .line 23
    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 24
    iget-object v1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    return-void

    .line 25
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/b$a;->n:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->h:Li/c/b0/e/k/i;

    sget-object v0, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->m:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {p1}, Li/c/b0/e/c/k;->clear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Li/c/b0/e/f/d/b$a;->n:Z

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->m:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->j:Li/c/b0/e/f/d/b$a$a;

    invoke-virtual {v0}, Li/c/b0/e/f/d/b$a$a;->a()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/d/b$a;->p:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/b$a;->o:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->h:Li/c/b0/e/k/i;

    sget-object v0, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iput-boolean v1, p0, Li/c/b0/e/f/d/b$a;->p:Z

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->j:Li/c/b0/e/f/d/b$a$a;

    invoke-virtual {p1}, Li/c/b0/e/f/d/b$a$a;->a()V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->i:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {p1}, Li/c/b0/e/c/k;->clear()V

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Li/c/b0/e/f/d/b$a;->o:Z

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/b$a;->m:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->m:Li/c/b0/c/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    .line 7
    iput-boolean v1, p0, Li/c/b0/e/f/d/b$a;->o:Z

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-interface {p1, p0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/f/d/b$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    .line 11
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-interface {p1, p0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/d/b$a;->k:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/d/b$a;->l:Li/c/b0/e/c/k;

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/d/b$a;->f:Li/c/b0/b/g;

    invoke-interface {p1, p0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    :cond_2
    return-void
.end method
