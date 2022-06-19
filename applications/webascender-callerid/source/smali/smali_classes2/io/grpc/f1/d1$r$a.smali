.class Lio/grpc/f1/d1$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$r;->k(Lio/grpc/l0$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/l0$j;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$r;Lio/grpc/l0$j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/grpc/f1/d1$r$a;->f:Lio/grpc/l0$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$a;->f:Lio/grpc/l0$j;

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    invoke-static {v1}, Lio/grpc/p;->a(Lio/grpc/o;)Lio/grpc/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/l0$j;->a(Lio/grpc/p;)V

    return-void
.end method
