.class final Lio/grpc/j1/a$b;
.super Lio/grpc/j1/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/j1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/b1;


# direct methods
.method constructor <init>(Lio/grpc/b1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/j1/a$e;-><init>(Lio/grpc/j1/a$a;)V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/b1;

    iput-object p1, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$f;)Lio/grpc/l0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/grpc/l0$e;->g()Lio/grpc/l0$e;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    invoke-static {p1}, Lio/grpc/l0$e;->f(Lio/grpc/b1;)Lio/grpc/l0$e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method b(Lio/grpc/j1/a$e;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lio/grpc/j1/a$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    check-cast p1, Lio/grpc/j1/a$b;

    iget-object v1, p1, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    .line 2
    invoke-virtual {v0}, Lio/grpc/b1;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lio/grpc/j1/a$b;

    invoke-static {v0}, Lcom/google/common/base/h;->b(Ljava/lang/Class;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/j1/a$b;->a:Lio/grpc/b1;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
