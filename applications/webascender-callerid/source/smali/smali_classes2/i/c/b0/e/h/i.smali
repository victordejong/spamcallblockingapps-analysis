.class public final Li/c/b0/e/h/i;
.super Li/c/b0/e/h/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/h/a;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/e/h/a;->g:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/h/a;->f:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3
    iput-object v0, p0, Li/c/b0/e/h/a;->g:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 4
    iput-object v0, p0, Li/c/b0/e/h/a;->g:Ljava/lang/Thread;

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/h/a;->dispose()V

    .line 6
    invoke-static {v1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 7
    throw v1
.end method
