.class Lio/grpc/f1/v0$i$a$a;
.super Lio/grpc/f1/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0$i$a;->l(Lio/grpc/f1/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/r;

.field final synthetic b:Lio/grpc/f1/v0$i$a;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0$i$a;Lio/grpc/f1/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$i$a$a;->b:Lio/grpc/f1/v0$i$a;

    iput-object p2, p0, Lio/grpc/f1/v0$i$a$a;->a:Lio/grpc/f1/r;

    invoke-direct {p0}, Lio/grpc/f1/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/b1;Lio/grpc/q0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i$a$a;->b:Lio/grpc/f1/v0$i$a;

    iget-object v0, v0, Lio/grpc/f1/v0$i$a;->b:Lio/grpc/f1/v0$i;

    invoke-static {v0}, Lio/grpc/f1/v0$i;->h(Lio/grpc/f1/v0$i;)Lio/grpc/f1/m;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/f1/m;->a(Z)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/f1/h0;->b(Lio/grpc/b1;Lio/grpc/q0;)V

    return-void
.end method

.method public e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i$a$a;->b:Lio/grpc/f1/v0$i$a;

    iget-object v0, v0, Lio/grpc/f1/v0$i$a;->b:Lio/grpc/f1/v0$i;

    invoke-static {v0}, Lio/grpc/f1/v0$i;->h(Lio/grpc/f1/v0$i;)Lio/grpc/f1/m;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/f1/m;->a(Z)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lio/grpc/f1/h0;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method

.method protected f()Lio/grpc/f1/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i$a$a;->a:Lio/grpc/f1/r;

    return-object v0
.end method
