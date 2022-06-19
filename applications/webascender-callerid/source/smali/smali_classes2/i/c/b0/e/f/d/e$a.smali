.class final Li/c/b0/e/f/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/e$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field static final m:Li/c/b0/e/f/d/e$a$a;


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

.field final h:Z

.field final i:Li/c/b0/e/k/c;

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/d/e$a$a;",
            ">;"
        }
    .end annotation
.end field

.field volatile k:Z

.field l:Li/c/b0/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/c/b0/e/f/d/e$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/c/b0/e/f/d/e$a$a;-><init>(Li/c/b0/e/f/d/e$a;)V

    sput-object v0, Li/c/b0/e/f/d/e$a;->m:Li/c/b0/e/f/d/e$a$a;

    return-void
.end method

.method constructor <init>(Li/c/b0/b/g;Li/c/b0/d/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/e$a;->g:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/d/e$a;->h:Z

    .line 5
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Li/c/b0/e/f/d/e$a;->m:Li/c/b0/e/f/d/e$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/f/d/e$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/f/d/e$a$a;->a()V

    :cond_0
    return-void
.end method

.method b(Li/c/b0/e/f/d/e$a$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/d/e$a;->k:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    :cond_0
    return-void
.end method

.method c(Li/c/b0/e/f/d/e$a$a;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {p1, p2}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Li/c/b0/e/f/d/e$a;->h:Z

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Li/c/b0/e/f/d/e$a;->k:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    iget-object p2, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, p2}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->l:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 7
    invoke-virtual {p0}, Li/c/b0/e/f/d/e$a;->a()V

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    iget-object p2, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, p2}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/d/e$a;->a()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/b0/e/f/d/e$a;->m:Li/c/b0/e/f/d/e$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/e$a;->k:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/d/e$a;->h:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/d/e$a;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/d/e$a;->a()V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->i:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->e(Li/c/b0/b/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->g:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Li/c/b0/e/f/d/e$a$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/d/e$a$a;-><init>(Li/c/b0/e/f/d/e$a;)V

    .line 3
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/e/f/d/e$a$a;

    .line 4
    sget-object v2, Li/c/b0/e/f/d/e$a;->m:Li/c/b0/e/f/d/e$a$a;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Li/c/b0/e/f/d/e$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Li/c/b0/e/f/d/e$a$a;->a()V

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 10
    invoke-virtual {p0, p1}, Li/c/b0/e/f/d/e$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e$a;->l:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/e$a;->l:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/e$a;->f:Li/c/b0/b/g;

    invoke-interface {p1, p0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
