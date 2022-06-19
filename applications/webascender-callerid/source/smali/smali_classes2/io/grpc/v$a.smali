.class final Lio/grpc/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Lio/grpc/u;

.field final b:Z


# direct methods
.method constructor <init>(Lio/grpc/u;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/u;

    iput-object p1, p0, Lio/grpc/v$a;->a:Lio/grpc/u;

    .line 3
    iput-boolean p2, p0, Lio/grpc/v$a;->b:Z

    return-void
.end method
