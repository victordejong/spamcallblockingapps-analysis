.class final Lio/grpc/f1/d1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1;-><init>(Lio/grpc/f1/b;Lio/grpc/f1/t;Lio/grpc/f1/j$a;Lio/grpc/f1/l1;Lcom/google/common/base/s;Ljava/util/List;Lio/grpc/f1/h2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/h2;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/h2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/grpc/f1/d1$b;->a:Lio/grpc/f1/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/f1/m;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/f1/m;

    iget-object v1, p0, Lio/grpc/f1/d1$b;->a:Lio/grpc/f1/h2;

    invoke-direct {v0, v1}, Lio/grpc/f1/m;-><init>(Lio/grpc/f1/h2;)V

    return-object v0
.end method
