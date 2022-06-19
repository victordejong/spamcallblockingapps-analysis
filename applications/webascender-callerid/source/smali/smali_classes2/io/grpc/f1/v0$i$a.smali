.class Lio/grpc/f1/v0$i$a;
.super Lio/grpc/f1/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0$i;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/q;

.field final synthetic b:Lio/grpc/f1/v0$i;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0$i;Lio/grpc/f1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$i$a;->b:Lio/grpc/f1/v0$i;

    iput-object p2, p0, Lio/grpc/f1/v0$i$a;->a:Lio/grpc/f1/q;

    invoke-direct {p0}, Lio/grpc/f1/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Lio/grpc/f1/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i$a;->b:Lio/grpc/f1/v0$i;

    invoke-static {v0}, Lio/grpc/f1/v0$i;->h(Lio/grpc/f1/v0$i;)Lio/grpc/f1/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/m;->b()V

    .line 2
    new-instance v0, Lio/grpc/f1/v0$i$a$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/v0$i$a$a;-><init>(Lio/grpc/f1/v0$i$a;Lio/grpc/f1/r;)V

    invoke-super {p0, v0}, Lio/grpc/f1/g0;->l(Lio/grpc/f1/r;)V

    return-void
.end method

.method protected n()Lio/grpc/f1/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i$a;->a:Lio/grpc/f1/q;

    return-object v0
.end method
