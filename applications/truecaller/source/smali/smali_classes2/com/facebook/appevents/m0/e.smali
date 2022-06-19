.class public final synthetic Lcom/facebook/appevents/m0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/m0/e;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/m0/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/facebook/appevents/m0/e;->a:J

    iget-object v2, p0, Lcom/facebook/appevents/m0/e;->b:Ljava/lang/String;

    const-string v3, "$activityName"

    .line 1
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcom/facebook/appevents/m0/l;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {v3, v0, v4, v4, v1}, Lcom/facebook/appevents/m0/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;I)V

    sput-object v3, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/appevents/m0/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    .line 5
    sget-object v0, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    sget-object v0, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    sget-object v1, Lcom/facebook/appevents/m0/f;->i:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/facebook/appevents/m0/m;->d(Ljava/lang/String;Lcom/facebook/appevents/m0/l;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 9
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 10
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    sput-object v4, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    .line 19
    :cond_1
    sget-object v0, Lcom/facebook/appevents/m0/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object v4, Lcom/facebook/appevents/m0/f;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
