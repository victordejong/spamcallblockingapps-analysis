.class Lio/grpc/f1/v0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/v0;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$f;->f:Lio/grpc/f1/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$f;->f:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->u(Lio/grpc/f1/v0;)Lio/grpc/f;

    move-result-object v0

    sget-object v1, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lio/grpc/f;->a(Lio/grpc/f$a;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0$f;->f:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->h(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$j;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$f;->f:Lio/grpc/f1/v0;

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0$j;->d(Lio/grpc/f1/v0;)V

    return-void
.end method
