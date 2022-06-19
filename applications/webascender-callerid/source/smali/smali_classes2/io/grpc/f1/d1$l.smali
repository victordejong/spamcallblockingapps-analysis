.class final Lio/grpc/f1/d1$l;
.super Lio/grpc/s0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "l"
.end annotation


# instance fields
.field final a:Lio/grpc/f1/d1$k;

.field final b:Lio/grpc/s0;

.field final synthetic c:Lio/grpc/f1/d1;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$k;Lio/grpc/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-direct {p0}, Lio/grpc/s0$f;-><init>()V

    const-string p1, "helperImpl"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/f1/d1$k;

    iput-object p2, p0, Lio/grpc/f1/d1$l;->a:Lio/grpc/f1/d1$k;

    const-string p1, "resolver"

    .line 3
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/s0;

    iput-object p3, p0, Lio/grpc/f1/d1$l;->b:Lio/grpc/s0;

    return-void
.end method

.method static synthetic d(Lio/grpc/f1/d1$l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/d1$l;->g()V

    return-void
.end method

.method static synthetic e(Lio/grpc/f1/d1$l;Lio/grpc/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$l;->f(Lio/grpc/b1;)V

    return-void
.end method

.method private f(Lio/grpc/b1;)V
    .locals 6

    .line 1
    sget-object v0, Lio/grpc/f1/d1;->h0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    .line 2
    invoke-virtual {v3}, Lio/grpc/f1/d1;->e()Lio/grpc/f0;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[{0}] Failed to resolve name. status={1}"

    .line 3
    invoke-virtual {v0, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->W(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$n;

    move-result-object v0

    sget-object v1, Lio/grpc/f1/d1$n;->ERROR:Lio/grpc/f1/d1$n;

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->y(Lio/grpc/f1/d1;)Lio/grpc/f;

    move-result-object v0

    sget-object v2, Lio/grpc/f$a;->WARNING:Lio/grpc/f$a;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v4, "Failed to resolve name: {0}"

    invoke-virtual {v0, v2, v4, v3}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->X(Lio/grpc/f1/d1;Lio/grpc/f1/d1$n;)Lio/grpc/f1/d1$n;

    .line 7
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$l;->a:Lio/grpc/f1/d1$k;

    iget-object v1, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v1}, Lio/grpc/f1/d1;->G(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$k;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/d1$l;->a:Lio/grpc/f1/d1$k;

    iget-object v0, v0, Lio/grpc/f1/d1$k;->a:Lio/grpc/f1/i$b;

    invoke-virtual {v0, p1}, Lio/grpc/f1/i$b;->b(Lio/grpc/b1;)V

    .line 9
    invoke-direct {p0}, Lio/grpc/f1/d1$l;->g()V

    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->i(Lio/grpc/f1/d1;)Lio/grpc/d1$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->i(Lio/grpc/f1/d1;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->Y(Lio/grpc/f1/d1;)Lio/grpc/f1/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->S(Lio/grpc/f1/d1;)Lio/grpc/f1/j$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/f1/j$a;->get()Lio/grpc/f1/j;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->Z(Lio/grpc/f1/d1;Lio/grpc/f1/j;)Lio/grpc/f1/j;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->Y(Lio/grpc/f1/d1;)Lio/grpc/f1/j;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/j;->a()J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->y(Lio/grpc/f1/d1;)Lio/grpc/f;

    move-result-object v0

    sget-object v1, Lio/grpc/f$a;->DEBUG:Lio/grpc/f$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "Scheduling DNS resolution backoff for {0} ns"

    .line 7
    invoke-virtual {v0, v1, v5, v2}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    iget-object v1, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v2, Lio/grpc/f1/d1$f;

    invoke-direct {v2, v0}, Lio/grpc/f1/d1$f;-><init>(Lio/grpc/f1/d1;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-static {v0}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v6

    invoke-interface {v6}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lio/grpc/f1/d1;->j(Lio/grpc/f1/d1;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/b1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/d1$l$a;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/d1$l$a;-><init>(Lio/grpc/f1/d1$l;Lio/grpc/b1;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lio/grpc/s0$h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$l;->c:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/d1$l$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/d1$l$b;-><init>(Lio/grpc/f1/d1$l;Lio/grpc/s0$h;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
