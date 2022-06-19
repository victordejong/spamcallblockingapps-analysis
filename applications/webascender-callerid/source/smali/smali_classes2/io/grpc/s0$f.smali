.class public abstract Lio/grpc/s0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/s0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/grpc/b1;)V
.end method

.method public final b(Ljava/util/List;Lio/grpc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Lio/grpc/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/s0$h;->d()Lio/grpc/s0$h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/s0$h$a;->b(Ljava/util/List;)Lio/grpc/s0$h$a;

    invoke-virtual {v0, p2}, Lio/grpc/s0$h$a;->c(Lio/grpc/a;)Lio/grpc/s0$h$a;

    invoke-virtual {v0}, Lio/grpc/s0$h$a;->a()Lio/grpc/s0$h;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/s0$f;->c(Lio/grpc/s0$h;)V

    return-void
.end method

.method public abstract c(Lio/grpc/s0$h;)V
.end method
