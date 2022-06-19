.class public final Li/c/b0/e/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
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


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/a;

.field i:Li/c/b0/c/c;


# direct methods
.method public constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/g;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/e/l;->g:Li/c/b0/d/g;

    .line 4
    iput-object p3, p0, Li/c/b0/e/e/l;->h:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object v1, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 4
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/e/l;->h:Li/c/b0/d/a;

    invoke-interface {v1}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

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

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/e/l;->g:Li/c/b0/d/g;

    invoke-interface {v0, p1}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 4
    iget-object p1, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 7
    sget-object p1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object p1, p0, Li/c/b0/e/e/l;->i:Li/c/b0/c/c;

    .line 8
    iget-object p1, p0, Li/c/b0/e/e/l;->f:Li/c/b0/b/c0;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void
.end method
