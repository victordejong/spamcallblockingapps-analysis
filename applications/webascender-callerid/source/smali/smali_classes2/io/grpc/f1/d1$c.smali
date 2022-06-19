.class final Lio/grpc/f1/d1$c;
.super Lio/grpc/l0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1;->u0(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/l0$e;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/grpc/f1/d1$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Lio/grpc/l0$i;-><init>()V

    .line 2
    sget-object p1, Lio/grpc/b1;->m:Lio/grpc/b1;

    const-string v0, "Panic! This is a bug!"

    .line 3
    invoke-virtual {p1, v0}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lio/grpc/l0$e;->e(Lio/grpc/b1;)Lio/grpc/l0$e;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/f1/d1$c;->a:Lio/grpc/l0$e;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$f;)Lio/grpc/l0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/f1/d1$c;->a:Lio/grpc/l0$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lio/grpc/f1/d1$c;

    invoke-static {v0}, Lcom/google/common/base/h;->b(Ljava/lang/Class;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/d1$c;->a:Lio/grpc/l0$e;

    const-string v2, "panicPickResult"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
