.class public final Lio/grpc/f1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/i$d;,
        Lio/grpc/f1/i$c;,
        Lio/grpc/f1/i$g;,
        Lio/grpc/f1/i$f;,
        Lio/grpc/f1/i$b;,
        Lio/grpc/f1/i$e;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/n0;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/n0;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "registry"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/n0;

    iput-object p1, p0, Lio/grpc/f1/i;->a:Lio/grpc/n0;

    const-string p1, "defaultPolicy"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lio/grpc/f1/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/n0;->b()Lio/grpc/n0;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/grpc/f1/i;-><init>(Lio/grpc/n0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/f1/i;)Lio/grpc/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/i;->a:Lio/grpc/n0;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/f1/i;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/m0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/f1/i$f;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/i;->d(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/m0;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/m0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/f1/i$f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/i;->a:Lio/grpc/n0;

    invoke-virtual {v0, p1}, Lio/grpc/n0;->d(Ljava/lang/String;)Lio/grpc/m0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/f1/i$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to load \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but it\'s unavailable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lio/grpc/f1/i$f;-><init>(Ljava/lang/String;Lio/grpc/f1/i$a;)V

    throw v0
.end method


# virtual methods
.method public e(Lio/grpc/l0$d;)Lio/grpc/f1/i$b;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/i$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/i$b;-><init>(Lio/grpc/f1/i;Lio/grpc/l0$d;)V

    return-object v0
.end method

.method f(Ljava/util/Map;Lio/grpc/f;)Lio/grpc/s0$c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lio/grpc/f;",
            ")",
            "Lio/grpc/s0$c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/grpc/f1/b2;->f(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/grpc/f1/b2;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/f1/b2$a;

    .line 6
    invoke-virtual {v1}, Lio/grpc/f1/b2$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/grpc/f1/i;->a:Lio/grpc/n0;

    invoke-virtual {v3, v2}, Lio/grpc/n0;->d(Ljava/lang/String;)Lio/grpc/m0;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    sget-object p1, Lio/grpc/f$a;->DEBUG:Lio/grpc/f$a;

    const-string v2, "{0} specified by Service Config are not available"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p2, p1, v2, v4}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_2
    invoke-virtual {v1}, Lio/grpc/f1/b2$a;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/grpc/m0;->e(Ljava/util/Map;)Lio/grpc/s0$c;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/grpc/s0$c;->d()Lio/grpc/b1;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p1

    .line 13
    :cond_3
    new-instance p2, Lio/grpc/f1/i$g;

    .line 14
    invoke-virtual {v1}, Lio/grpc/f1/b2$a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/s0$c;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v3, v0, p1}, Lio/grpc/f1/i$g;-><init>(Lio/grpc/m0;Ljava/util/Map;Ljava/lang/Object;)V

    .line 15
    invoke-static {p2}, Lio/grpc/s0$c;->a(Ljava/lang/Object;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    sget-object p1, Lio/grpc/b1;->h:Lio/grpc/b1;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " specified by Service Config are available."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/grpc/s0$c;->b(Lio/grpc/b1;)Lio/grpc/s0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 19
    :goto_2
    sget-object p2, Lio/grpc/b1;->h:Lio/grpc/b1;

    const-string v0, "can\'t parse load balancer configuration"

    .line 20
    invoke-virtual {p2, v0}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lio/grpc/s0$c;->b(Lio/grpc/b1;)Lio/grpc/s0$c;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method
