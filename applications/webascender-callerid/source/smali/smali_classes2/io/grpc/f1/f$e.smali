.class Lio/grpc/f1/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/f;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Lio/grpc/f1/f;


# direct methods
.method constructor <init>(Lio/grpc/f1/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/f$e;->g:Lio/grpc/f1/f;

    iput p2, p0, Lio/grpc/f1/f$e;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f$e;->g:Lio/grpc/f1/f;

    invoke-static {v0}, Lio/grpc/f1/f;->l(Lio/grpc/f1/f;)Lio/grpc/f1/h1$b;

    move-result-object v0

    iget v1, p0, Lio/grpc/f1/f$e;->f:I

    invoke-interface {v0, v1}, Lio/grpc/f1/h1$b;->g(I)V

    return-void
.end method
