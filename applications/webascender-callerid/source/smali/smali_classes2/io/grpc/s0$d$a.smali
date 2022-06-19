.class Lio/grpc/s0$d$a;
.super Lio/grpc/s0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/s0$d;->d(Ljava/net/URI;Lio/grpc/s0$e;)Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/s0$e;


# direct methods
.method constructor <init>(Lio/grpc/s0$d;Lio/grpc/s0$e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/grpc/s0$d$a;->a:Lio/grpc/s0$e;

    invoke-direct {p0}, Lio/grpc/s0$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lio/grpc/s0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/s0$c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/s0$d$a;->a:Lio/grpc/s0$e;

    invoke-virtual {v0, p1}, Lio/grpc/s0$e;->d(Ljava/util/Map;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1
.end method
