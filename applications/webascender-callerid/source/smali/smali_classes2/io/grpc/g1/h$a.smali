.class Lio/grpc/g1/h$a;
.super Lio/grpc/f1/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/g1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/f1/t0<",
        "Lio/grpc/g1/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/g1/h;


# direct methods
.method constructor <init>(Lio/grpc/g1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/g1/h$a;->b:Lio/grpc/g1/h;

    invoke-direct {p0}, Lio/grpc/f1/t0;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/h$a;->b:Lio/grpc/g1/h;

    invoke-static {v0}, Lio/grpc/g1/h;->h(Lio/grpc/g1/h;)Lio/grpc/f1/g1$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/grpc/f1/g1$a;->d(Z)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/h$a;->b:Lio/grpc/g1/h;

    invoke-static {v0}, Lio/grpc/g1/h;->h(Lio/grpc/g1/h;)Lio/grpc/f1/g1$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/grpc/f1/g1$a;->d(Z)V

    return-void
.end method
