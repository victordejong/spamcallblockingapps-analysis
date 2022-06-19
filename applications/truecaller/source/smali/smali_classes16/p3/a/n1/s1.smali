.class public final Lp3/a/n1/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/s1$c;,
        Lp3/a/n1/s1$b;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/s1$b;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/a/n1/s1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/a/n1/s1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lp3/a/n1/i2$y;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/n1/s1$b;Ljava/util/Map;Ljava/util/Map;Lp3/a/n1/i2$y;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/n1/s1$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/a/n1/s1$b;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/a/n1/s1$b;",
            ">;",
            "Lp3/a/n1/i2$y;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/s1;->a:Lp3/a/n1/s1$b;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lp3/a/n1/s1;->d:Lp3/a/n1/i2$y;

    .line 6
    iput-object p5, p0, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lp3/a/n1/s1;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/Map;ZIILjava/lang/Object;)Lp3/a/n1/s1;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII",
            "Ljava/lang/Object;",
            ")",
            "Lp3/a/n1/s1;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    :goto_0
    const/4 v7, 0x0

    goto :goto_3

    :cond_0
    const-string v5, "retryThrottling"

    .line 1
    invoke-static {v0, v5}, Lp3/a/n1/i1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "maxTokens"

    .line 2
    invoke-static {v5, v6}, Lp3/a/n1/i1;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    const-string v7, "tokenRatio"

    .line 3
    invoke-static {v5, v7}, Lp3/a/n1/i1;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-string v9, "maxToken should be greater than zero"

    .line 4
    invoke-static {v8, v9}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const-string v8, "tokenRatio should be greater than zero"

    .line 5
    invoke-static {v7, v8}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 6
    new-instance v7, Lp3/a/n1/i2$y;

    invoke-direct {v7, v6, v5}, Lp3/a/n1/i2$y;-><init>(FF)V

    :goto_3
    move-object v12, v7

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 7
    :goto_4
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_5

    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    const-string v5, "healthCheckConfig"

    .line 9
    invoke-static {v0, v5}, Lp3/a/n1/i1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v14, v5

    :goto_5
    const-string v5, "methodConfig"

    .line 10
    invoke-static {v0, v5}, Lp3/a/n1/i1;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    .line 11
    :cond_6
    invoke-static {v5}, Lp3/a/n1/i1;->a(Ljava/util/List;)Ljava/util/List;

    :goto_6
    if-nez v5, :cond_7

    .line 12
    new-instance v0, Lp3/a/n1/s1;

    const/4 v9, 0x0

    move-object v8, v0

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lp3/a/n1/s1;-><init>(Lp3/a/n1/s1$b;Ljava/util/Map;Ljava/util/Map;Lp3/a/n1/i2$y;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0

    .line 13
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :cond_8
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 14
    new-instance v7, Lp3/a/n1/s1$b;

    move/from16 v8, p2

    move/from16 v13, p3

    invoke-direct {v7, v6, v1, v8, v13}, Lp3/a/n1/s1$b;-><init>(Ljava/util/Map;ZII)V

    const-string v15, "name"

    .line 15
    invoke-static {v6, v15}, Lp3/a/n1/i1;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_8

    .line 16
    :cond_9
    invoke-static {v6}, Lp3/a/n1/i1;->a(Ljava/util/List;)Ljava/util/List;

    :goto_8
    if-eqz v6, :cond_8

    .line 17
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_7

    .line 18
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v2, "service"

    .line 19
    invoke-static {v15, v2}, Lp3/a/n1/i1;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "method"

    .line 20
    invoke-static {v15, v4}, Lp3/a/n1/i1;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v2}, Ln3/g0/y;->isNullOrEmpty1(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 22
    invoke-static {v4}, Ln3/g0/y;->isNullOrEmpty1(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "missing service name for method %s"

    .line 23
    invoke-static {v2, v15, v4}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_b

    move v2, v3

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    const-string v4, "Duplicate default method config in service config %s"

    .line 24
    invoke-static {v2, v4, v0}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    move-object v9, v7

    goto :goto_9

    .line 25
    :cond_c
    invoke-static {v4}, Ln3/g0/y;->isNullOrEmpty1(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 26
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    const-string v15, "Duplicate service %s"

    .line 27
    invoke-static {v4, v15, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v11, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 29
    :cond_d
    invoke-static {v2, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    const-string v15, "Duplicate method name %s"

    .line 31
    invoke-static {v4, v15, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 33
    :cond_e
    new-instance v0, Lp3/a/n1/s1;

    move-object v8, v0

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lp3/a/n1/s1;-><init>(Lp3/a/n1/s1$b;Ljava/util/Map;Ljava/util/Map;Lp3/a/n1/i2$y;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public b()Lp3/a/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/n1/s1;->a:Lp3/a/n1/s1$b;

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lp3/a/n1/s1$c;

    invoke-direct {v0, p0, v1}, Lp3/a/n1/s1$c;-><init>(Lp3/a/n1/s1;Lp3/a/n1/s1$a;)V

    return-object v0
.end method

.method public c(Lp3/a/p0;)Lp3/a/n1/s1$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;)",
            "Lp3/a/n1/s1$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    .line 2
    iget-object v1, p1, Lp3/a/p0;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/s1$b;

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lp3/a/p0;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lp3/a/n1/s1$b;

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lp3/a/n1/s1;->a:Lp3/a/n1/s1$b;

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lp3/a/n1/s1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lp3/a/n1/s1;

    .line 3
    iget-object v2, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    iget-object v3, p1, Lp3/a/n1/s1;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    iget-object v3, p1, Lp3/a/n1/s1;->c:Ljava/util/Map;

    .line 4
    invoke-static {v2, v3}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp3/a/n1/s1;->d:Lp3/a/n1/i2$y;

    iget-object v3, p1, Lp3/a/n1/s1;->d:Lp3/a/n1/i2$y;

    .line 5
    invoke-static {v2, v3}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    iget-object p1, p1, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    .line 6
    invoke-static {v2, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1;->d:Lp3/a/n1/i2$y;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/s1;->b:Ljava/util/Map;

    const-string v2, "serviceMethodMap"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/n1/s1;->c:Ljava/util/Map;

    const-string v2, "serviceMap"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-object v1, p0, Lp3/a/n1/s1;->d:Lp3/a/n1/i2$y;

    const-string v2, "retryThrottling"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 7
    iget-object v1, p0, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    const-string v2, "loadBalancingConfig"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
