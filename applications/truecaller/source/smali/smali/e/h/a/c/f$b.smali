.class public Le/h/a/c/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/f;->m(Landroid/os/Bundle;)V
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
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Le/h/a/c/f;


# direct methods
.method public constructor <init>(Le/h/a/c/f;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/f$b;->b:Le/h/a/c/f;

    iput-object p2, p0, Le/h/a/c/f$b;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f$b;->a:Landroid/os/Bundle;

    const-string v1, "wzrk_inbox"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "inbox_notifs"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Le/h/a/c/f$b;->a:Landroid/os/Bundle;

    const-string v4, "wzrk_inbox"

    .line 7
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "_id"

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 10
    iget-object v1, p0, Le/h/a/c/f$b;->b:Le/h/a/c/f;

    .line 11
    iget-object v2, v1, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v3, v1, Le/h/a/c/f;->a:Le/h/a/c/m;

    .line 13
    iget-object v4, v1, Le/h/a/c/f;->d:Le/h/a/c/k;

    .line 14
    iget-object v1, v1, Le/h/a/c/f;->g:Le/h/a/c/v;

    .line 15
    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v5

    .line 16
    iget-object v3, v3, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 17
    iget-object v6, p0, Le/h/a/c/f$b;->b:Le/h/a/c/f;

    .line 18
    iget-object v6, v6, Le/h/a/c/f;->f:Landroid/content/Context;

    .line 19
    iget-boolean v6, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v6, :cond_0

    .line 20
    iget-object v0, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "CleverTap instance is configured to analytics only, not processing inbox messages"

    .line 21
    invoke-virtual {v5, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v6, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, "Inbox: Processing response"

    .line 23
    invoke-virtual {v5, v6, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "inbox_notifs"

    .line 24
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 25
    iget-object v0, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Inbox: Response JSON object doesn\'t contain the inbox key"

    .line 26
    invoke-virtual {v5, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "inbox_notifs"

    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v2, v1, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-nez v2, :cond_2

    .line 30
    invoke-virtual {v1}, Le/h/a/c/v;->a()V

    .line 31
    :cond_2
    iget-object v1, v1, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {v1, v0}, Le/h/a/c/r0/h;->e(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    check-cast v4, Le/h/a/c/o;

    .line 34
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
