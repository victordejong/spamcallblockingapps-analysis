.class public Le/h/a/c/w0/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/w0/i;->n(Landroid/content/Context;Landroid/app/job/JobParameters;)V
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/app/job/JobParameters;

.field public final synthetic c:Le/h/a/c/w0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/i;Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    iput-object p2, p0, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    iput-object p3, p0, Le/h/a/c/w0/i$c;->b:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    invoke-virtual {v0}, Le/h/a/c/w0/i;->l()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 3
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 8
    iget-object v4, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Le/h/a/c/w0/i;->e(Le/h/a/c/w0/i;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 9
    iget-object v3, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    const-string v4, "22:00"

    invoke-static {v3, v4}, Le/h/a/c/w0/i;->e(Le/h/a/c/w0/i;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 10
    iget-object v4, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    const-string v5, "06:00"

    invoke-static {v4, v5}, Le/h/a/c/w0/i;->e(Le/h/a/c/w0/i;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 11
    iget-object v5, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 12
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 16
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 19
    invoke-virtual {v4, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_2

    .line 20
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    const/4 v7, 0x5

    if-gez v3, :cond_1

    .line 21
    invoke-virtual {v6, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 22
    :cond_1
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 23
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 24
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 25
    iget-object v0, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 26
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    goto/16 :goto_3

    .line 28
    :cond_4
    iget-object v0, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 29
    iget-object v0, v0, Le/h/a/c/w0/i;->e:Le/h/a/c/l0/a;

    .line 30
    iget-object v3, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v3

    .line 31
    monitor-enter v3

    :try_start_0
    const-string v6, "uninstallTimestamp"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v14, 0x0

    .line 32
    :try_start_1
    iget-object v0, v3, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "created_at DESC"

    const-string v13, "1"

    .line 33
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .line 34
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "created_at"

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_5
    move-wide v6, v14

    .line 36
    :goto_1
    :try_start_3
    iget-object v0, v3, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-object v5, v2

    .line 37
    :catch_1
    :try_start_4
    invoke-virtual {v3}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    :try_start_5
    iget-object v0, v3, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    move-wide v6, v14

    if-eqz v5, :cond_6

    .line 40
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 41
    :cond_6
    monitor-exit v3

    cmp-long v0, v6, v14

    if-eqz v0, :cond_7

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_a

    .line 43
    :cond_7
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "bk"

    .line 44
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    iget-object v3, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 46
    iget-object v3, v3, Le/h/a/c/w0/i;->d:Le/h/a/c/f;

    .line 47
    iget-object v4, v3, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v3, v3, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v5, 0x2

    .line 48
    invoke-virtual {v4, v3, v0, v5}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;

    const/high16 v0, 0x8000000

    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_8

    const/high16 v0, 0xa000000

    .line 50
    :cond_8
    iget-object v3, v1, Le/h/a/c/w0/i$c;->b:Landroid/app/job/JobParameters;

    if-nez v3, :cond_a

    .line 51
    iget-object v3, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    iget-object v4, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    .line 52
    invoke-virtual {v3, v4}, Le/h/a/c/w0/i;->j(Landroid/content/Context;)I

    move-result v3

    .line 53
    iget-object v4, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    const-string v5, "alarm"

    .line 54
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/app/AlarmManager;

    .line 55
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.clevertap.BG_EVENT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v6, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v6, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    iget-object v7, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 58
    iget-object v7, v7, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 59
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v6, v7, v4, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v5, :cond_9

    .line 61
    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.clevertap.BG_EVENT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v6, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v6, v1, Le/h/a/c/w0/i$c;->a:Landroid/content/Context;

    iget-object v7, v1, Le/h/a/c/w0/i$c;->c:Le/h/a/c/w0/i;

    .line 65
    iget-object v7, v7, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 66
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v6, v7, v4, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    if-eqz v5, :cond_a

    const/4 v0, -0x1

    if-eq v3, v0, :cond_a

    const/4 v6, 0x2

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v3, v3

    const-wide/32 v9, 0xea60

    mul-long/2addr v9, v3

    add-long/2addr v7, v9

    .line 69
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_a
    :goto_3
    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v5

    .line 70
    :goto_4
    :try_start_7
    iget-object v4, v3, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz v2, :cond_b

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_b
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0
.end method
