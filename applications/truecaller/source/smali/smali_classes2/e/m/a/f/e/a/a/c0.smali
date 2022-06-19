.class public final Le/m/a/f/e/a/a/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "I",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/f/e/a/a/c0;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iput p2, p0, Le/m/a/f/e/a/a/c0;->b:I

    iput-object p3, p0, Le/m/a/f/e/a/a/c0;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-wide p4, p0, Le/m/a/f/e/a/a/c0;->d:J

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;",
            "Lcom/google/android/gms/common/internal/BaseGmsClient<",
            "*>;I)",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    iget-boolean v0, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->b:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->d:[I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->f:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/ArrayUtils;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/ArrayUtils;->a([II)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->l:I

    .line 8
    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    if-ge p0, p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/a/f/e/a/a/c0;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object v2, v0, Le/m/a/f/e/a/a/c0;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v3, v0, Le/m/a/f/e/a/a/c0;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:Ljava/util/Map;

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabl;

    if-eqz v2, :cond_e

    .line 8
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    instance-of v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 10
    :cond_3
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-wide v4, v0, Le/m/a/f/e/a/a/c0;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v8

    .line 11
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGCoreServiceId()I

    move-result v19

    const/16 v9, 0x64

    if-eqz v1, :cond_8

    .line 12
    iget-boolean v10, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    and-int/2addr v4, v10

    .line 13
    iget v10, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->d:I

    .line 14
    iget v11, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->e:I

    .line 15
    iget v1, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->a:I

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->hasConnectionInfo()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v12

    if-nez v12, :cond_7

    iget v4, v0, Le/m/a/f/e/a/a/c0;->b:I

    .line 17
    invoke-static {v2, v3, v4}, Le/m/a/f/e/a/a/c0;->a(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    .line 18
    :cond_5
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    if-eqz v3, :cond_6

    .line 19
    iget-wide v3, v0, Le/m/a/f/e/a/a/c0;->d:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v8

    .line 20
    :goto_2
    iget v11, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    move v4, v5

    :cond_7
    move v2, v10

    move v3, v11

    goto :goto_3

    :cond_8
    const/16 v10, 0x1388

    move v1, v8

    move v3, v9

    move v2, v10

    .line 21
    :goto_3
    iget-object v5, v0, Le/m/a/f/e/a/a/c0;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_9

    move v11, v8

    move v12, v11

    goto :goto_6

    .line 23
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_4
    move v8, v9

    goto :goto_5

    .line 24
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v8

    .line 25
    instance-of v9, v8, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v9, :cond_c

    .line 26
    check-cast v8, Lcom/google/android/gms/common/api/ApiException;

    .line 27
    iget-object v8, v8, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 28
    iget v9, v8, Lcom/google/android/gms/common/api/Status;->b:I

    .line 29
    iget-object v8, v8, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v8, :cond_b

    goto :goto_4

    .line 30
    :cond_b
    iget v11, v8, Lcom/google/android/gms/common/ConnectionResult;->b:I

    goto :goto_4

    :cond_c
    const/16 v8, 0x65

    :goto_5
    move v12, v11

    move v11, v8

    :goto_6
    if-eqz v4, :cond_d

    .line 31
    iget-wide v6, v0, Le/m/a/f/e/a/a/c0;->d:J

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v13, v6

    move-wide v15, v8

    goto :goto_7

    :cond_d
    move-wide v13, v6

    move-wide v15, v13

    .line 33
    :goto_7
    new-instance v4, Lcom/google/android/gms/common/internal/MethodInvocation;

    iget v10, v0, Le/m/a/f/e/a/a/c0;->b:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v4

    .line 34
    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    int-to-long v14, v2

    .line 35
    iget-object v2, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    new-instance v5, Le/m/a/f/e/a/a/d0;

    move-object v11, v5

    move-object v12, v4

    move v13, v1

    move/from16 v16, v3

    .line 36
    invoke-direct/range {v11 .. v16}, Le/m/a/f/e/a/a/d0;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    const/16 v1, 0x12

    .line 37
    invoke-virtual {v2, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_8
    return-void
.end method
