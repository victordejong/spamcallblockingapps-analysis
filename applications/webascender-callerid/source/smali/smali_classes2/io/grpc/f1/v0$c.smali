.class Lio/grpc/f1/v0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0;->a()Lio/grpc/f1/s;
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
    iput-object p1, p0, Lio/grpc/f1/v0$c;->f:Lio/grpc/f1/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$c;->f:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v1, Lio/grpc/o;->IDLE:Lio/grpc/o;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0$c;->f:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->u(Lio/grpc/f1/v0;)Lio/grpc/f;

    move-result-object v0

    sget-object v1, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Lio/grpc/f;->a(Lio/grpc/f$a;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0$c;->f:Lio/grpc/f1/v0;

    sget-object v1, Lio/grpc/o;->CONNECTING:Lio/grpc/o;

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->z(Lio/grpc/f1/v0;Lio/grpc/o;)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0$c;->f:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->A(Lio/grpc/f1/v0;)V

    :cond_0
    return-void
.end method
