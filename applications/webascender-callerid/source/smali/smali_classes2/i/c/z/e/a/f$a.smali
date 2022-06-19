.class final Li/c/z/e/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/c;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/c;

.field g:Li/c/w/b;

.field final synthetic h:Li/c/z/e/a/f;


# direct methods
.method constructor <init>(Li/c/z/e/a/f;Li/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->b:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    .line 4
    iget-object p1, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    invoke-interface {p1, p0}, Li/c/c;->a(Li/c/w/b;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Li/c/w/b;->dispose()V

    .line 7
    sget-object p1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object p1, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    .line 8
    iget-object p1, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    invoke-static {v0, p1}, Li/c/z/a/c;->error(Ljava/lang/Throwable;Li/c/c;)V

    return-void
.end method

.method b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->f:Li/c/y/a;

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

.method public dispose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->g:Li/c/y/a;

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
    iget-object v0, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    sget-object v1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->d:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V

    .line 3
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->e:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    invoke-interface {v0}, Li/c/c;->onComplete()V

    .line 5
    invoke-virtual {p0}, Li/c/z/e/a/f$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    invoke-interface {v1, v0}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/z/e/a/f$a;->g:Li/c/w/b;

    sget-object v1, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->c:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Li/c/z/e/a/f$a;->h:Li/c/z/e/a/f;

    iget-object v0, v0, Li/c/z/e/a/f;->e:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 7
    :goto_0
    iget-object v0, p0, Li/c/z/e/a/f$a;->f:Li/c/c;

    invoke-interface {v0, p1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Li/c/z/e/a/f$a;->b()V

    return-void
.end method
