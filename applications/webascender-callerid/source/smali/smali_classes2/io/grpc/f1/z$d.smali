.class Lio/grpc/f1/z$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/z;->b(Lio/grpc/b1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/b1;

.field final synthetic g:Lio/grpc/f1/z;


# direct methods
.method constructor <init>(Lio/grpc/f1/z;Lio/grpc/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z$d;->g:Lio/grpc/f1/z;

    iput-object p2, p0, Lio/grpc/f1/z$d;->f:Lio/grpc/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z$d;->g:Lio/grpc/f1/z;

    invoke-static {v0}, Lio/grpc/f1/z;->a(Lio/grpc/f1/z;)Lio/grpc/f1/g1$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/z$d;->f:Lio/grpc/b1;

    invoke-interface {v0, v1}, Lio/grpc/f1/g1$a;->a(Lio/grpc/b1;)V

    return-void
.end method
