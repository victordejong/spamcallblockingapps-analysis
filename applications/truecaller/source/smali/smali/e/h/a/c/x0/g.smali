.class public Le/h/a/c/x0/g;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/h/a/c/k;

.field public final c:Le/h/a/c/x0/c;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Le/h/a/c/v;

.field public final f:Le/h/a/c/g0;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;Le/h/a/c/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/h/a/c/x0/g;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/h/a/c/x0/g;->c:Le/h/a/c/x0/c;

    .line 4
    iput-object p2, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    .line 6
    iput-object p3, p0, Le/h/a/c/x0/g;->b:Le/h/a/c/k;

    .line 7
    iput-object p4, p0, Le/h/a/c/x0/g;->e:Le/h/a/c/v;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Processing Display Unit items..."

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing Display Unit response"

    .line 8
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/x0/g;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    .line 11
    iget-object p2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "DisplayUnit : Can\'t parse Display Unit Response, JSON response object is null"

    .line 12
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "adUnit_notifs"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v0, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "DisplayUnit : JSON object doesn\'t contain the Display Units key"

    .line 16
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Le/h/a/c/x0/g;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 18
    :cond_2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "DisplayUnit : Processing Display Unit response"

    .line 20
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/h/a/c/x0/g;->b(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    iget-object v0, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    iget-object v0, p0, Le/h/a/c/x0/g;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lorg/json/JSONArray;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/x0/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/h/a/c/x0/g;->e:Le/h/a/c/v;

    .line 4
    iget-object v2, v1, Le/h/a/c/v;->c:Le/h/a/c/m0/a;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Le/h/a/c/m0/a;

    invoke-direct {v2}, Le/h/a/c/m0/a;-><init>()V

    .line 6
    iput-object v2, v1, Le/h/a/c/v;->c:Le/h/a/c/m0/a;

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    iget-object v0, p0, Le/h/a/c/x0/g;->e:Le/h/a/c/v;

    .line 9
    iget-object v0, v0, Le/h/a/c/v;->c:Le/h/a/c/m0/a;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v1, v0, Le/h/a/c/m0/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    monitor-exit v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x0

    .line 16
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit;->a(Lorg/json/JSONObject;)Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit;

    move-result-object v4

    .line 18
    iget-object v5, v4, Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit;->d:Ljava/lang/String;

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    iget-object v5, v0, Le/h/a/c/m0/a;->a:Ljava/util/HashMap;

    .line 21
    iget-object v6, v4, Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit;->g:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p1, :cond_4

    move-object v1, v2

    :cond_4
    monitor-exit v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 26
    monitor-exit v0

    goto :goto_1

    .line 27
    :cond_5
    monitor-exit v0

    .line 28
    :goto_1
    iget-object p1, p0, Le/h/a/c/x0/g;->b:Le/h/a/c/k;

    check-cast p1, Le/h/a/c/o;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 31
    iget-object v0, p1, Le/h/a/c/o;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object p1, p1, Le/h/a/c/o;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object p1, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "DisplayUnit : No registered listener, failed to notify"

    .line 33
    invoke-virtual {v0, p1, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_6
    iget-object v0, p1, Le/h/a/c/o;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object p1, p1, Le/h/a/c/o;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object p1, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "DisplayUnit : No Display Units found"

    .line 36
    invoke-virtual {v0, p1, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_7
    monitor-exit v0

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    .line 38
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    .line 39
    :cond_7
    :goto_3
    iget-object p1, p0, Le/h/a/c/x0/g;->f:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/x0/g;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 40
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "DisplayUnit : Can\'t parse Display Units, jsonArray is either empty or null"

    .line 41
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
