.class abstract Lg/f/a/b/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    new-instance v0, Lg/f/a/b/i/k;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/f/a/b/i/k;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
