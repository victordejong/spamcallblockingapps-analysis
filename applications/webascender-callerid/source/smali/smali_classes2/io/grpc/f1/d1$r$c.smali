.class final Lio/grpc/f1/d1$r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$r;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/d1$r;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$r$c;->f:Lio/grpc/f1/d1$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$c;->f:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->e:Lio/grpc/f1/v0;

    sget-object v1, Lio/grpc/f1/d1;->l0:Lio/grpc/b1;

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0;->b(Lio/grpc/b1;)V

    return-void
.end method
