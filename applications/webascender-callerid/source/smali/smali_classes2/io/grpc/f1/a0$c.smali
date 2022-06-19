.class Lio/grpc/f1/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a0;->o(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lio/grpc/f1/a0;


# direct methods
.method constructor <init>(Lio/grpc/f1/a0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/a0$c;->g:Lio/grpc/f1/a0;

    iput-boolean p2, p0, Lio/grpc/f1/a0$c;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a0$c;->g:Lio/grpc/f1/a0;

    invoke-static {v0}, Lio/grpc/f1/a0;->n(Lio/grpc/f1/a0;)Lio/grpc/f1/q;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/f1/a0$c;->f:Z

    invoke-interface {v0, v1}, Lio/grpc/f1/q;->o(Z)V

    return-void
.end method
