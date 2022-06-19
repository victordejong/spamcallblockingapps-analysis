.class Lio/grpc/g1/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/g1/e$d;->A0(Ljava/net/SocketAddress;Lio/grpc/f1/t$a;Lio/grpc/f;)Lio/grpc/f1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/g$b;


# direct methods
.method constructor <init>(Lio/grpc/g1/e$d;Lio/grpc/f1/g$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/grpc/g1/e$d$a;->f:Lio/grpc/f1/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/e$d$a;->f:Lio/grpc/f1/g$b;

    invoke-virtual {v0}, Lio/grpc/f1/g$b;->a()V

    return-void
.end method
