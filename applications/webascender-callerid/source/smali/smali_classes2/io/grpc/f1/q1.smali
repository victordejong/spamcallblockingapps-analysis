.class final Lio/grpc/f1/q1;
.super Lio/grpc/l0$f;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/d;

.field private final b:Lio/grpc/q0;

.field private final c:Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/l0$f;-><init>()V

    const-string v0, "method"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/r0;

    iput-object p1, p0, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    const-string p1, "headers"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/q0;

    iput-object p2, p0, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    const-string p1, "callOptions"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/d;

    iput-object p3, p0, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    return-object v0
.end method

.method public b()Lio/grpc/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    return-object v0
.end method

.method public c()Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lio/grpc/f1/q1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/f1/q1;

    .line 3
    iget-object v2, p0, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    iget-object v3, p1, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    invoke-static {v2, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    iget-object v3, p1, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    .line 4
    invoke-static {v2, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    iget-object p1, p1, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    .line 5
    invoke-static {v2, p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/i;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/f1/q1;->c:Lio/grpc/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/f1/q1;->b:Lio/grpc/q0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/f1/q1;->a:Lio/grpc/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
