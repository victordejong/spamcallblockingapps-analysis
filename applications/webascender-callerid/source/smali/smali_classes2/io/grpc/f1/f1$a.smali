.class final Lio/grpc/f1/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/Integer;

.field final d:Ljava/lang/Integer;

.field final e:Lio/grpc/f1/x1;

.field final f:Lio/grpc/f1/q0;


# direct methods
.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/f1/b2;->u(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/f1$a;->a:Ljava/lang/Long;

    .line 3
    invoke-static {p1}, Lio/grpc/f1/b2;->v(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/f1$a;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {p1}, Lio/grpc/f1/b2;->k(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/f1$a;->c:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxInboundMessageSize %s exceeds bounds"

    .line 6
    invoke-static {v3, v4, v0}, Lcom/google/common/base/m;->k(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lio/grpc/f1/b2;->j(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/f1$a;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "maxOutboundMessageSize %s exceeds bounds"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/google/common/base/m;->k(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1}, Lio/grpc/f1/b2;->p(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_5

    .line 11
    sget-object p3, Lio/grpc/f1/x1;->f:Lio/grpc/f1/x1;

    goto :goto_3

    :cond_5
    invoke-static {v1, p3}, Lio/grpc/f1/f1$a;->b(Ljava/util/Map;I)Lio/grpc/f1/x1;

    move-result-object p3

    :goto_3
    iput-object p3, p0, Lio/grpc/f1/f1$a;->e:Lio/grpc/f1/x1;

    if-eqz p2, :cond_6

    .line 12
    invoke-static {p1}, Lio/grpc/f1/b2;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    .line 13
    sget-object p1, Lio/grpc/f1/q0;->d:Lio/grpc/f1/q0;

    goto :goto_4

    :cond_7
    invoke-static {v0, p4}, Lio/grpc/f1/f1$a;->a(Ljava/util/Map;I)Lio/grpc/f1/q0;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lio/grpc/f1/f1$a;->f:Lio/grpc/f1/q0;

    return-void
.end method

.method private static a(Ljava/util/Map;I)Lio/grpc/f1/q0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/f1/q0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/grpc/f1/b2;->g(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxAttempts cannot be empty"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    .line 3
    invoke-static {v3, v4, v0}, Lcom/google/common/base/m;->h(ZLjava/lang/String;I)V

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-static {p0}, Lio/grpc/f1/b2;->b(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "hedgingDelay cannot be empty"

    .line 6
    invoke-static {v0, v3}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "hedgingDelay must not be negative: %s"

    .line 7
    invoke-static {v1, v0, v3, v4}, Lcom/google/common/base/m;->j(ZLjava/lang/String;J)V

    .line 8
    new-instance v0, Lio/grpc/f1/q0;

    .line 9
    invoke-static {p0}, Lio/grpc/f1/b2;->o(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p1, v3, v4, p0}, Lio/grpc/f1/q0;-><init>(IJLjava/util/Set;)V

    return-object v0
.end method

.method private static b(Ljava/util/Map;I)Lio/grpc/f1/x1;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/f1/x1;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/grpc/f1/b2;->h(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxAttempts cannot be empty"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    .line 3
    invoke-static {v3, v4, v0}, Lcom/google/common/base/m;->h(ZLjava/lang/String;I)V

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5
    invoke-static {p0}, Lio/grpc/f1/b2;->d(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "initialBackoff cannot be empty"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v3, 0x0

    cmp-long p1, v7, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v0, "initialBackoffNanos must be greater than 0: %s"

    .line 7
    invoke-static {p1, v0, v7, v8}, Lcom/google/common/base/m;->j(ZLjava/lang/String;J)V

    .line 8
    invoke-static {p0}, Lio/grpc/f1/b2;->i(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "maxBackoff cannot be empty"

    .line 9
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long p1, v9, v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const-string v0, "maxBackoff must be greater than 0: %s"

    .line 10
    invoke-static {p1, v0, v9, v10}, Lcom/google/common/base/m;->j(ZLjava/lang/String;J)V

    .line 11
    invoke-static {p0}, Lio/grpc/f1/b2;->a(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "backoffMultiplier cannot be empty"

    .line 12
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v3, 0x0

    cmpl-double p1, v11, v3

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 13
    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "backoffMultiplier must be greater than 0: %s"

    .line 14
    invoke-static {v1, v0, p1}, Lcom/google/common/base/m;->k(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 15
    new-instance p1, Lio/grpc/f1/x1;

    .line 16
    invoke-static {p0}, Lio/grpc/f1/b2;->q(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v13

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lio/grpc/f1/x1;-><init>(IJJDLjava/util/Set;)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/f1/f1$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/f1/f1$a;

    .line 3
    iget-object v0, p0, Lio/grpc/f1/f1$a;->a:Ljava/lang/Long;

    iget-object v2, p1, Lio/grpc/f1/f1$a;->a:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/f1$a;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/grpc/f1/f1$a;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/f1$a;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/f1/f1$a;->c:Ljava/lang/Integer;

    .line 5
    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/f1$a;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/f1/f1$a;->d:Ljava/lang/Integer;

    .line 6
    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/f1$a;->e:Lio/grpc/f1/x1;

    iget-object v2, p1, Lio/grpc/f1/f1$a;->e:Lio/grpc/f1/x1;

    .line 7
    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/f1$a;->f:Lio/grpc/f1/q0;

    iget-object p1, p1, Lio/grpc/f1/f1$a;->f:Lio/grpc/f1/q0;

    .line 8
    invoke-static {v0, p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/grpc/f1/f1$a;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/f1$a;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/f1$a;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/f1$a;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/f1$a;->e:Lio/grpc/f1/x1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/f1$a;->f:Lio/grpc/f1/q0;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/i;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/f1$a;->a:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/f1$a;->b:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/f1$a;->c:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/f1$a;->d:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/f1$a;->e:Lio/grpc/f1/x1;

    const-string v2, "retryPolicy"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/f1$a;->f:Lio/grpc/f1/q0;

    const-string v2, "hedgingPolicy"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
