.class public Le/b/a/r$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Le/b/a/p<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/b/a/r;


# direct methods
.method public constructor <init>(Le/b/a/r;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/b/a/p<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/b/a/r$a;->a:Le/b/a/r;

    .line 2
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/b/a/r$a;->a:Le/b/a/r;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/p;

    .line 3
    invoke-virtual {v0, v1}, Le/b/a/r;->c(Le/b/a/p;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    iget-object v1, p0, Le/b/a/r$a;->a:Le/b/a/r;

    new-instance v2, Le/b/a/p;

    invoke-direct {v2, v0}, Le/b/a/p;-><init>(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v1, v2}, Le/b/a/r;->c(Le/b/a/p;)V

    :goto_1
    return-void
.end method
