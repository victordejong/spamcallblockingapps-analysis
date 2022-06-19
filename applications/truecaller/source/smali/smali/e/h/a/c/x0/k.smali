.class public Le/h/a/c/x0/k;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/h/a/c/k;

.field public final c:Le/h/a/c/x0/c;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Le/h/a/c/g0;

.field public final f:Le/h/a/c/v;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;Le/h/a/c/k;Le/h/a/c/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/k;->c:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/k;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iput-object p4, p0, Le/h/a/c/x0/k;->b:Le/h/a/c/k;

    .line 5
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/k;->e:Le/h/a/c/g0;

    .line 6
    iget-object p1, p3, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Le/h/a/c/x0/k;->a:Ljava/lang/Object;

    .line 8
    iput-object p5, p0, Le/h/a/c/x0/k;->f:Le/h/a/c/v;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/k;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/h/a/c/x0/k;->e:Le/h/a/c/g0;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing inbox messages"

    .line 5
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/h/a/c/x0/k;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Le/h/a/c/x0/k;->e:Le/h/a/c/g0;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Inbox: Processing response"

    .line 9
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inbox_notifs"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Le/h/a/c/x0/k;->e:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/k;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Inbox: Response JSON object doesn\'t contain the inbox key"

    .line 13
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/h/a/c/x0/k;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    :try_start_0
    const-string v0, "inbox_notifs"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/h/a/c/x0/k;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, p0, Le/h/a/c/x0/k;->f:Le/h/a/c/v;

    .line 18
    iget-object v3, v2, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-nez v3, :cond_2

    .line 19
    invoke-virtual {v2}, Le/h/a/c/v;->a()V

    .line 20
    :cond_2
    iget-object v2, p0, Le/h/a/c/x0/k;->f:Le/h/a/c/v;

    .line 21
    iget-object v2, v2, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v2, v0}, Le/h/a/c/r0/h;->e(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Le/h/a/c/x0/k;->b:Le/h/a/c/k;

    check-cast v0, Le/h/a/c/o;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catchall_1
    iget-object v0, p0, Le/h/a/c/x0/k;->e:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/k;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_0
    iget-object v0, p0, Le/h/a/c/x0/k;->c:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
