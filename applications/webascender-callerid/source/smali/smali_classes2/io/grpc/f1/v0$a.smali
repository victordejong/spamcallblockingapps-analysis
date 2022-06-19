.class Lio/grpc/f1/v0$a;
.super Lio/grpc/f1/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/f1/t0<",
        "Lio/grpc/f1/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/f1/v0;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$a;->b:Lio/grpc/f1/v0;

    invoke-direct {p0}, Lio/grpc/f1/t0;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$a;->b:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->h(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$j;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$a;->b:Lio/grpc/f1/v0;

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0$j;->a(Lio/grpc/f1/v0;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$a;->b:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->h(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$j;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$a;->b:Lio/grpc/f1/v0;

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0$j;->b(Lio/grpc/f1/v0;)V

    return-void
.end method
