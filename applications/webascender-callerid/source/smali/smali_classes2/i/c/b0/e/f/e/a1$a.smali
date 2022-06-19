.class final Li/c/b0/e/f/e/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/a1;
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
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field h:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a1$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/a1$a;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object v1, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->g:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->f:Li/c/b0/b/c0;

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The iterator returned a null value"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 9
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/a1$a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 10
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 12
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/a1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 15
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/a1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a1$a;->h:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/a1$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
