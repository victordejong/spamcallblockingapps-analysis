.class final Lio/grpc/f1/d1$p;
.super Lio/grpc/s0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Lio/grpc/f1/i;

.field private final e:Lio/grpc/f;


# direct methods
.method constructor <init>(ZIILio/grpc/f1/i;Lio/grpc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/s0$i;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/grpc/f1/d1$p;->a:Z

    .line 3
    iput p2, p0, Lio/grpc/f1/d1$p;->b:I

    .line 4
    iput p3, p0, Lio/grpc/f1/d1$p;->c:I

    const-string p1, "autoLoadBalancerFactory"

    .line 5
    invoke-static {p4, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lio/grpc/f1/i;

    iput-object p4, p0, Lio/grpc/f1/d1$p;->d:Lio/grpc/f1/i;

    const-string p1, "channelLogger"

    .line 6
    invoke-static {p5, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lio/grpc/f;

    iput-object p5, p0, Lio/grpc/f1/d1$p;->e:Lio/grpc/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lio/grpc/s0$c;
    .locals 4
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
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/d1$p;->d:Lio/grpc/f1/i;

    iget-object v1, p0, Lio/grpc/f1/d1$p;->e:Lio/grpc/f;

    .line 2
    invoke-virtual {v0, p1, v1}, Lio/grpc/f1/i;->f(Ljava/util/Map;Lio/grpc/f;)Lio/grpc/s0$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/grpc/s0$c;->d()Lio/grpc/b1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/grpc/s0$c;->d()Lio/grpc/b1;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/s0$c;->b(Lio/grpc/b1;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lio/grpc/s0$c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    iget-boolean v1, p0, Lio/grpc/f1/d1$p;->a:Z

    iget v2, p0, Lio/grpc/f1/d1$p;->b:I

    iget v3, p0, Lio/grpc/f1/d1$p;->c:I

    .line 7
    invoke-static {p1, v1, v2, v3, v0}, Lio/grpc/f1/f1;->b(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/f1/f1;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lio/grpc/s0$c;->a(Ljava/lang/Object;)Lio/grpc/s0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lio/grpc/b1;->h:Lio/grpc/b1;

    const-string v1, "failed to parse service config"

    .line 10
    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/grpc/s0$c;->b(Lio/grpc/b1;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1
.end method
