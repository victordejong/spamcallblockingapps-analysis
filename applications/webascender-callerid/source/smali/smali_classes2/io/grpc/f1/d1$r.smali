.class final Lio/grpc/f1/d1$r;
.super Lio/grpc/f1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "r"
.end annotation


# instance fields
.field final a:Lio/grpc/l0$b;

.field final b:Lio/grpc/f0;

.field final c:Lio/grpc/f1/n;

.field final d:Lio/grpc/f1/o;

.field e:Lio/grpc/f1/v0;

.field f:Z

.field g:Z

.field h:Lio/grpc/d1$c;

.field final synthetic i:Lio/grpc/f1/d1;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;Lio/grpc/l0$b;Lio/grpc/f1/d1$k;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-direct {p0}, Lio/grpc/f1/e;-><init>()V

    const-string v0, "args"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lio/grpc/l0$b;

    iput-object v0, p0, Lio/grpc/f1/d1$r;->a:Lio/grpc/l0$b;

    const-string v0, "helper"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/grpc/f1/d1;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    invoke-static {v0, p3}, Lio/grpc/f0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/f0;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/f1/d1$r;->b:Lio/grpc/f0;

    .line 5
    new-instance p3, Lio/grpc/f1/o;

    .line 6
    invoke-static {p1}, Lio/grpc/f1/d1;->L(Lio/grpc/f1/d1;)I

    move-result v3

    invoke-static {p1}, Lio/grpc/f1/d1;->K(Lio/grpc/f1/d1;)Lio/grpc/f1/h2;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/h2;->a()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subchannel for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Lio/grpc/l0$b;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/f1/o;-><init>(Lio/grpc/f0;IJLjava/lang/String;)V

    iput-object p3, p0, Lio/grpc/f1/d1$r;->d:Lio/grpc/f1/o;

    .line 8
    new-instance p2, Lio/grpc/f1/n;

    invoke-static {p1}, Lio/grpc/f1/d1;->K(Lio/grpc/f1/d1;)Lio/grpc/f1/h2;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/grpc/f1/n;-><init>(Lio/grpc/f1/o;Lio/grpc/f1/h2;)V

    iput-object p2, p0, Lio/grpc/f1/d1$r;->c:Lio/grpc/f1/n;

    return-void
.end method

.method static synthetic i(Lio/grpc/f1/d1$r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/d1$r;->j()V

    return-void
.end method

.method private j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lio/grpc/f1/d1$r;->g:Z

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/grpc/f1/d1$r;->g:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->U(Lio/grpc/f1/d1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/d1$r;->h:Lio/grpc/d1$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/grpc/f1/d1$r;->h:Lio/grpc/d1$c;

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    iput-boolean v1, p0, Lio/grpc/f1/d1$r;->g:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->U(Lio/grpc/f1/d1;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v1, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v2, Lio/grpc/f1/a1;

    new-instance v0, Lio/grpc/f1/d1$r$c;

    invoke-direct {v0, p0}, Lio/grpc/f1/d1$r$c;-><init>(Lio/grpc/f1/d1$r;)V

    invoke-direct {v2, v0}, Lio/grpc/f1/a1;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 11
    invoke-static {v0}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 12
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/d1$r;->h:Lio/grpc/d1$c;

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    sget-object v1, Lio/grpc/f1/d1;->k0:Lio/grpc/b1;

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0;->b(Lio/grpc/b1;)V

    return-void
.end method

.method private k(Lio/grpc/l0$j;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lio/grpc/f1/d1$r;->f:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "already started"

    invoke-static {v2, v4}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v2, v0, Lio/grpc/f1/d1$r;->g:Z

    xor-int/2addr v2, v3

    const-string v4, "already shutdown"

    invoke-static {v2, v4}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iput-boolean v3, v0, Lio/grpc/f1/d1$r;->f:Z

    .line 4
    iget-object v2, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v2}, Lio/grpc/f1/d1;->U(Lio/grpc/f1/d1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v2, v2, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v3, Lio/grpc/f1/d1$r$a;

    invoke-direct {v3, v0, v1}, Lio/grpc/f1/d1$r$a;-><init>(Lio/grpc/f1/d1$r;Lio/grpc/l0$j;)V

    invoke-virtual {v2, v3}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance v2, Lio/grpc/f1/v0;

    iget-object v3, v0, Lio/grpc/f1/d1$r;->a:Lio/grpc/l0$b;

    .line 7
    invoke-virtual {v3}, Lio/grpc/l0$b;->a()Ljava/util/List;

    move-result-object v5

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 8
    invoke-virtual {v3}, Lio/grpc/f1/d1;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 9
    invoke-static {v3}, Lio/grpc/f1/d1;->R(Lio/grpc/f1/d1;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 10
    invoke-static {v3}, Lio/grpc/f1/d1;->S(Lio/grpc/f1/d1;)Lio/grpc/f1/j$a;

    move-result-object v8

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 11
    invoke-static {v3}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v9

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 12
    invoke-static {v3}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 13
    invoke-static {v3}, Lio/grpc/f1/d1;->T(Lio/grpc/f1/d1;)Lcom/google/common/base/s;

    move-result-object v11

    iget-object v3, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v12, v3, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v13, Lio/grpc/f1/d1$r$b;

    invoke-direct {v13, v0, v1}, Lio/grpc/f1/d1$r$b;-><init>(Lio/grpc/f1/d1$r;Lio/grpc/l0$j;)V

    .line 14
    invoke-static {v3}, Lio/grpc/f1/d1;->N(Lio/grpc/f1/d1;)Lio/grpc/b0;

    move-result-object v14

    iget-object v1, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 15
    invoke-static {v1}, Lio/grpc/f1/d1;->M(Lio/grpc/f1/d1;)Lio/grpc/f1/m$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/f1/m$a;->a()Lio/grpc/f1/m;

    move-result-object v15

    iget-object v1, v0, Lio/grpc/f1/d1$r;->d:Lio/grpc/f1/o;

    iget-object v3, v0, Lio/grpc/f1/d1$r;->b:Lio/grpc/f0;

    iget-object v4, v0, Lio/grpc/f1/d1$r;->c:Lio/grpc/f1/n;

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lio/grpc/f1/v0;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/f1/j$a;Lio/grpc/f1/t;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/s;Lio/grpc/d1;Lio/grpc/f1/v0$j;Lio/grpc/b0;Lio/grpc/f1/m;Lio/grpc/f1/o;Lio/grpc/f0;Lio/grpc/f;)V

    .line 16
    iget-object v1, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v1}, Lio/grpc/f1/d1;->H(Lio/grpc/f1/d1;)Lio/grpc/f1/o;

    move-result-object v1

    new-instance v3, Lio/grpc/c0$a;

    invoke-direct {v3}, Lio/grpc/c0$a;-><init>()V

    const-string v4, "Child Subchannel started"

    .line 17
    invoke-virtual {v3, v4}, Lio/grpc/c0$a;->b(Ljava/lang/String;)Lio/grpc/c0$a;

    sget-object v4, Lio/grpc/c0$b;->CT_INFO:Lio/grpc/c0$b;

    .line 18
    invoke-virtual {v3, v4}, Lio/grpc/c0$a;->c(Lio/grpc/c0$b;)Lio/grpc/c0$a;

    iget-object v4, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    .line 19
    invoke-static {v4}, Lio/grpc/f1/d1;->K(Lio/grpc/f1/d1;)Lio/grpc/f1/h2;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/f1/h2;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/c0$a;->e(J)Lio/grpc/c0$a;

    .line 20
    invoke-virtual {v3, v2}, Lio/grpc/c0$a;->d(Lio/grpc/j0;)Lio/grpc/c0$a;

    .line 21
    invoke-virtual {v3}, Lio/grpc/c0$a;->a()Lio/grpc/c0;

    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Lio/grpc/f1/o;->e(Lio/grpc/c0;)V

    .line 23
    iput-object v2, v0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    .line 24
    iget-object v1, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v1, v1, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v3, Lio/grpc/f1/d1$r$d;

    invoke-direct {v3, v0, v2}, Lio/grpc/f1/d1$r$d;-><init>(Lio/grpc/f1/d1$r;Lio/grpc/f1/v0;)V

    invoke-virtual {v1, v3}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    const-string v1, "Subchannel.getAllAddresses()"

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->I(Lio/grpc/f1/d1;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/grpc/f1/d1$r;->f:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    invoke-virtual {v0}, Lio/grpc/f1/v0;->H()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/grpc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->a:Lio/grpc/l0$b;

    invoke-virtual {v0}, Lio/grpc/l0$b;->b()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/f1/d1$r;->f:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    const-string v1, "Subchannel.requestConnection()"

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->I(Lio/grpc/f1/d1;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/grpc/f1/d1$r;->f:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    invoke-virtual {v0}, Lio/grpc/f1/v0;->a()Lio/grpc/f1/s;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    const-string v1, "Subchannel.shutdown()"

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->I(Lio/grpc/f1/d1;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/d1$r$e;

    invoke-direct {v1, p0}, Lio/grpc/f1/d1$r$e;-><init>(Lio/grpc/f1/d1$r;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Lio/grpc/l0$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$r;->k(Lio/grpc/l0$j;)V

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    invoke-virtual {v0, p1}, Lio/grpc/f1/v0;->P(Ljava/util/List;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r;->b:Lio/grpc/f0;

    invoke-virtual {v0}, Lio/grpc/f0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
