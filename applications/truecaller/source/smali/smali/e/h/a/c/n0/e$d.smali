.class public Le/h/a/c/n0/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/e;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;Lorg/json/JSONObject;ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    iput-object p2, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    iput p3, p0, Le/h/a/c/n0/e$d;->b:I

    iput-object p4, p0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 2
    iget-object v0, v0, Le/h/a/c/n0/e;->h:Le/h/a/c/n0/d;

    .line 3
    iget-object v1, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    iget v2, p0, Le/h/a/c/n0/e$d;->b:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v2, v0, Le/h/a/c/n0/d;->a:Le/h/a/c/w;

    .line 6
    iget-object v6, v2, Le/h/a/c/w;->n:Ljava/lang/Object;

    monitor-enter v6

    .line 7
    :try_start_0
    iget-boolean v2, v2, Le/h/a/c/w;->e:Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_0
    iget-object v2, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v0, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current user is opted out dropping event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 13
    iget-object v6, v0, Le/h/a/c/n0/d;->c:Landroid/content/Context;

    iget-object v7, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v8, "comms_mtd"

    invoke-static {v6, v7, v8, v5}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result v6

    sub-int/2addr v2, v6

    const v6, 0x15180

    if-ge v2, v6, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-eqz v2, :cond_4

    .line 14
    iget-object v2, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v0, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v6, "CleverTap is muted, dropping event - "

    .line 16
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v5

    :goto_4
    if-eqz v0, :cond_5

    goto/16 :goto_7

    .line 17
    :cond_5
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 18
    iget-object v0, v0, Le/h/a/c/n0/e;->h:Le/h/a/c/n0/d;

    .line 19
    iget-object v1, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    iget v2, p0, Le/h/a/c/n0/e$d;->b:I

    .line 20
    iget-object v6, v0, Le/h/a/c/n0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-boolean v6, v6, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const-string v6, "evtName"

    .line 22
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 23
    :try_start_1
    sget-object v7, Le/h/a/c/u;->a:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_7

    goto :goto_6

    :catch_0
    :cond_7
    const/4 v1, 0x4

    if-ne v2, v1, :cond_8

    .line 24
    iget-object v0, v0, Le/h/a/c/n0/d;->a:Le/h/a/c/w;

    invoke-virtual {v0}, Le/h/a/c/w;->c()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    :goto_5
    move v5, v3

    :goto_6
    if-eqz v5, :cond_9

    .line 25
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 26
    iget-object v0, v0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 28
    iget-object v1, v1, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 29
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "App Launched not yet processed, re-queuing event "

    .line 30
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "after 2s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 32
    iget-object v0, v0, Le/h/a/c/n0/e;->l:Le/h/a/c/y0/e;

    .line 33
    new-instance v1, Le/h/a/c/n0/f;

    invoke-direct {v1, p0}, Le/h/a/c/n0/f;-><init>(Le/h/a/c/n0/e$d;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 34
    :cond_9
    iget v0, p0, Le/h/a/c/n0/e$d;->b:I

    if-ne v0, v4, :cond_a

    .line 35
    iget-object v1, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    iget-object v2, p0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Le/h/a/c/n0/e;->e(Landroid/content/Context;Lorg/json/JSONObject;I)V

    goto :goto_7

    .line 36
    :cond_a
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 37
    iget-object v0, v0, Le/h/a/c/n0/e;->n:Le/h/a/c/i0;

    .line 38
    iget-object v1, p0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/h/a/c/i0;->b(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    invoke-virtual {v0}, Le/h/a/c/n0/e;->c()V

    .line 40
    iget-object v0, p0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    iget-object v1, p0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    iget v3, p0, Le/h/a/c/n0/e$d;->b:I

    invoke-virtual {v0, v1, v2, v3}, Le/h/a/c/n0/e;->e(Landroid/content/Context;Lorg/json/JSONObject;I)V

    :goto_7
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 41
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
