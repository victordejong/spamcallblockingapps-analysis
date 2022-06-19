.class public Ln3/e/b/j1/t1/b/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/j1/t1/b/b$c;-><init>(Landroid/os/Handler;JLjava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/h/a/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:Ln3/e/b/j1/t1/b/b$c;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/b/b$c;Landroid/os/Handler;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/b/b$c$a;->c:Ln3/e/b/j1/t1/b/b$c;

    iput-object p2, p0, Ln3/e/b/j1/t1/b/b$c$a;->a:Landroid/os/Handler;

    iput-object p3, p0, Ln3/e/b/j1/t1/b/b$c$a;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/h/a/b<",
            "TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/e/b/j1/t1/b/b$c$a$a;

    invoke-direct {v0, p0}, Ln3/e/b/j1/t1/b/b$c$a$a;-><init>(Ln3/e/b/j1/t1/b/b$c$a;)V

    .line 2
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    iget-object v2, p1, Ln3/h/a/b;->c:Ln3/h/a/f;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/e/b/j1/t1/b/b$c$a;->c:Ln3/e/b/j1/t1/b/b$c;

    iget-object v0, v0, Ln3/e/b/j1/t1/b/b$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HandlerScheduledFuture-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln3/e/b/j1/t1/b/b$c$a;->b:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
