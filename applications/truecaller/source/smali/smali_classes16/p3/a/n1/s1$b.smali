.class public final Lp3/a/n1/s1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final g:Lp3/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/c$a<",
            "Lp3/a/n1/s1$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Lp3/a/n1/j2;

.field public final f:Lp3/a/n1/t0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    .line 1
    invoke-static {v0}, Lp3/a/c$a;->a(Ljava/lang/String;)Lp3/a/c$a;

    move-result-object v0

    sput-object v0, Lp3/a/n1/s1$b;->g:Lp3/a/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZII)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    .line 2
    invoke-static {v1, v2}, Lp3/a/n1/i1;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3
    iput-object v2, v0, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    .line 4
    sget v2, Lp3/a/n1/i1;->b:I

    const-string v2, "waitForReady"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v8, v3, Ljava/lang/Boolean;

    if-eqz v8, :cond_11

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    .line 9
    :goto_0
    iput-object v3, v0, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    .line 10
    invoke-static {v1, v2}, Lp3/a/n1/i1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v8, "maxInboundMessageSize %s exceeds bounds"

    .line 13
    invoke-static {v3, v8, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v2, "maxRequestMessageBytes"

    .line 14
    invoke-static {v1, v2}, Lp3/a/n1/i1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    iput-object v2, v0, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const-string v8, "maxOutboundMessageSize %s exceeds bounds"

    .line 17
    invoke-static {v3, v8, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    const-string v2, "retryPolicy"

    .line 18
    invoke-static {v1, v2}, Lp3/a/n1/i1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v3, "%s must not contain OK"

    const-wide/16 v8, 0x0

    const-string v10, "maxAttempts must be greater than 1: %s"

    const-string v11, "maxAttempts cannot be empty"

    const-string v12, "maxAttempts"

    if-nez v2, :cond_6

    const/4 v4, 0x0

    goto/16 :goto_9

    .line 19
    :cond_6
    invoke-static {v2, v12}, Lp3/a/n1/i1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 20
    invoke-static {v13, v11}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v4, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    .line 21
    :goto_4
    invoke-static {v14, v10, v13}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;I)V

    move/from16 v14, p3

    .line 22
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-string v13, "initialBackoff"

    .line 23
    invoke-static {v2, v13}, Lp3/a/n1/i1;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    .line 24
    invoke-static {v13, v14}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v16, v13, v8

    if-lez v16, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    const-string v6, "initialBackoffNanos must be greater than 0: %s"

    .line 25
    invoke-static {v7, v6, v13, v14}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;J)V

    const-string v6, "maxBackoff"

    .line 26
    invoke-static {v2, v6}, Lp3/a/n1/i1;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "maxBackoff cannot be empty"

    .line 27
    invoke-static {v6, v7}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v16, v6, v8

    if-lez v16, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    const-string v9, "maxBackoff must be greater than 0: %s"

    .line 28
    invoke-static {v8, v9, v6, v7}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;J)V

    const-string v8, "backoffMultiplier"

    .line 29
    invoke-static {v2, v8}, Lp3/a/n1/i1;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "backoffMultiplier cannot be empty"

    .line 30
    invoke-static {v8, v9}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v8, 0x0

    cmpl-double v8, v20, v8

    if-lez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 31
    :goto_7
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v4, "backoffMultiplier must be greater than 0: %s"

    .line 32
    invoke-static {v8, v4, v9}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 33
    new-instance v4, Lp3/a/n1/j2;

    const-string v8, "retryableStatusCodes"

    .line 34
    invoke-static {v2, v8}, Lp3/a/n1/m2;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    const-string v5, "%s is required in retry policy"

    .line 35
    invoke-static {v9, v5, v8}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    const-string v9, "%s must not be empty"

    invoke-static {v5, v9, v8}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object v5, Lp3/a/g1$b;->c:Lp3/a/g1$b;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    invoke-static {v5, v3, v8}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    move-wide v8, v13

    move-object v14, v4

    move-wide/from16 v16, v8

    move-wide/from16 v18, v6

    move-object/from16 v22, v2

    .line 38
    invoke-direct/range {v14 .. v22}, Lp3/a/n1/j2;-><init>(IJJDLjava/util/Set;)V

    .line 39
    :goto_9
    iput-object v4, v0, Lp3/a/n1/s1$b;->e:Lp3/a/n1/j2;

    if-eqz p2, :cond_c

    const-string v2, "hedgingPolicy"

    .line 40
    invoke-static {v1, v2}, Lp3/a/n1/i1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_d

    const/4 v7, 0x0

    goto :goto_e

    .line 41
    :cond_d
    invoke-static {v1, v12}, Lp3/a/n1/i1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 42
    invoke-static {v2, v11}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    .line 43
    :goto_b
    invoke-static {v4, v10, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;I)V

    move/from16 v4, p4

    .line 44
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v4, "hedgingDelay"

    .line 45
    invoke-static {v1, v4}, Lp3/a/n1/i1;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "hedgingDelay cannot be empty"

    .line 46
    invoke-static {v4, v5}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_f

    const/4 v6, 0x1

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    :goto_c
    const-string v7, "hedgingDelay must not be negative: %s"

    .line 47
    invoke-static {v6, v7, v4, v5}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;J)V

    .line 48
    new-instance v7, Lp3/a/n1/t0;

    const-string v6, "nonFatalStatusCodes"

    .line 49
    invoke-static {v1, v6}, Lp3/a/n1/m2;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_10

    .line 50
    const-class v1, Lp3/a/g1$b;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_d

    .line 51
    :cond_10
    sget-object v8, Lp3/a/g1$b;->c:Lp3/a/g1$b;

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-static {v8, v3, v6}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 52
    :goto_d
    invoke-direct {v7, v2, v4, v5, v1}, Lp3/a/n1/t0;-><init>(IJLjava/util/Set;)V

    .line 53
    :goto_e
    iput-object v7, v0, Lp3/a/n1/s1$b;->f:Lp3/a/n1/t0;

    return-void

    .line 54
    :cond_11
    new-instance v4, Ljava/lang/ClassCastException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const-string v1, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    .line 55
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/n1/s1$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lp3/a/n1/s1$b;

    .line 3
    iget-object v0, p0, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    iget-object v2, p1, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    .line 5
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/s1$b;->e:Lp3/a/n1/j2;

    iget-object v2, p1, Lp3/a/n1/s1$b;->e:Lp3/a/n1/j2;

    .line 7
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/s1$b;->f:Lp3/a/n1/t0;

    iget-object p1, p1, Lp3/a/n1/s1$b;->f:Lp3/a/n1/t0;

    .line 8
    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1$b;->e:Lp3/a/n1/j2;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/s1$b;->f:Lp3/a/n1/t0;

    const/4 v2, 0x5

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

    iget-object v1, p0, Lp3/a/n1/s1$b;->a:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/n1/s1$b;->b:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-object v1, p0, Lp3/a/n1/s1$b;->c:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 7
    iget-object v1, p0, Lp3/a/n1/s1$b;->d:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 9
    iget-object v1, p0, Lp3/a/n1/s1$b;->e:Lp3/a/n1/j2;

    const-string v2, "retryPolicy"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 11
    iget-object v1, p0, Lp3/a/n1/s1$b;->f:Lp3/a/n1/t0;

    const-string v2, "hedgingPolicy"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 13
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
