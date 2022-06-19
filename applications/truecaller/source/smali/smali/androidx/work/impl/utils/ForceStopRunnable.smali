.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/m0/c0/l;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:I

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 3
    :goto_0
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->e:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 2
    sget-object v2, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    const-string v2, "jobscheduler"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 4
    invoke-static {v0, v2}, Ln3/m0/c0/p/c/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v3, v1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v3

    check-cast v3, Ln3/m0/c0/s/i;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v5, 0x0

    .line 8
    invoke-static {v4, v5}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v4

    .line 9
    iget-object v6, v3, Ln3/m0/c0/s/i;->a:Ln3/c0/q;

    invoke-virtual {v6}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 10
    iget-object v3, v3, Ln3/m0/c0/s/i;->a:Ln3/c0/q;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 11
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v4}, Ln3/c0/y;->l()V

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v5

    .line 18
    :goto_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 21
    invoke-static {v3}, Ln3/m0/c0/p/c/b;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 23
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, Ln3/m0/c0/p/c/b;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 27
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v2, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Throwable;

    const-string v8, "Reconciling jobs"

    invoke-virtual {v0, v2, v8, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    const-wide/16 v8, -0x1

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, v1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 29
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 30
    :try_start_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v2

    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    move-object v10, v2

    check-cast v10, Ln3/m0/c0/s/t;

    :try_start_2
    invoke-virtual {v10, v7, v8, v9}, Ln3/m0/c0/s/t;->n(Ljava/lang/String;J)I

    goto :goto_4

    .line 33
    :cond_6
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 35
    throw v0

    .line 36
    :cond_7
    :goto_5
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 37
    iget-object v1, v1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 38
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v2

    .line 39
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->e()Ln3/m0/c0/s/n;

    move-result-object v4

    .line 40
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 41
    check-cast v2, Ln3/m0/c0/s/t;

    :try_start_3
    invoke-virtual {v2}, Ln3/m0/c0/s/t;->f()Ljava/util/List;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    check-cast v7, Ljava/util/ArrayList;

    :try_start_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v3

    if-eqz v10, :cond_8

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/m0/c0/s/p;

    .line 44
    sget-object v12, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    new-array v13, v3, [Ljava/lang/String;

    iget-object v14, v11, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    aput-object v14, v13, v5

    invoke-virtual {v2, v12, v13}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 45
    iget-object v11, v11, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v11, v8, v9}, Ln3/m0/c0/s/t;->n(Ljava/lang/String;J)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 46
    :cond_8
    check-cast v4, Ln3/m0/c0/s/o;

    :try_start_5
    invoke-virtual {v4}, Ln3/m0/c0/s/o;->b()V

    .line 47
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 48
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    if-nez v10, :cond_a

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v5

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v3

    .line 49
    :goto_8
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 50
    iget-object v1, v1, Ln3/m0/c0/l;->g:Ln3/m0/c0/t/i;

    .line 51
    iget-object v1, v1, Ln3/m0/c0/t/i;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()Ln3/m0/c0/s/e;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/s/f;

    const-string v2, "reschedule_needed"

    invoke-virtual {v1, v2}, Ln3/m0/c0/s/f;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_b

    move v1, v3

    goto :goto_9

    :cond_b
    move v1, v5

    :goto_9
    if-eqz v1, :cond_c

    .line 53
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    const-string v4, "Rescheduling Workers."

    invoke-virtual {v0, v1, v4, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 54
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    invoke-virtual {v0}, Ln3/m0/c0/l;->q()V

    .line 55
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 56
    iget-object v0, v0, Ln3/m0/c0/l;->g:Ln3/m0/c0/t/i;

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ln3/m0/c0/s/d;

    invoke-direct {v1, v2, v5}, Ln3/m0/c0/s/d;-><init>(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, v0, Ln3/m0/c0/t/i;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Ln3/m0/c0/s/e;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/f;

    invoke-virtual {v0, v1}, Ln3/m0/c0/s/f;->b(Ln3/m0/c0/s/d;)V

    goto/16 :goto_d

    :cond_c
    const/high16 v1, 0x20000000

    .line 60
    :try_start_6
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->I0()Z

    move-result v2

    if-eqz v2, :cond_d

    const/high16 v1, 0x22000000

    .line 61
    :cond_d
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_10

    if-eqz v1, :cond_e

    .line 63
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 64
    :cond_e
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    const-string v2, "activity"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 66
    invoke-virtual {v1, v6, v5, v5}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v5

    .line 68
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    .line 70
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    if-nez v1, :cond_11

    .line 71
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/utils/ForceStopRunnable;->d(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    :cond_11
    move v3, v5

    goto :goto_c

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    .line 72
    :goto_b
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Throwable;

    aput-object v1, v6, v5

    const-string v1, "Ignoring exception"

    invoke-virtual {v2, v4, v1, v6}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_c
    if-eqz v3, :cond_12

    .line 73
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Throwable;

    const-string v3, "Application was force-stopped, rescheduling."

    invoke-virtual {v0, v1, v3, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    invoke-virtual {v0}, Ln3/m0/c0/l;->q()V

    goto :goto_d

    :cond_12
    if-eqz v0, :cond_13

    .line 75
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Throwable;

    const-string v3, "Found unfinished work, scheduling it."

    invoke-virtual {v0, v1, v3, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 76
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 77
    iget-object v1, v0, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 78
    iget-object v2, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 79
    iget-object v0, v0, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 80
    invoke-static {v1, v2, v0}, Ln3/m0/c0/f;->a(Ln3/m0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_13
    :goto_d
    return-void

    :catchall_1
    move-exception v0

    .line 81
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 82
    throw v0

    :catchall_2
    move-exception v0

    .line 83
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v4}, Ln3/c0/y;->l()V

    .line 85
    throw v0
.end method

.method public c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "The default process name was not specified."

    invoke-virtual {v0, v1, v4, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ln3/m0/c0/t/j;->a(Landroid/content/Context;Ln3/m0/c;)Z

    move-result v0

    .line 6
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "Is default app process = %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method

.method public run()V
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    invoke-virtual {v0}, Ln3/m0/c0/l;->p()V

    return-void

    .line 3
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Landroid/content/Context;

    invoke-static {v0}, Ln3/m0/c0/k;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    const-string v2, "Performing cleanup operations."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    invoke-virtual {v0}, Ln3/m0/c0/l;->p()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 7
    :goto_1
    :try_start_3
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:I

    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    const-string v1, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 8
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v1, v2}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    .line 11
    iget-object v0, v0, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    throw v2

    :cond_1
    int-to-long v4, v1

    const-wide/16 v6, 0x12c

    mul-long/2addr v4, v6

    .line 14
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v8, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    const-string v9, "Retrying after %s"

    new-array v10, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v0, v2, v3

    invoke-virtual {v1, v8, v4, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16
    iget v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    .line 17
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Ln3/m0/c0/l;

    invoke-virtual {v1}, Ln3/m0/c0/l;->p()V

    .line 19
    throw v0
.end method
