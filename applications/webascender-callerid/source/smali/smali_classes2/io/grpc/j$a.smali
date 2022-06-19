.class Lio/grpc/j$a;
.super Lio/grpc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/e;

.field private final b:Lio/grpc/h;


# direct methods
.method private constructor <init>(Lio/grpc/e;Lio/grpc/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/e;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/j$a;->a:Lio/grpc/e;

    const-string p1, "interceptor"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/h;

    iput-object p2, p0, Lio/grpc/j$a;->b:Lio/grpc/h;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/e;Lio/grpc/h;Lio/grpc/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/j$a;-><init>(Lio/grpc/e;Lio/grpc/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/j$a;->a:Lio/grpc/e;

    invoke-virtual {v0}, Lio/grpc/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/r0<",
            "TReqT;TRespT;>;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/j$a;->b:Lio/grpc/h;

    iget-object v1, p0, Lio/grpc/j$a;->a:Lio/grpc/e;

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/h;->a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/e;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method
