.class public final Lio/grpc/f1/e0;
.super Lio/grpc/f1/k1;
.source "SourceFile"


# instance fields
.field private b:Z

.field private final c:Lio/grpc/b1;

.field private final d:Lio/grpc/f1/r$a;


# direct methods
.method public constructor <init>(Lio/grpc/b1;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/r$a;->PROCESSED:Lio/grpc/f1/r$a;

    invoke-direct {p0, p1, v0}, Lio/grpc/f1/e0;-><init>(Lio/grpc/b1;Lio/grpc/f1/r$a;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/b1;Lio/grpc/f1/r$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/k1;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lio/grpc/f1/e0;->c:Lio/grpc/b1;

    .line 5
    iput-object p2, p0, Lio/grpc/f1/e0;->d:Lio/grpc/f1/r$a;

    return-void
.end method


# virtual methods
.method public i(Lio/grpc/f1/u0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/e0;->c:Lio/grpc/b1;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    iget-object v0, p0, Lio/grpc/f1/e0;->d:Lio/grpc/f1/r$a;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    return-void
.end method

.method public l(Lio/grpc/f1/r;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/f1/e0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lio/grpc/f1/e0;->b:Z

    .line 3
    iget-object v0, p0, Lio/grpc/f1/e0;->c:Lio/grpc/b1;

    iget-object v1, p0, Lio/grpc/f1/e0;->d:Lio/grpc/f1/r$a;

    new-instance v2, Lio/grpc/q0;

    invoke-direct {v2}, Lio/grpc/q0;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lio/grpc/f1/r;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method
