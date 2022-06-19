.class public final Ln3/w/b/a$a;
.super Ln3/w/b/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/w/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/w/b/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/concurrent/CountDownLatch;

.field public k:Z

.field public final synthetic l:Ln3/w/b/a;


# direct methods
.method public constructor <init>(Ln3/w/b/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/w/b/a$a;->l:Ln3/w/b/a;

    invoke-direct {p0}, Ln3/w/b/c;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/w/b/a$a;->l:Ln3/w/b/a;

    invoke-virtual {p1}, Ln3/w/b/a;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/w/b/a$a;->l:Ln3/w/b/a;

    invoke-virtual {v0, p0, p1}, Ln3/w/b/a;->dispatchOnCancelled(Ln3/w/b/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/w/b/a$a;->l:Ln3/w/b/a;

    invoke-virtual {v0, p0, p1}, Ln3/w/b/a;->dispatchOnLoadComplete(Ln3/w/b/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/w/b/a$a;->k:Z

    .line 2
    iget-object v0, p0, Ln3/w/b/a$a;->l:Ln3/w/b/a;

    invoke-virtual {v0}, Ln3/w/b/a;->executePendingTask()V

    return-void
.end method
