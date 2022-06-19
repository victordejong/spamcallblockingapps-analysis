.class public Lcom/appnext/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dZ:Ljava/lang/String; = "m"

.field private static volatile ea:Lcom/appnext/core/m;


# instance fields
.field private aM:Landroid/content/Context;

.field private cv:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/appnext/core/m;->aM:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "sp_response_preferences"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static l(Landroid/content/Context;)Lcom/appnext/core/m;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/m;->ea:Lcom/appnext/core/m;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/m;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/m;->ea:Lcom/appnext/core/m;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/appnext/core/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/m;->ea:Lcom/appnext/core/m;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/core/m;->ea:Lcom/appnext/core/m;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    const/4 p2, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_0
    return p2

    :catchall_0
    move-exception p1

    const-string v0, "SPResponse$getInt"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 1

    const-wide/16 p2, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :cond_0
    return-wide p2

    :catchall_0
    move-exception p1

    const-string v0, "SPResponse$getLong"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide p2
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "SPResponse$putInt"

    .line 6
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "SPResponse$putLong"

    .line 3
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object p2

    :catchall_0
    move-exception p1

    const-string v0, "SPResponse$getString"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/m;->cv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "SPResponse$putString"

    .line 3
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
