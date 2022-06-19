.class public Le/h/a/c/i0;
.super Le/h/a/c/l;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Le/h/a/c/w;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Le/h/a/c/f0;

.field public final e:Le/h/a/c/a1/c;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/w;Le/h/a/c/a1/c;Le/h/a/c/f0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/h/a/c/l;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/h/a/c/i0;->a:J

    .line 3
    iput-object p1, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iput-object p2, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 5
    iput-object p3, p0, Le/h/a/c/i0;->e:Le/h/a/c/a1/c;

    .line 6
    iput-object p4, p0, Le/h/a/c/i0;->d:Le/h/a/c/f0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Le/h/a/c/w;->d:I

    .line 3
    invoke-virtual {v0, v1}, Le/h/a/c/w;->d(Z)V

    .line 4
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 5
    iget-boolean v2, v0, Le/h/a/c/w;->g:Z

    if-eqz v2, :cond_0

    .line 6
    iput-boolean v1, v0, Le/h/a/c/w;->g:Z

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Session destroyed; Session ID is now 0"

    .line 9
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 11
    monitor-enter v0

    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, v0, Le/h/a/c/w;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    monitor-exit v0

    .line 14
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_1
    iput-object v1, v0, Le/h/a/c/w;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    monitor-exit v0

    .line 18
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_2
    iput-object v1, v0, Le/h/a/c/w;->r:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit v0

    .line 22
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_3
    iput-object v1, v0, Le/h/a/c/w;->s:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    .line 27
    monitor-exit v0

    throw v1

    :catchall_3
    move-exception v1

    .line 28
    monitor-exit v0

    throw v1
.end method

.method public b(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    invoke-virtual {v0}, Le/h/a/c/w;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/h/a/c/w;->f:Z

    .line 4
    iget-object v0, p0, Le/h/a/c/i0;->e:Le/h/a/c/a1/c;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Le/h/a/c/a1/c;->a:Ljava/util/ArrayList;

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 7
    iget-object v2, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 8
    iput v0, v2, Le/h/a/c/w;->d:I

    .line 9
    iget-object v0, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v2, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Session created with ID: "

    .line 11
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 12
    iget v4, v4, Le/h/a/c/w;->d:I

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 16
    iget-object v2, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "lastSessionId"

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result v2

    .line 17
    iget-object v5, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "sexe"

    invoke-static {p1, v5, v6, v4}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 18
    iget-object v4, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    sub-int/2addr p1, v2

    .line 19
    iput p1, v4, Le/h/a/c/w;->m:I

    .line 20
    :cond_1
    iget-object p1, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v4, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, "Last session length: "

    .line 22
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 23
    iget v6, v6, Le/h/a/c/w;->m:I

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {p1, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 26
    iget-object p1, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 27
    iput-boolean v1, p1, Le/h/a/c/w;->g:Z

    .line 28
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/i0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 29
    invoke-static {v0, v3}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/i0;->b:Le/h/a/c/w;

    .line 30
    iget v1, v1, Le/h/a/c/w;->d:I

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 32
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
