.class final Li/c/b0/b/d0$b;
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
    name = "b"
.end annotation


# instance fields
.field final f:Ljava/lang/Runnable;

.field final g:Li/c/b0/b/d0$c;

.field volatile h:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Li/c/b0/b/d0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/b/d0$b;->f:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Li/c/b0/b/d0$b;->g:Li/c/b0/b/d0$c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/b/d0$b;->h:Z

    .line 2
    iget-object v0, p0, Li/c/b0/b/d0$b;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/b/d0$b;->h:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/b/d0$b;->h:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/b/d0$b;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {p0}, Li/c/b0/b/d0$b;->dispose()V

    .line 4
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 5
    throw v0

    :cond_0
    :goto_0
    return-void
.end method
