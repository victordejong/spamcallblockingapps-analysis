.class final Li/c/z/e/c/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/l;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/q;
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
        "Ljava/lang/Object;",
        "Li/c/l<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/z/e/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/e/c/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Li/c/w/b;


# direct methods
.method constructor <init>(Li/c/l;Li/c/z/e/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;",
            "Li/c/z/e/c/q<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->g:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object p1, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    .line 4
    iget-object p1, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    invoke-interface {p1, p0}, Li/c/l;->a(Li/c/w/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Li/c/w/b;->dispose()V

    .line 7
    sget-object p1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object p1, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    .line 8
    iget-object p1, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    invoke-static {v0, p1}, Li/c/z/a/c;->error(Ljava/lang/Throwable;Li/c/l;)V

    :cond_0
    :goto_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->k:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->i:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 4
    :goto_0
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    .line 5
    iget-object v0, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Li/c/z/e/c/q$a;->b()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->l:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 5
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    sget-object v1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->j:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    .line 4
    iget-object v0, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    .line 5
    invoke-virtual {p0}, Li/c/z/e/c/q$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Li/c/z/e/c/q$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    sget-object v1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Li/c/z/e/c/q$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    sget-object v1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/q$a;->g:Li/c/z/e/c/q;

    iget-object v0, v0, Li/c/z/e/c/q;->h:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Li/c/z/e/c/q$a;->h:Li/c/w/b;

    .line 4
    iget-object v0, p0, Li/c/z/e/c/q$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Li/c/z/e/c/q$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, p1}, Li/c/z/e/c/q$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
