.class Lio/grpc/f1/z$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/z;->r(Lio/grpc/l0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/z$f;

.field final synthetic g:Lio/grpc/f1/s;


# direct methods
.method constructor <init>(Lio/grpc/f1/z;Lio/grpc/f1/z$f;Lio/grpc/f1/s;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/grpc/f1/z$e;->f:Lio/grpc/f1/z$f;

    iput-object p3, p0, Lio/grpc/f1/z$e;->g:Lio/grpc/f1/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z$e;->f:Lio/grpc/f1/z$f;

    iget-object v1, p0, Lio/grpc/f1/z$e;->g:Lio/grpc/f1/s;

    invoke-static {v0, v1}, Lio/grpc/f1/z$f;->u(Lio/grpc/f1/z$f;Lio/grpc/f1/s;)V

    return-void
.end method
