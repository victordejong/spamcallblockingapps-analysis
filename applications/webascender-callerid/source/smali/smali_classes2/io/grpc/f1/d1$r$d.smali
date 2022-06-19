.class Lio/grpc/f1/d1$r$d;
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
.field final synthetic f:Lio/grpc/f1/v0;

.field final synthetic g:Lio/grpc/f1/d1$r;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$r;Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$r$d;->g:Lio/grpc/f1/d1$r;

    iput-object p2, p0, Lio/grpc/f1/d1$r$d;->f:Lio/grpc/f1/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$d;->g:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->N(Lio/grpc/f1/d1;)Lio/grpc/b0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/d1$r$d;->f:Lio/grpc/f1/v0;

    invoke-virtual {v0, v1}, Lio/grpc/b0;->e(Lio/grpc/e0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r$d;->g:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->f0(Lio/grpc/f1/d1;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/d1$r$d;->f:Lio/grpc/f1/v0;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
