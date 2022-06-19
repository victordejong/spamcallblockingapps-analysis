.class final Lio/grpc/i1/c$d;
.super Lio/grpc/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/i1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/g$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/i1/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/i1/c$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/i1/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/i1/c$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/g$a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/i1/c$d;->a:Lio/grpc/i1/c$a;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/i1/c$d;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/i1/c$d;->a:Lio/grpc/i1/c$a;

    sget-object v0, Lio/grpc/b1;->m:Lio/grpc/b1;

    const-string v1, "No value received for unary call"

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lio/grpc/b1;->e(Lio/grpc/q0;)Lio/grpc/StatusRuntimeException;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lio/grpc/i1/c$a;->C(Ljava/lang/Throwable;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lio/grpc/i1/c$d;->a:Lio/grpc/i1/c$a;

    iget-object p2, p0, Lio/grpc/i1/c$d;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/grpc/i1/c$a;->B(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/i1/c$d;->a:Lio/grpc/i1/c$a;

    invoke-virtual {p1, p2}, Lio/grpc/b1;->e(Lio/grpc/q0;)Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/i1/c$a;->C(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public b(Lio/grpc/q0;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/i1/c$d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/grpc/i1/c$d;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    sget-object p1, Lio/grpc/b1;->m:Lio/grpc/b1;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/grpc/b1;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    throw p1
.end method
