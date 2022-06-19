.class Lio/grpc/f1/o0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/o0;->g(Lio/grpc/l0$e;Z)Lio/grpc/f1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/s;

.field final synthetic b:Lio/grpc/k$a;


# direct methods
.method constructor <init>(Lio/grpc/f1/s;Lio/grpc/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/o0$e;->a:Lio/grpc/f1/s;

    iput-object p2, p0, Lio/grpc/f1/o0$e;->b:Lio/grpc/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lio/grpc/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/o0$e;->a:Lio/grpc/f1/s;

    invoke-interface {v0}, Lio/grpc/j0;->e()Lio/grpc/f0;

    move-result-object v0

    return-object v0
.end method

.method public g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
    .locals 2
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
    iget-object v0, p0, Lio/grpc/f1/o0$e;->a:Lio/grpc/f1/s;

    iget-object v1, p0, Lio/grpc/f1/o0$e;->b:Lio/grpc/k$a;

    .line 2
    invoke-virtual {p3, v1}, Lio/grpc/d;->q(Lio/grpc/k$a;)Lio/grpc/d;

    move-result-object p3

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1

    return-object p1
.end method
