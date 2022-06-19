.class Lio/grpc/f1/w1$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/w1$v;->e(Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/w1$w;

.field final synthetic g:Lio/grpc/f1/w1$v;


# direct methods
.method constructor <init>(Lio/grpc/f1/w1$v;Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1$v$a;->g:Lio/grpc/f1/w1$v;

    iput-object p2, p0, Lio/grpc/f1/w1$v$a;->f:Lio/grpc/f1/w1$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1$v$a;->g:Lio/grpc/f1/w1$v;

    iget-object v0, v0, Lio/grpc/f1/w1$v;->b:Lio/grpc/f1/w1;

    iget-object v1, p0, Lio/grpc/f1/w1$v$a;->f:Lio/grpc/f1/w1$w;

    invoke-static {v0, v1}, Lio/grpc/f1/w1;->U(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    return-void
.end method
