.class public final Lio/grpc/f1/p1;
.super Lio/grpc/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/m0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$d;)Lio/grpc/l0;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/o1;

    invoke-direct {v0, p1}, Lio/grpc/f1/o1;-><init>(Lio/grpc/l0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "pick_first"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/s0$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/s0$c;"
        }
    .end annotation

    const-string p1, "no service config"

    .line 1
    invoke-static {p1}, Lio/grpc/s0$c;->a(Ljava/lang/Object;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1
.end method
