.class public Lp3/a/n1/r0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/n2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/n1/n2$c<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 2
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "grpc-default-executor-%d"

    .line 1
    invoke-static {v1, v0}, Lp3/a/n1/r0;->e(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "grpc-default-executor"

    return-object v0
.end method
