.class public Le/a/h/q0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/q0/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    const-string p1, "missedCallReminders"

    .line 3
    invoke-static {p1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    new-instance v1, Le/a/h/q0/b;

    invoke-direct {v1, p0}, Le/a/h/q0/b;-><init>(Le/a/h/q0/c;)V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_1
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    .line 9
    invoke-virtual {p0, v1}, Le/a/h/q0/c;->g(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V

    goto :goto_2

    .line 10
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b(Landroid/content/Context;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Le/a/h/q0/c;->e(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V

    .line 3
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/h/q0/c;->f()V

    :cond_0
    return-void
.end method

.method public c(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 12

    const-string v0, "showMissedCallReminders"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/truecaller/TrueApp;

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Le/a/l4/k;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    iget-object v3, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v6

    const-string v4, "timestamp"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "timestamp > ? AND type=2 AND normalized_number=?"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .line 6
    iget-wide v10, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 7
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    aput-object v0, v9, v1

    const/4 v10, 0x0

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_3

    .line 10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 11
    :try_start_1
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 12
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_4
    new-instance v1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    .line 14
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 15
    iget-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 16
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    invoke-virtual {p0, v1}, Le/a/h/q0/c;->g(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V

    .line 18
    iget-object p1, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Le/a/h/q0/c;->f()V

    goto :goto_3

    :goto_2
    if-eqz v3, :cond_5

    .line 20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_5
    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    .line 3
    invoke-virtual {p0, v2}, Le/a/h/q0/c;->e(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    invoke-virtual {p0}, Le/a/h/q0/c;->f()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final e(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x22000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000000

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b(Landroid/content/Context;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    iget p1, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    invoke-static {v2, p1, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    iget-object v2, p0, Le/a/h/q0/c;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "missedCallReminders"

    .line 5
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const-string v0, "missedCallReminders"

    .line 7
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b(Landroid/content/Context;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    iget v3, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    invoke-static {v2, v3, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    add-long v6, v0, v2

    .line 5
    iget-object p1, p0, Le/a/h/q0/c;->a:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/AlarmManager;

    const/4 v5, 0x1

    const-wide/32 v8, 0x36ee80

    .line 6
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
