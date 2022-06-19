.class public final Lp3/a/n1/z1;
.super Lp3/a/l0;
.source "SourceFile"

# interfaces
.implements Lp3/a/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/l0;",
        "Lp3/a/d0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/z1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lp3/a/e0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TRequestT;TResponseT;>;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/f<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lp3/a/n1/q;

    .line 2
    iget-object v0, p2, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lp3/a/n1/q;-><init>(Lp3/a/p0;Ljava/util/concurrent/Executor;Lp3/a/c;Lp3/a/n1/q$e;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/n1/n;)V

    return-object v7
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const/4 v0, 0x0

    .line 2
    throw v0
.end method
