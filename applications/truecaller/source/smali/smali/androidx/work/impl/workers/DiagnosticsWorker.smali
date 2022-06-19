.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static n(Ln3/m0/c0/s/k;Ln3/m0/c0/s/v;Ln3/m0/c0/s/h;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/c0/s/k;",
            "Ln3/m0/c0/s/v;",
            "Ln3/m0/c0/s/h;",
            "Ljava/util/List<",
            "Ln3/m0/c0/s/p;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Job Id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    .line 2
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/m0/c0/s/p;

    .line 5
    iget-object v3, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Ln3/m0/c0/s/i;

    invoke-virtual {v5, v3}, Ln3/m0/c0/s/i;->a(Ljava/lang/String;)Ln3/m0/c0/s/g;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget v3, v3, Ln3/m0/c0/s/g;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    .line 7
    :goto_1
    iget-object v6, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    move-object v7, p0

    check-cast v7, Ln3/m0/c0/s/l;

    .line 8
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 9
    invoke-static {v8, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v8

    if-nez v6, :cond_1

    .line 10
    invoke-virtual {v8, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v8, v1, v6}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 12
    :goto_2
    iget-object v6, v7, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v6}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 13
    iget-object v6, v7, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-static {v6, v8, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 14
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 16
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 18
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 20
    iget-object v5, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ln3/m0/c0/s/w;

    invoke-virtual {v7, v5}, Ln3/m0/c0/s/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v7, ","

    .line 21
    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 23
    iget-object v8, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, v2, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    aput-object v8, v7, v1

    const/4 v8, 0x2

    aput-object v3, v7, v8

    iget-object v2, v2, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object v5, v7, v2

    const-string v2, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    .line 25
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 27
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 29
    throw p0

    .line 30
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 38

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->d()Ln3/m0/c0/s/k;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()Ln3/m0/c0/s/v;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 8
    move-object v6, v1

    check-cast v6, Ln3/m0/c0/s/t;

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v8, 0x1

    .line 10
    invoke-static {v7, v8}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v8, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 12
    iget-object v4, v6, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v4}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 13
    iget-object v4, v6, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v7, v6, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v5, "required_network_type"

    .line 14
    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v9, "requires_charging"

    .line 15
    invoke-static {v4, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "requires_device_idle"

    .line 16
    invoke-static {v4, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "requires_battery_not_low"

    .line 17
    invoke-static {v4, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "requires_storage_not_low"

    .line 18
    invoke-static {v4, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "trigger_content_update_delay"

    .line 19
    invoke-static {v4, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "trigger_max_content_delay"

    .line 20
    invoke-static {v4, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "content_uri_triggers"

    .line 21
    invoke-static {v4, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v8, "id"

    .line 22
    invoke-static {v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v6, "state"

    .line 23
    invoke-static {v4, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v16, v0

    const-string v0, "worker_class_name"

    .line 24
    invoke-static {v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v2

    const-string v2, "input_merger_class_name"

    .line 25
    invoke-static {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v18, v3

    const-string v3, "input"

    .line 26
    invoke-static {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v19, v1

    const-string v1, "output"

    .line 27
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v7

    :try_start_1
    const-string v7, "initial_delay"

    .line 28
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v21, v7

    const-string v7, "interval_duration"

    .line 29
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v22, v7

    const-string v7, "flex_duration"

    .line 30
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v23, v7

    const-string v7, "run_attempt_count"

    .line 31
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v24, v7

    const-string v7, "backoff_policy"

    .line 32
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v25, v7

    const-string v7, "backoff_delay_duration"

    .line 33
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v26, v7

    const-string v7, "period_start_time"

    .line 34
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v27, v7

    const-string v7, "minimum_retention_duration"

    .line 35
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v28, v7

    const-string v7, "schedule_requested_at"

    .line 36
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v29, v7

    const-string v7, "run_in_foreground"

    .line 37
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v30, v7

    const-string v7, "out_of_quota_policy"

    .line 38
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v31, v7

    .line 39
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v32, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v33, v8

    .line 42
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v34, v0

    .line 43
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0}, Ln3/m0/d;-><init>()V

    .line 44
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v36, v5

    .line 45
    invoke-static/range {v35 .. v35}, Ln3/g0/y;->O0(I)Ln3/m0/q;

    move-result-object v5

    .line 46
    iput-object v5, v0, Ln3/m0/d;->a:Ln3/m0/q;

    .line 47
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_1
    iput-boolean v5, v0, Ln3/m0/d;->b:Z

    .line 49
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 50
    :goto_2
    iput-boolean v5, v0, Ln3/m0/d;->c:Z

    .line 51
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 52
    :goto_3
    iput-boolean v5, v0, Ln3/m0/d;->d:Z

    .line 53
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    .line 54
    :goto_4
    iput-boolean v5, v0, Ln3/m0/d;->e:Z

    move v5, v9

    move/from16 v35, v10

    .line 55
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 56
    iput-wide v9, v0, Ln3/m0/d;->f:J

    .line 57
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 58
    iput-wide v9, v0, Ln3/m0/d;->g:J

    .line 59
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 60
    invoke-static {v9}, Ln3/g0/y;->q([B)Ln3/m0/e;

    move-result-object v9

    .line 61
    iput-object v9, v0, Ln3/m0/d;->h:Ln3/m0/e;

    .line 62
    new-instance v9, Ln3/m0/c0/s/p;

    invoke-direct {v9, v1, v8}, Ln3/m0/c0/s/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 64
    invoke-static {v1}, Ln3/g0/y;->Q0(I)Ln3/m0/x$a;

    move-result-object v1

    iput-object v1, v9, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 65
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    .line 66
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 67
    invoke-static {v1}, Ln3/m0/f;->a([B)Ln3/m0/f;

    move-result-object v1

    iput-object v1, v9, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    move/from16 v1, v32

    .line 68
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 69
    invoke-static {v8}, Ln3/m0/f;->a([B)Ln3/m0/f;

    move-result-object v8

    iput-object v8, v9, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    move/from16 v32, v1

    move v10, v2

    move/from16 v8, v21

    .line 70
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Ln3/m0/c0/s/p;->g:J

    move/from16 v21, v3

    move/from16 v1, v22

    .line 71
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Ln3/m0/c0/s/p;->h:J

    move/from16 v22, v5

    move v3, v6

    move/from16 v2, v23

    .line 72
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v9, Ln3/m0/c0/s/p;->i:J

    move/from16 v5, v24

    .line 73
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v9, Ln3/m0/c0/s/p;->k:I

    move/from16 v6, v25

    .line 74
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v1

    .line 75
    invoke-static/range {v23 .. v23}, Ln3/g0/y;->N0(I)Ln3/m0/a;

    move-result-object v1

    iput-object v1, v9, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    move/from16 v23, v2

    move/from16 v25, v3

    move/from16 v1, v26

    .line 76
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Ln3/m0/c0/s/p;->m:J

    move v3, v5

    move/from16 v26, v6

    move/from16 v2, v27

    .line 77
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v9, Ln3/m0/c0/s/p;->n:J

    move v6, v1

    move/from16 v27, v2

    move/from16 v5, v28

    .line 78
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Ln3/m0/c0/s/p;->o:J

    move/from16 v28, v3

    move/from16 v1, v29

    .line 79
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Ln3/m0/c0/s/p;->p:J

    move/from16 v2, v30

    .line 80
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 81
    :goto_5
    iput-boolean v3, v9, Ln3/m0/c0/s/p;->q:Z

    move/from16 v3, v31

    .line 82
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v1

    .line 83
    invoke-static/range {v29 .. v29}, Ln3/g0/y;->P0(I)Ln3/m0/t;

    move-result-object v1

    iput-object v1, v9, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    .line 84
    iput-object v0, v9, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 85
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v31, v3

    move/from16 v3, v21

    move/from16 v9, v22

    move/from16 v22, v24

    move/from16 v24, v28

    move/from16 v29, v30

    move/from16 v0, v34

    move/from16 v30, v2

    move/from16 v28, v5

    move/from16 v21, v8

    move v2, v10

    move/from16 v8, v33

    move/from16 v10, v35

    move/from16 v5, v36

    move/from16 v37, v26

    move/from16 v26, v6

    move/from16 v6, v25

    move/from16 v25, v37

    goto/16 :goto_0

    .line 86
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-virtual/range {v20 .. v20}, Ln3/c0/y;->l()V

    .line 88
    move-object/from16 v1, v19

    check-cast v1, Ln3/m0/c0/s/t;

    invoke-virtual {v1}, Ln3/m0/c0/s/t;->f()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xc8

    .line 89
    invoke-virtual {v1, v2}, Ln3/m0/c0/s/t;->d(I)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 91
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Throwable;

    const-string v6, "Recently completed work:\n\n"

    invoke-virtual {v2, v3, v6, v5}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 92
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    .line 93
    invoke-static {v5, v6, v8, v7}, Landroidx/work/impl/workers/DiagnosticsWorker;->n(Ln3/m0/c0/s/k;Ln3/m0/c0/s/v;Ln3/m0/c0/s/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Throwable;

    .line 94
    invoke-virtual {v2, v3, v7, v9}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    .line 95
    :goto_6
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 96
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Throwable;

    const-string v9, "Running work:\n\n"

    invoke-virtual {v2, v3, v9, v7}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 97
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    invoke-static {v5, v6, v8, v0}, Landroidx/work/impl/workers/DiagnosticsWorker;->n(Ln3/m0/c0/s/k;Ln3/m0/c0/s/v;Ln3/m0/c0/s/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v7}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    :cond_7
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Throwable;

    const-string v7, "Enqueued work:\n\n"

    invoke-virtual {v0, v2, v7, v3}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 100
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    .line 101
    invoke-static {v5, v6, v8, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->n(Ln3/m0/c0/s/k;Ln3/m0/c0/s/v;Ln3/m0/c0/s/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 102
    invoke-virtual {v0, v2, v1, v3}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 103
    :cond_8
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v20, v7

    .line 104
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual/range {v20 .. v20}, Ln3/c0/y;->l()V

    .line 106
    throw v0
.end method
