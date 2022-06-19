.class final Li/c/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/w/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Ljava/lang/Runnable;

.field final g:Li/c/r$b;

.field h:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Li/c/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/r$a;->f:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Li/c/r$a;->g:Li/c/r$b;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/r$a;->h:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Li/c/r$a;->g:Li/c/r$b;

    instance-of v1, v0, Li/c/z/g/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Li/c/z/g/e;

    invoke-virtual {v0}, Li/c/z/g/e;->f()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/r$a;->g:Li/c/r$b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/r$a;->g:Li/c/r$b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Li/c/r$a;->h:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/r$a;->f:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Li/c/r$a;->dispose()V

    .line 4
    iput-object v0, p0, Li/c/r$a;->h:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {p0}, Li/c/r$a;->dispose()V

    .line 6
    iput-object v0, p0, Li/c/r$a;->h:Ljava/lang/Thread;

    throw v1
.end method
