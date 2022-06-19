.class final Lio/grpc/f1/d1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$e;->b(Lio/grpc/l0$f;)Lio/grpc/f1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/d1$e;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$e$a;->f:Lio/grpc/f1/d1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$e$a;->f:Lio/grpc/f1/d1$e;

    iget-object v0, v0, Lio/grpc/f1/d1$e;->a:Lio/grpc/f1/d1;

    invoke-virtual {v0}, Lio/grpc/f1/d1;->m0()V

    return-void
.end method
