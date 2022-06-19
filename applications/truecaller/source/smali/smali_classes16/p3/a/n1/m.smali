.class public final Lp3/a/n1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/m$a;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/v;

.field public final b:Lp3/a/b;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lp3/a/n1/v;Lp3/a/b;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/m;->a:Lp3/a/n1/v;

    .line 3
    iput-object p2, p0, Lp3/a/n1/m;->b:Lp3/a/b;

    const-string p1, "appExecutor"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/n1/m;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public Z()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m;->a:Lp3/a/n1/v;

    invoke-interface {v0}, Lp3/a/n1/v;->Z()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m;->a:Lp3/a/n1/v;

    invoke-interface {v0}, Lp3/a/n1/v;->close()V

    return-void
.end method

.method public u0(Ljava/net/SocketAddress;Lp3/a/n1/v$a;Lp3/a/e;)Lp3/a/n1/x;
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/m$a;

    iget-object v1, p0, Lp3/a/n1/m;->a:Lp3/a/n1/v;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lp3/a/n1/v;->u0(Ljava/net/SocketAddress;Lp3/a/n1/v$a;Lp3/a/e;)Lp3/a/n1/x;

    move-result-object p1

    .line 3
    iget-object p2, p2, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lp3/a/n1/m$a;-><init>(Lp3/a/n1/m;Lp3/a/n1/x;Ljava/lang/String;)V

    return-object v0
.end method
