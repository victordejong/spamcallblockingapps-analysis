.class public final Lp3/a/n1/m1$o;
.super Lp3/a/r0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/m1$n;

.field public final b:Lp3/a/r0;

.field public final synthetic c:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$n;Lp3/a/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    invoke-direct {p0}, Lp3/a/r0$d;-><init>()V

    const-string p1, "helperImpl"

    .line 2
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/m1$o;->a:Lp3/a/n1/m1$n;

    const-string p1, "resolver"

    .line 3
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/n1/m1$o;->b:Lp3/a/r0;

    return-void
.end method

.method public static c(Lp3/a/n1/m1$o;Lp3/a/g1;)V
    .locals 11

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lp3/a/n1/m1;->g0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 3
    iget-object v3, v3, Lp3/a/n1/m1;->a:Lp3/a/e0;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[{0}] Failed to resolve name. status={1}"

    .line 4
    invoke-virtual {v0, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 6
    iget-object v0, v0, Lp3/a/n1/m1;->S:Lp3/a/n1/m1$p;

    .line 7
    iget-object v1, v0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 8
    sget-object v2, Lp3/a/n1/m1;->m0:Lp3/a/c0;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lp3/a/n1/m1$p;->j(Lp3/a/c0;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 11
    iget-object v1, v0, Lp3/a/n1/m1;->T:Lp3/a/n1/m1$q;

    .line 12
    sget-object v2, Lp3/a/n1/m1$q;->c:Lp3/a/n1/m1$q;

    if-eq v1, v2, :cond_1

    .line 13
    iget-object v0, v0, Lp3/a/n1/m1;->Q:Lp3/a/e;

    .line 14
    sget-object v1, Lp3/a/e$a;->c:Lp3/a/e$a;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const-string v6, "Failed to resolve name: {0}"

    invoke-virtual {v0, v1, v6, v5}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 16
    iput-object v2, v0, Lp3/a/n1/m1;->T:Lp3/a/n1/m1$q;

    .line 17
    :cond_1
    iget-object v0, p0, Lp3/a/n1/m1$o;->a:Lp3/a/n1/m1$n;

    iget-object v1, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 18
    iget-object v1, v1, Lp3/a/n1/m1;->A:Lp3/a/n1/m1$n;

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, v0, Lp3/a/n1/m1$n;->a:Lp3/a/n1/k$b;

    .line 20
    iget-object v0, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    .line 21
    invoke-virtual {v0, p1}, Lp3/a/i0;->a(Lp3/a/g1;)V

    .line 22
    iget-object p1, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 23
    iget-object v0, p1, Lp3/a/n1/m1;->c0:Lp3/a/k1$c;

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, v0, Lp3/a/k1$c;->a:Lp3/a/k1$b;

    iget-boolean v1, v0, Lp3/a/k1$b;->c:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lp3/a/k1$b;->b:Z

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    iget-object v0, p1, Lp3/a/n1/m1;->d0:Lp3/a/n1/l;

    if-nez v0, :cond_5

    .line 26
    iget-object v0, p1, Lp3/a/n1/m1;->v:Lp3/a/n1/l$a;

    .line 27
    check-cast v0, Lp3/a/n1/g0$a;

    .line 28
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lp3/a/n1/g0;

    invoke-direct {v0}, Lp3/a/n1/g0;-><init>()V

    .line 30
    iput-object v0, p1, Lp3/a/n1/m1;->d0:Lp3/a/n1/l;

    .line 31
    :cond_5
    iget-object p1, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 32
    iget-object p1, p1, Lp3/a/n1/m1;->d0:Lp3/a/n1/l;

    .line 33
    check-cast p1, Lp3/a/n1/g0;

    invoke-virtual {p1}, Lp3/a/n1/g0;->a()J

    move-result-wide v7

    .line 34
    iget-object p1, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 35
    iget-object p1, p1, Lp3/a/n1/m1;->Q:Lp3/a/e;

    .line 36
    sget-object v0, Lp3/a/e$a;->a:Lp3/a/e$a;

    new-array v1, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Scheduling DNS resolution backoff for {0} ns"

    .line 38
    invoke-virtual {p1, v0, v2, v1}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object p0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    iget-object v5, p0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v6, Lp3/a/n1/m1$i;

    invoke-direct {v6, p0}, Lp3/a/n1/m1$i;-><init>(Lp3/a/n1/m1;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    iget-object p1, p0, Lp3/a/n1/m1;->h:Lp3/a/n1/v;

    .line 41
    invoke-interface {p1}, Lp3/a/n1/v;->Z()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    .line 42
    invoke-virtual/range {v5 .. v10}, Lp3/a/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lp3/a/k1$c;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lp3/a/n1/m1;->c0:Lp3/a/k1$c;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/m1$o$a;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/m1$o$a;-><init>(Lp3/a/n1/m1$o;Lp3/a/g1;)V

    .line 3
    iget-object p1, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

.method public b(Lp3/a/r0$e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/m1$o$b;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/m1$o$b;-><init>(Lp3/a/n1/m1$o;Lp3/a/r0$e;)V

    .line 2
    iget-object p1, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method
