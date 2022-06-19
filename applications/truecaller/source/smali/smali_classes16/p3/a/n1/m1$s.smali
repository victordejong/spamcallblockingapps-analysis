.class public final Lp3/a/n1/m1$s;
.super Lp3/a/r0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lp3/a/n1/k;


# direct methods
.method public constructor <init>(ZIILp3/a/n1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/r0$f;-><init>()V

    .line 2
    iput p2, p0, Lp3/a/n1/m1$s;->a:I

    .line 3
    iput p3, p0, Lp3/a/n1/m1$s;->b:I

    const-string p1, "autoLoadBalancerFactory"

    .line 4
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/n1/m1$s;->c:Lp3/a/n1/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lp3/a/r0$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lp3/a/r0$b;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/m1$s;->c:Lp3/a/n1/k;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    :try_start_1
    invoke-static {p1}, Lp3/a/n1/m2;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lp3/a/n1/m2;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v0, v0, Lp3/a/n1/k;->a:Lp3/a/k0;

    invoke-static {v2, v0}, Lp3/a/n1/m2;->c(Ljava/util/List;Lp3/a/k0;)Lp3/a/r0$b;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7
    :goto_1
    :try_start_2
    sget-object v2, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v3, "can\'t parse load balancer configuration"

    .line 8
    invoke-virtual {v2, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object v0

    .line 9
    new-instance v2, Lp3/a/r0$b;

    invoke-direct {v2, v0}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    move-object v0, v2

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    iget-object v1, v0, Lp3/a/r0$b;->a:Lp3/a/g1;

    if-eqz v1, :cond_3

    .line 11
    new-instance p1, Lp3/a/r0$b;

    invoke-direct {p1, v1}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    return-object p1

    .line 12
    :cond_3
    iget-object v1, v0, Lp3/a/r0$b;->b:Ljava/lang/Object;

    :goto_3
    const/4 v0, 0x0

    .line 13
    iget v2, p0, Lp3/a/n1/m1$s;->a:I

    iget v3, p0, Lp3/a/n1/m1$s;->b:I

    .line 14
    invoke-static {p1, v0, v2, v3, v1}, Lp3/a/n1/s1;->a(Ljava/util/Map;ZIILjava/lang/Object;)Lp3/a/n1/s1;

    move-result-object p1

    .line 15
    new-instance v0, Lp3/a/r0$b;

    invoke-direct {v0, p1}, Lp3/a/r0$b;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 16
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v1, "failed to parse service config"

    .line 17
    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 18
    new-instance v0, Lp3/a/r0$b;

    invoke-direct {v0, p1}, Lp3/a/r0$b;-><init>(Lp3/a/g1;)V

    return-object v0
.end method
