.class final Lio/grpc/f1/m1;
.super Lio/grpc/o0;
.source "SourceFile"

# interfaces
.implements Lio/grpc/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/o0;",
        "Lio/grpc/e0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/grpc/f1/v0;

.field private final b:Lio/grpc/f0;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lio/grpc/f1/m;

.field private final g:Lio/grpc/f1/p$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f1/m1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/m1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lio/grpc/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/m1;->b:Lio/grpc/f0;

    return-object v0
.end method

.method public h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r0<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/grpc/f1/p;

    .line 2
    invoke-virtual {p2}, Lio/grpc/d;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/f1/m1;->d:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/grpc/d;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    move-object v2, v0

    iget-object v4, p0, Lio/grpc/f1/m1;->g:Lio/grpc/f1/p$f;

    iget-object v5, p0, Lio/grpc/f1/m1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/grpc/f1/m1;->f:Lio/grpc/f1/m;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/f1/p;-><init>(Lio/grpc/r0;Ljava/util/concurrent/Executor;Lio/grpc/d;Lio/grpc/f1/p$f;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f1/m;Z)V

    return-object v8
.end method

.method i()Lio/grpc/f1/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/m1;->a:Lio/grpc/f1/v0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/m1;->b:Lio/grpc/f0;

    .line 2
    invoke-virtual {v1}, Lio/grpc/f0;->d()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/h$b;->c(Ljava/lang/String;J)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/m1;->c:Ljava/lang/String;

    const-string v2, "authority"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
