.class public final synthetic Le/m/d/y/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public synthetic b:Ljava/lang/String;

.field public synthetic c:Le/m/d/y/q0$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Le/m/d/y/q0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/s;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Le/m/d/y/s;->b:Ljava/lang/String;

    iput-object p3, p0, Le/m/d/y/s;->c:Le/m/d/y/q0$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 10

    iget-object v0, p0, Le/m/d/y/s;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Le/m/d/y/s;->b:Ljava/lang/String;

    iget-object v2, p0, Le/m/d/y/s;->c:Le/m/d/y/q0$a;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Le/m/d/y/q0;

    move-result-object v3

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Le/m/d/y/g0;

    invoke-virtual {v5}, Le/m/d/y/g0;->a()Ljava/lang/String;

    move-result-object v5

    .line 3
    monitor-enter v3

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    sget v8, Le/m/d/y/q0$a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "token"

    .line 7
    invoke-virtual {v8, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "appVersion"

    .line 8
    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "timestamp"

    .line 9
    invoke-virtual {v8, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 11
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to encode token: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_0

    .line 12
    monitor-exit v3

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v6, v3, Le/m/d/y/q0;->a:Landroid/content/SharedPreferences;

    .line 13
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 14
    invoke-virtual {v3, v4, v1}, Le/m/d/y/q0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    :goto_1
    if-eqz v2, :cond_1

    .line 16
    iget-object v1, v2, Le/m/d/y/q0$a;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    .line 19
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 20
    iget-object v1, v1, Le/m/d/g;->b:Ljava/lang/String;

    const-string v2, "[DEFAULT]"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    const-string v2, "FirebaseMessaging"

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    .line 23
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 24
    iget-object v1, v1, Le/m/d/g;->b:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invoking onNewToken for app: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 26
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.messaging.NEW_TOKEN"

    .line 28
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "token"

    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Le/m/d/y/m;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Le/m/d/y/m;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v2, v1}, Le/m/d/y/m;->b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 31
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v3

    throw p1
.end method
