.class final Lio/grpc/f1/d1$e$b;
.super Lio/grpc/f1/w1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$e;->a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/q0;Lio/grpc/r;)Lio/grpc/f1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/f1/w1<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic A:Lio/grpc/r0;

.field final synthetic B:Lio/grpc/d;

.field final synthetic C:Lio/grpc/r;

.field final synthetic D:Lio/grpc/f1/d1$e;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$e;Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;Lio/grpc/f1/w1$x;Lio/grpc/r;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p1

    move-object/from16 v1, p4

    .line 1
    iput-object v0, v13, Lio/grpc/f1/d1$e$b;->D:Lio/grpc/f1/d1$e;

    move-object/from16 v2, p2

    iput-object v2, v13, Lio/grpc/f1/d1$e$b;->A:Lio/grpc/r0;

    iput-object v1, v13, Lio/grpc/f1/d1$e$b;->B:Lio/grpc/d;

    move-object/from16 v3, p6

    iput-object v3, v13, Lio/grpc/f1/d1$e$b;->C:Lio/grpc/r;

    .line 2
    iget-object v3, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    .line 3
    invoke-static {v3}, Lio/grpc/f1/d1;->r(Lio/grpc/f1/d1;)Lio/grpc/f1/w1$q;

    move-result-object v3

    iget-object v4, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    .line 4
    invoke-static {v4}, Lio/grpc/f1/d1;->s(Lio/grpc/f1/d1;)J

    move-result-wide v4

    iget-object v6, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    .line 5
    invoke-static {v6}, Lio/grpc/f1/d1;->t(Lio/grpc/f1/d1;)J

    move-result-wide v6

    iget-object v8, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    .line 6
    invoke-static {v8, v1}, Lio/grpc/f1/d1;->u(Lio/grpc/f1/d1;Lio/grpc/d;)Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v0, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    .line 7
    invoke-static {v0}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    sget-object v0, Lio/grpc/f1/a2;->d:Lio/grpc/d$a;

    .line 8
    invoke-virtual {v1, v0}, Lio/grpc/d;->h(Lio/grpc/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/grpc/f1/x1$a;

    sget-object v0, Lio/grpc/f1/a2;->e:Lio/grpc/d$a;

    .line 9
    invoke-virtual {v1, v0}, Lio/grpc/d;->h(Lio/grpc/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/grpc/f1/q0$a;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p5

    .line 10
    invoke-direct/range {v0 .. v12}, Lio/grpc/f1/w1;-><init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/f1/w1$q;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f1/x1$a;Lio/grpc/f1/q0$a;Lio/grpc/f1/w1$x;)V

    return-void
.end method


# virtual methods
.method c0(Lio/grpc/k$a;Lio/grpc/q0;)Lio/grpc/f1/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e$b;->B:Lio/grpc/d;

    invoke-virtual {v0, p1}, Lio/grpc/d;->q(Lio/grpc/k$a;)Lio/grpc/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$e$b;->D:Lio/grpc/f1/d1$e;

    new-instance v1, Lio/grpc/f1/q1;

    iget-object v2, p0, Lio/grpc/f1/d1$e$b;->A:Lio/grpc/r0;

    invoke-direct {v1, v2, p2, p1}, Lio/grpc/f1/q1;-><init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/f1/d1$e;->b(Lio/grpc/l0$f;)Lio/grpc/f1/s;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/grpc/f1/d1$e$b;->C:Lio/grpc/r;

    invoke-virtual {v1}, Lio/grpc/r;->b()Lio/grpc/r;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lio/grpc/f1/d1$e$b;->A:Lio/grpc/r0;

    invoke-interface {v0, v2, p2, p1}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lio/grpc/f1/d1$e$b;->C:Lio/grpc/r;

    invoke-virtual {p2, v1}, Lio/grpc/r;->j(Lio/grpc/r;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/f1/d1$e$b;->C:Lio/grpc/r;

    invoke-virtual {p2, v1}, Lio/grpc/r;->j(Lio/grpc/r;)V

    throw p1
.end method

.method d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e$b;->D:Lio/grpc/f1/d1$e;

    iget-object v0, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->w(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/f1/d1$s;->b(Lio/grpc/f1/w1;)V

    return-void
.end method

.method e0()Lio/grpc/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e$b;->D:Lio/grpc/f1/d1$e;

    iget-object v0, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->w(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/f1/d1$s;->a(Lio/grpc/f1/w1;)Lio/grpc/b1;

    move-result-object v0

    return-object v0
.end method
