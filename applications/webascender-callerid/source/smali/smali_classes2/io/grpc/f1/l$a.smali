.class Lio/grpc/f1/l$a;
.super Lio/grpc/f1/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/f1/v;

.field final synthetic b:Lio/grpc/f1/l;


# direct methods
.method constructor <init>(Lio/grpc/f1/l;Lio/grpc/f1/v;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/l$a;->b:Lio/grpc/f1/l;

    invoke-direct {p0}, Lio/grpc/f1/i0;-><init>()V

    const-string p1, "delegate"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/f1/v;

    iput-object p2, p0, Lio/grpc/f1/l$a;->a:Lio/grpc/f1/v;

    const-string p1, "authority"

    .line 3
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a()Lio/grpc/f1/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/l$a;->a:Lio/grpc/f1/v;

    return-object v0
.end method

.method public g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/f1/q;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/grpc/d;->c()Lio/grpc/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/grpc/f1/j1;

    iget-object v2, p0, Lio/grpc/f1/l$a;->a:Lio/grpc/f1/v;

    invoke-direct {v1, v2, p1, p2, p3}, Lio/grpc/f1/j1;-><init>(Lio/grpc/f1/s;Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)V

    .line 3
    new-instance p2, Lio/grpc/f1/l$a$a;

    invoke-direct {p2, p0, p1, p3}, Lio/grpc/f1/l$a$a;-><init>(Lio/grpc/f1/l$a;Lio/grpc/r0;Lio/grpc/d;)V

    .line 4
    :try_start_0
    invoke-virtual {p3}, Lio/grpc/d;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p3, p0, Lio/grpc/f1/l$a;->b:Lio/grpc/f1/l;

    invoke-static {p3}, Lio/grpc/f1/l;->a(Lio/grpc/f1/l;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v0, p2, p1, v1}, Lio/grpc/c;->a(Lio/grpc/c$b;Ljava/util/concurrent/Executor;Lio/grpc/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    sget-object p2, Lio/grpc/b1;->k:Lio/grpc/b1;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 7
    invoke-virtual {p2, p3}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lio/grpc/f1/j1;->a(Lio/grpc/b1;)V

    .line 10
    :goto_0
    invoke-virtual {v1}, Lio/grpc/f1/j1;->c()Lio/grpc/f1/q;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/l$a;->a:Lio/grpc/f1/v;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1

    return-object p1
.end method
