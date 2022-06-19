.class final Lio/grpc/f1/w1$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "v"
.end annotation


# instance fields
.field final a:Lio/grpc/f1/w1$w;

.field final synthetic b:Lio/grpc/f1/w1;


# direct methods
.method constructor <init>(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    return-void
.end method

.method private f(Lio/grpc/b1;Lio/grpc/q0;)Lio/grpc/f1/w1$t;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/x1;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v1}, Lio/grpc/f1/w1;->S(Lio/grpc/f1/w1;)Lio/grpc/f1/q0;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/f1/q0;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    iget-object v1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v1}, Lio/grpc/f1/w1;->x(Lio/grpc/f1/w1;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lio/grpc/f1/w1$t;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lio/grpc/f1/w1$t;-><init>(ZZJLjava/lang/Integer;)V

    return-object p1

    .line 5
    :cond_0
    sget-object v1, Lio/grpc/f1/w1;->x:Lio/grpc/q0$f;

    invoke-virtual {p2, v1}, Lio/grpc/q0;->f(Lio/grpc/q0$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 6
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, -0x1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v2}, Lio/grpc/f1/w1;->Q(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$x;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->Q(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$x;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/f1/w1$x;->b()Z

    move-result p1

    xor-int/2addr p1, v4

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v2}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v2

    iget v2, v2, Lio/grpc/f1/x1;->a:I

    iget-object v5, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    iget v5, v5, Lio/grpc/f1/w1$w;->d:I

    add-int/2addr v5, v4

    if-le v2, v5, :cond_5

    if-nez p1, :cond_5

    if-nez p2, :cond_4

    if-eqz v0, :cond_5

    .line 12
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->D(Lio/grpc/f1/w1;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {}, Lio/grpc/f1/w1;->H()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double v2, v2, v5

    double-to-long v2, v2

    .line 13
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    .line 14
    invoke-static {p1}, Lio/grpc/f1/w1;->D(Lio/grpc/f1/w1;)J

    move-result-wide v5

    long-to-double v5, v5

    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v0

    iget-wide v7, v0, Lio/grpc/f1/x1;->d:D

    mul-double v5, v5, v7

    double-to-long v5, v5

    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    .line 15
    invoke-static {v0}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v0

    iget-wide v7, v0, Lio/grpc/f1/x1;->c:J

    .line 16
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lio/grpc/f1/w1;->E(Lio/grpc/f1/w1;J)J

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_5

    .line 18
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 19
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v0

    iget-wide v5, v0, Lio/grpc/f1/x1;->b:J

    invoke-static {p1, v5, v6}, Lio/grpc/f1/w1;->E(Lio/grpc/f1/w1;J)J

    :goto_2
    move-wide v9, v2

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v4, 0x0

    move-wide v9, v4

    const/4 v7, 0x0

    .line 20
    :goto_3
    new-instance p1, Lio/grpc/f1/w1$t;

    const/4 v8, 0x0

    .line 21
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->x(Lio/grpc/f1/w1;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v11, p2

    goto :goto_4

    :cond_6
    move-object v11, v1

    :goto_4
    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lio/grpc/f1/w1$t;-><init>(ZZJLjava/lang/Integer;)V

    return-object p1
.end method


# virtual methods
.method public a(Lio/grpc/f1/g2$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v1, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/g2;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method

.method public b(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/f1/w1$v;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method

.method public c(Lio/grpc/q0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    iget-object v1, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-static {v0, v1}, Lio/grpc/f1/w1;->t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v1, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/r;->c(Lio/grpc/q0;)V

    .line 4
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->Q(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->Q(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$x;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/f1/w1$x;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/w1$u;->c:Ljava/util/Collection;

    iget-object v1, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/g2;->d()V

    :cond_0
    return-void
.end method

.method public e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->O(Lio/grpc/f1/w1;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v1}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-virtual {v2, v3}, Lio/grpc/f1/w1$u;->g(Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/f1/w1;->r(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Lio/grpc/f1/w1$u;

    .line 3
    iget-object v1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v1}, Lio/grpc/f1/w1;->v(Lio/grpc/f1/w1;)Lio/grpc/f1/u0;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/f1/u0;->a(Ljava/lang/Object;)Lio/grpc/f1/u0;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    iget-object v0, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    iget-boolean v1, v0, Lio/grpc/f1/w1$w;->c:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2, v0}, Lio/grpc/f1/w1;->t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    .line 7
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object p2

    iget-object p2, p2, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    if-ne p2, v0, :cond_0

    .line 8
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lio/grpc/f1/r;->b(Lio/grpc/b1;Lio/grpc/q0;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-nez v0, :cond_d

    .line 10
    sget-object v0, Lio/grpc/f1/r$a;->REFUSED:Lio/grpc/f1/r$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    .line 11
    invoke-static {v0}, Lio/grpc/f1/w1;->w(Lio/grpc/f1/w1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    iget-object p2, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    iget p2, p2, Lio/grpc/f1/w1$w;->d:I

    invoke-static {p1, p2}, Lio/grpc/f1/w1;->C(Lio/grpc/f1/w1;I)Lio/grpc/f1/w1$w;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->x(Lio/grpc/f1/w1;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->O(Lio/grpc/f1/w1;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 15
    :try_start_1
    iget-object p3, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p3}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    iget-object v3, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-virtual {v0, v3, p1}, Lio/grpc/f1/w1$u;->f(Lio/grpc/f1/w1$w;Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object v0

    invoke-static {p3, v0}, Lio/grpc/f1/w1;->r(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Lio/grpc/f1/w1$u;

    .line 16
    iget-object p3, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p3}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    invoke-static {p3, v0}, Lio/grpc/f1/w1;->P(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    .line 17
    invoke-static {p3}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object p3

    iget-object p3, p3, Lio/grpc/f1/w1$u;->d:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne p3, v2, :cond_2

    const/4 v1, 0x1

    .line 18
    :cond_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 19
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2, p1}, Lio/grpc/f1/w1;->t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 21
    :cond_3
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object p2

    if-nez p2, :cond_4

    .line 22
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->A(Lio/grpc/f1/w1;)Lio/grpc/f1/x1$a;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/f1/x1$a;->get()Lio/grpc/f1/x1;

    move-result-object p3

    invoke-static {p2, p3}, Lio/grpc/f1/w1;->z(Lio/grpc/f1/w1;Lio/grpc/f1/x1;)Lio/grpc/f1/x1;

    .line 23
    :cond_4
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object p2

    iget p2, p2, Lio/grpc/f1/x1;->a:I

    if-ne p2, v2, :cond_5

    .line 24
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2, p1}, Lio/grpc/f1/w1;->t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    .line 25
    :cond_5
    :goto_0
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->q(Lio/grpc/f1/w1;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lio/grpc/f1/w1$v$a;

    invoke-direct {p3, p0, p1}, Lio/grpc/f1/w1$v$a;-><init>(Lio/grpc/f1/w1$v;Lio/grpc/f1/w1$w;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :cond_6
    sget-object v0, Lio/grpc/f1/r$a;->DROPPED:Lio/grpc/f1/r$a;

    if-ne p2, v0, :cond_7

    .line 27
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->x(Lio/grpc/f1/w1;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 28
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->B(Lio/grpc/f1/w1;)V

    goto :goto_1

    .line 29
    :cond_7
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->w(Lio/grpc/f1/w1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object p2

    if-nez p2, :cond_8

    .line 31
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->A(Lio/grpc/f1/w1;)Lio/grpc/f1/x1$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/x1$a;->get()Lio/grpc/f1/x1;

    move-result-object v0

    invoke-static {p2, v0}, Lio/grpc/f1/w1;->z(Lio/grpc/f1/w1;Lio/grpc/f1/x1;)Lio/grpc/f1/x1;

    .line 32
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;

    move-result-object v0

    iget-wide v0, v0, Lio/grpc/f1/x1;->b:J

    invoke-static {p2, v0, v1}, Lio/grpc/f1/w1;->E(Lio/grpc/f1/w1;J)J

    .line 33
    :cond_8
    invoke-direct {p0, p1, p3}, Lio/grpc/f1/w1$v;->f(Lio/grpc/b1;Lio/grpc/q0;)Lio/grpc/f1/w1$t;

    move-result-object p2

    .line 34
    iget-boolean v0, p2, Lio/grpc/f1/w1$t;->a:Z

    if-eqz v0, :cond_9

    .line 35
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->O(Lio/grpc/f1/w1;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    new-instance p3, Lio/grpc/f1/w1$r;

    invoke-static {p1}, Lio/grpc/f1/w1;->O(Lio/grpc/f1/w1;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, v1}, Lio/grpc/f1/w1$r;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lio/grpc/f1/w1;->F(Lio/grpc/f1/w1;Lio/grpc/f1/w1$r;)Lio/grpc/f1/w1$r;

    .line 37
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    iget-object p1, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p1}, Lio/grpc/f1/w1;->T(Lio/grpc/f1/w1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lio/grpc/f1/w1$v$b;

    invoke-direct {v0, p0}, Lio/grpc/f1/w1$v$b;-><init>(Lio/grpc/f1/w1$v;)V

    iget-wide v1, p2, Lio/grpc/f1/w1$t;->c:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/grpc/f1/w1$r;->c(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_1
    move-exception p1

    .line 39
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 40
    :cond_9
    iget-boolean v1, p2, Lio/grpc/f1/w1$t;->b:Z

    .line 41
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    iget-object p2, p2, Lio/grpc/f1/w1$t;->d:Ljava/lang/Integer;

    invoke-static {v0, p2}, Lio/grpc/f1/w1;->G(Lio/grpc/f1/w1;Ljava/lang/Integer;)V

    .line 42
    :cond_a
    :goto_1
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->x(Lio/grpc/f1/w1;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 43
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->O(Lio/grpc/f1/w1;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 44
    :try_start_5
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-virtual {v2, v3}, Lio/grpc/f1/w1$u;->e(Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object v2

    invoke-static {v0, v2}, Lio/grpc/f1/w1;->r(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Lio/grpc/f1/w1$u;

    if-nez v1, :cond_c

    .line 45
    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/f1/w1;->P(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {v0}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/w1$u;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    :cond_b
    monitor-exit p2

    return-void

    .line 47
    :cond_c
    monitor-exit p2

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 48
    :cond_d
    :goto_2
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    iget-object v0, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    invoke-static {p2, v0}, Lio/grpc/f1/w1;->t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    .line 49
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;

    move-result-object p2

    iget-object p2, p2, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, p0, Lio/grpc/f1/w1$v;->a:Lio/grpc/f1/w1$w;

    if-ne p2, v0, :cond_e

    .line 50
    iget-object p2, p0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    invoke-static {p2}, Lio/grpc/f1/w1;->u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lio/grpc/f1/r;->b(Lio/grpc/b1;Lio/grpc/q0;)V

    :cond_e
    return-void

    :catchall_3
    move-exception p1

    .line 51
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
