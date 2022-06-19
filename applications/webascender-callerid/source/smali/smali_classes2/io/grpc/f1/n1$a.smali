.class Lio/grpc/f1/n1$a;
.super Lio/grpc/f1/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/n1;->c(Ljava/net/URI;Lio/grpc/s0$b;)Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/f1/n1;


# direct methods
.method constructor <init>(Lio/grpc/f1/n1;Lio/grpc/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/n1$a;->b:Lio/grpc/f1/n1;

    invoke-direct {p0, p2}, Lio/grpc/f1/k0;-><init>(Lio/grpc/s0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/n1$a;->b:Lio/grpc/f1/n1;

    invoke-static {v0}, Lio/grpc/f1/n1;->e(Lio/grpc/f1/n1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
