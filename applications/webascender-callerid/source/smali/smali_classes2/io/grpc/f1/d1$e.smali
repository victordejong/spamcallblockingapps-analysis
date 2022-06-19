.class final Lio/grpc/f1/d1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/p$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$e;-><init>(Lio/grpc/f1/d1;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/q0;Lio/grpc/r;)Lio/grpc/f1/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r0<",
            "TReqT;*>;",
            "Lio/grpc/d;",
            "Lio/grpc/q0;",
            "Lio/grpc/r;",
            ")",
            "Lio/grpc/f1/q;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->o(Lio/grpc/f1/d1;)Z

    move-result v0

    const-string v1, "retry should be enabled"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->p(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$q;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/f1/d1$q;->b:Lio/grpc/f1/f1;

    invoke-virtual {v0}, Lio/grpc/f1/f1;->d()Lio/grpc/f1/w1$x;

    move-result-object v6

    .line 3
    new-instance v0, Lio/grpc/f1/d1$e$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/grpc/f1/d1$e$b;-><init>(Lio/grpc/f1/d1$e;Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;Lio/grpc/f1/w1$x;Lio/grpc/r;)V

    return-object v0
.end method

.method public b(Lio/grpc/l0$f;)Lio/grpc/f1/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->l(Lio/grpc/f1/d1;)Lio/grpc/l0$i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {v1}, Lio/grpc/f1/d1;->m(Lio/grpc/f1/d1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {p1}, Lio/grpc/f1/d1;->n(Lio/grpc/f1/d1;)Lio/grpc/f1/z;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    iget-object p1, p1, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v0, Lio/grpc/f1/d1$e$a;

    invoke-direct {v0, p0}, Lio/grpc/f1/d1$e$a;-><init>(Lio/grpc/f1/d1$e;)V

    invoke-virtual {p1, v0}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {p1}, Lio/grpc/f1/d1;->n(Lio/grpc/f1/d1;)Lio/grpc/f1/z;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lio/grpc/l0$i;->a(Lio/grpc/l0$f;)Lio/grpc/l0$e;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/grpc/l0$f;->a()Lio/grpc/d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/d;->j()Z

    move-result p1

    .line 8
    invoke-static {v0, p1}, Lio/grpc/f1/o0;->g(Lio/grpc/l0$e;Z)Lio/grpc/f1/s;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 9
    :cond_2
    iget-object p1, p0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-static {p1}, Lio/grpc/f1/d1;->n(Lio/grpc/f1/d1;)Lio/grpc/f1/z;

    move-result-object p1

    return-object p1
.end method
