.class final Lio/grpc/f1/i$c;
.super Lio/grpc/l0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/l0$i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/i$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$f;)Lio/grpc/l0$e;
    .locals 0

    .line 1
    invoke-static {}, Lio/grpc/l0$e;->g()Lio/grpc/l0$e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f1/i$c;

    invoke-static {v0}, Lcom/google/common/base/h;->b(Ljava/lang/Class;)Lcom/google/common/base/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
