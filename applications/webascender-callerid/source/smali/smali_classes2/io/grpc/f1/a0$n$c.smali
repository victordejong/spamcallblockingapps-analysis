.class Lio/grpc/f1/a0$n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a0$n;->c(Lio/grpc/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/q0;

.field final synthetic g:Lio/grpc/f1/a0$n;


# direct methods
.method constructor <init>(Lio/grpc/f1/a0$n;Lio/grpc/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/a0$n$c;->g:Lio/grpc/f1/a0$n;

    iput-object p2, p0, Lio/grpc/f1/a0$n$c;->f:Lio/grpc/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a0$n$c;->g:Lio/grpc/f1/a0$n;

    invoke-static {v0}, Lio/grpc/f1/a0$n;->f(Lio/grpc/f1/a0$n;)Lio/grpc/f1/r;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/a0$n$c;->f:Lio/grpc/q0;

    invoke-interface {v0, v1}, Lio/grpc/f1/r;->c(Lio/grpc/q0;)V

    return-void
.end method
