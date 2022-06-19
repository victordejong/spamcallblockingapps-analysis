.class abstract Lio/grpc/f1/j0;
.super Lio/grpc/o0;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/o0;


# direct methods
.method constructor <init>(Lio/grpc/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/f1/j0;->a:Lio/grpc/o0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/j0;->a:Lio/grpc/o0;

    invoke-virtual {v0}, Lio/grpc/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r0<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/j0;->a:Lio/grpc/o0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/e;->h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/j0;->a:Lio/grpc/o0;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
