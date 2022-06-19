.class final Lio/grpc/f1/o1$c;
.super Lio/grpc/l0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/l0$e;


# direct methods
.method constructor <init>(Lio/grpc/l0$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/l0$i;-><init>()V

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/l0$e;

    iput-object p1, p0, Lio/grpc/f1/o1$c;->a:Lio/grpc/l0$e;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$f;)Lio/grpc/l0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/f1/o1$c;->a:Lio/grpc/l0$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lio/grpc/f1/o1$c;

    invoke-static {v0}, Lcom/google/common/base/h;->b(Ljava/lang/Class;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/o1$c;->a:Lio/grpc/l0$e;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
