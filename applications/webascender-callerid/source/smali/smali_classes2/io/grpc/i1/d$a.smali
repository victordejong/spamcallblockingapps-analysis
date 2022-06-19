.class final Lio/grpc/i1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/i1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/i1/d$a$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/q0;


# direct methods
.method constructor <init>(Lio/grpc/q0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/q0;

    iput-object p1, p0, Lio/grpc/i1/d$a;->a:Lio/grpc/q0;

    return-void
.end method

.method static synthetic b(Lio/grpc/i1/d$a;)Lio/grpc/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/i1/d$a;->a:Lio/grpc/q0;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/e;)Lio/grpc/g;
    .locals 1
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
            "Lio/grpc/e;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/i1/d$a$a;

    invoke-virtual {p3, p1, p2}, Lio/grpc/e;->h(Lio/grpc/r0;Lio/grpc/d;)Lio/grpc/g;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/i1/d$a$a;-><init>(Lio/grpc/i1/d$a;Lio/grpc/g;)V

    return-object v0
.end method
