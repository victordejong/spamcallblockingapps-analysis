.class final Li/c/b0/b/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/b/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Ljava/lang/Runnable;

.field final g:Li/c/b0/b/d0$c;

.field h:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Li/c/b0/b/d0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/b/d0$a;->f:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Li/c/b0/b/d0$a;->g:Li/c/b0/b/d0$c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/b/d0$a;->h:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Li/c/b0/b/d0$a;->g:Li/c/b0/b/d0$c;

    instance-of v1, v0, Li/c/b0/e/h/f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Li/c/b0/e/h/f;

    invoke-virtual {v0}, Li/c/b0/e/h/f;->h()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/b/d0$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/b/d0$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/b/d0$a;->h:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/b0/b/d0$a;->f:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Li/c/b0/b/d0$a;->dispose()V

    .line 4
    iput-object v0, p0, Li/c/b0/b/d0$a;->h:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-static {v1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 6
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-virtual {p0}, Li/c/b0/b/d0$a;->dispose()V

    .line 8
    iput-object v0, p0, Li/c/b0/b/d0$a;->h:Ljava/lang/Thread;

    .line 9
    throw v1
.end method
