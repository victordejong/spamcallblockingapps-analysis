.class Lio/grpc/f1/d1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/d1;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$f;->f:Lio/grpc/f1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$f;->f:Lio/grpc/f1/d1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->j(Lio/grpc/f1/d1;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$f;->f:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->k(Lio/grpc/f1/d1;)V

    return-void
.end method
