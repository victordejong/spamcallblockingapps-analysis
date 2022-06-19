.class Lio/grpc/f1/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p;->u(Lio/grpc/b1;Lio/grpc/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/b1;

.field final synthetic g:Lio/grpc/f1/p;


# direct methods
.method constructor <init>(Lio/grpc/f1/p;Lio/grpc/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$d;->g:Lio/grpc/f1/p;

    iput-object p2, p0, Lio/grpc/f1/p$d;->f:Lio/grpc/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$d;->g:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->f(Lio/grpc/f1/p;)Lio/grpc/f1/q;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/p$d;->f:Lio/grpc/b1;

    invoke-interface {v0, v1}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    return-void
.end method
