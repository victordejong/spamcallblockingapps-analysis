.class final Lio/grpc/i1/d$a$a;
.super Lio/grpc/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/i1/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/y$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/i1/d$a;


# direct methods
.method constructor <init>(Lio/grpc/i1/d$a;Lio/grpc/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/i1/d$a$a;->b:Lio/grpc/i1/d$a;

    .line 2
    invoke-direct {p0, p2}, Lio/grpc/y$a;-><init>(Lio/grpc/g;)V

    return-void
.end method


# virtual methods
.method public e(Lio/grpc/g$a;Lio/grpc/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/q0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/i1/d$a$a;->b:Lio/grpc/i1/d$a;

    invoke-static {v0}, Lio/grpc/i1/d$a;->b(Lio/grpc/i1/d$a;)Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/grpc/q0;->k(Lio/grpc/q0;)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/y;->e(Lio/grpc/g$a;Lio/grpc/q0;)V

    return-void
.end method
