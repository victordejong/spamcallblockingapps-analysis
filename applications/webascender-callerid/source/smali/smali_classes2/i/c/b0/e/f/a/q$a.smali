.class final Li/c/b0/e/f/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/b0/b/g;

.field g:Li/c/b0/c/c;

.field final synthetic h:Li/c/b0/e/f/a/q;


# direct methods
.method constructor <init>(Li/c/b0/e/f/a/q;Li/c/b0/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->k:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->l:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->i:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->j:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/a/q$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    invoke-interface {v1, v0}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->h:Li/c/b0/d/g;

    invoke-interface {v0, p1}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->j:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 7
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Li/c/b0/e/f/a/q$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->h:Li/c/b0/e/f/a/q;

    iget-object v0, v0, Li/c/b0/e/f/a/q;->g:Li/c/b0/d/g;

    invoke-interface {v0, p1}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    invoke-interface {p1, p0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

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

    iput-object p1, p0, Li/c/b0/e/f/a/q$a;->g:Li/c/b0/c/c;

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/a/q$a;->f:Li/c/b0/b/g;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/g;)V

    return-void
.end method
