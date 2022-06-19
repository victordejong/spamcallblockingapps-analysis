.class public Lp3/a/n1/a1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/x;

.field public b:Z

.field public final synthetic c:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;Lp3/a/n1/x;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lp3/a/n1/a1$g;->b:Z

    .line 3
    iput-object p2, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    .line 3
    sget-object v1, Lp3/a/e$a;->b:Lp3/a/e$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    .line 4
    invoke-interface {v4}, Lp3/a/d0;->b()Lp3/a/e0;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 5
    invoke-virtual {v3, p1}, Lp3/a/n1/a1;->k(Lp3/a/g1;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} SHUTDOWN with {1}"

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-boolean v4, p0, Lp3/a/n1/a1$g;->b:Z

    .line 8
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 9
    iget-object v0, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    .line 10
    new-instance v1, Lp3/a/n1/a1$g$b;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/a1$g$b;-><init>(Lp3/a/n1/a1$g;Lp3/a/g1;)V

    .line 11
    iget-object p1, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    .line 3
    sget-object v1, Lp3/a/e$a;->b:Lp3/a/e$a;

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 5
    iget-object v0, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    .line 6
    new-instance v1, Lp3/a/n1/a1$g$a;

    invoke-direct {v1, p0}, Lp3/a/n1/a1$g$a;-><init>(Lp3/a/n1/a1$g;)V

    .line 7
    iget-object v2, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/a1$g;->b:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 3
    iget-object v0, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    .line 4
    sget-object v1, Lp3/a/e$a;->b:Lp3/a/e$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    invoke-interface {v3}, Lp3/a/d0;->b()Lp3/a/e0;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} Terminated"

    invoke-virtual {v0, v1, v3, v2}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 6
    iget-object v0, v0, Lp3/a/n1/a1;->h:Lp3/a/a0;

    .line 7
    iget-object v1, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    .line 8
    iget-object v0, v0, Lp3/a/a0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lp3/a/a0;->b(Ljava/util/Map;Lp3/a/d0;)V

    .line 9
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    iget-object v1, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    .line 10
    iget-object v2, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v3, Lp3/a/n1/f1;

    invoke-direct {v3, v0, v1, v4}, Lp3/a/n1/f1;-><init>(Lp3/a/n1/a1;Lp3/a/n1/x;Z)V

    .line 11
    iget-object v0, v2, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v3, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2}, Lp3/a/k1;->a()V

    .line 13
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 14
    iget-object v0, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    .line 15
    new-instance v2, Lp3/a/n1/a1$g$c;

    invoke-direct {v2, p0}, Lp3/a/n1/a1$g$c;-><init>(Lp3/a/n1/a1$g;)V

    .line 16
    iget-object v3, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    invoke-static {v2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    iget-object v1, p0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    .line 2
    iget-object v2, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v3, Lp3/a/n1/f1;

    invoke-direct {v3, v0, v1, p1}, Lp3/a/n1/f1;-><init>(Lp3/a/n1/a1;Lp3/a/n1/x;Z)V

    .line 3
    iget-object p1, v2, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v0, "runnable is null"

    invoke-static {v3, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Lp3/a/k1;->a()V

    return-void
.end method
