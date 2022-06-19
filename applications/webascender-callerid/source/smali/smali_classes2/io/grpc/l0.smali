.class public abstract Lio/grpc/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/l0$c;,
        Lio/grpc/l0$j;,
        Lio/grpc/l0$h;,
        Lio/grpc/l0$d;,
        Lio/grpc/l0$b;,
        Lio/grpc/l0$e;,
        Lio/grpc/l0$f;,
        Lio/grpc/l0$i;,
        Lio/grpc/l0$g;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.LoadBalancer.loadBalancingConfig"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/l0;->a:Lio/grpc/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lio/grpc/b1;)V
.end method

.method public abstract c(Lio/grpc/l0$g;)V
.end method

.method public abstract d()V
.end method
