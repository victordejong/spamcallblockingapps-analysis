.class Lio/grpc/f1/d1$m;
.super Lio/grpc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    invoke-direct {p0}, Lio/grpc/e;-><init>()V

    const-string p1, "authority"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lio/grpc/f1/d1$m;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Ljava/lang/String;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/d1$m;-><init>(Lio/grpc/f1/d1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r0<",
            "TReqT;TRespT;>;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/grpc/f1/p;

    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 2
    invoke-static {v0, p2}, Lio/grpc/f1/d1;->u(Lio/grpc/f1/d1;Lio/grpc/d;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 3
    invoke-static {v0}, Lio/grpc/f1/d1;->E(Lio/grpc/f1/d1;)Lio/grpc/f1/p$f;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->F(Lio/grpc/f1/d1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->v(Lio/grpc/f1/d1;)Lio/grpc/f1/t;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/f1/t;->e1()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 5
    invoke-static {v0}, Lio/grpc/f1/d1;->z(Lio/grpc/f1/d1;)Lio/grpc/f1/m;

    move-result-object v6

    iget-object v0, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 6
    invoke-static {v0}, Lio/grpc/f1/d1;->o(Lio/grpc/f1/d1;)Z

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/f1/p;-><init>(Lio/grpc/r0;Ljava/util/concurrent/Executor;Lio/grpc/d;Lio/grpc/f1/p$f;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f1/m;Z)V

    iget-object p1, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 7
    invoke-static {p1}, Lio/grpc/f1/d1;->D(Lio/grpc/f1/d1;)Z

    move-result p1

    invoke-virtual {v8, p1}, Lio/grpc/f1/p;->F(Z)Lio/grpc/f1/p;

    iget-object p1, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 8
    invoke-static {p1}, Lio/grpc/f1/d1;->C(Lio/grpc/f1/d1;)Lio/grpc/v;

    move-result-object p1

    invoke-virtual {v8, p1}, Lio/grpc/f1/p;->E(Lio/grpc/v;)Lio/grpc/f1/p;

    iget-object p1, p0, Lio/grpc/f1/d1$m;->b:Lio/grpc/f1/d1;

    .line 9
    invoke-static {p1}, Lio/grpc/f1/d1;->B(Lio/grpc/f1/d1;)Lio/grpc/n;

    move-result-object p1

    invoke-virtual {v8, p1}, Lio/grpc/f1/p;->D(Lio/grpc/n;)Lio/grpc/f1/p;

    return-object v8
.end method
