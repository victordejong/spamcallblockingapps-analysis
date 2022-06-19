.class public final Le/a/a/g/n;
.super Le/a/a/g/o;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/m;


# instance fields
.field public final W:Landroid/content/ContentResolver;

.field public final X:Le/a/a/i0;

.field public final Y:Le/a/a/g/g;

.field public final Z:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public final a0:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b0:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c0:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Le/a/a/g/p;

.field public final e0:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation
.end field

.field public final f0:Le/a/o5/b0;

.field public final g0:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/io/File;[Ljava/io/File;Le/a/a/i0;Le/a/a/g/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/a/g/b0;Le/a/a/r0/a;Le/a/o5/u1;Le/a/p5/m0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/a/g/p;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/b0;Lo3/a;Le/a/q2/i0;Lo3/a;Le/a/p5/j;Le/a/a/p0/e;Le/a/c/i/h/a;Le/a/c/c0/o;ZLo3/a;)V
    .locals 47
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
            value = "cache_dir"
        .end annotation
    .end param
    .param p3    # [Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
            value = "storage_dirs"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/io/File;",
            "[",
            "Ljava/io/File;",
            "Le/a/a/i0;",
            "Le/a/a/g/g;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;>;",
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;",
            "Lo3/a<",
            "Le/a/a/k/i;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Le/a/a/k/j;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a/k/m;",
            ">;",
            "Le/a/a/g/b0;",
            "Le/a/a/r0/a;",
            "Le/a/o5/u1;",
            "Le/a/p5/m0;",
            "Lo3/a<",
            "Le/a/a/w0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/n/r1;",
            ">;",
            "Lo3/a<",
            "Le/a/a/p0/k;",
            ">;",
            "Lo3/a<",
            "Le/a/a/f1/b;",
            ">;",
            "Le/a/a/g/p;",
            "Lo3/a<",
            "Le/a/c/i/m/f;",
            ">;",
            "Lo3/a<",
            "Le/a/c/b/j;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;",
            "Lo3/a<",
            "Le/a/a/p;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/d/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/m/a;",
            ">;",
            "Le/a/o5/b0;",
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;",
            "Le/a/q2/i0;",
            "Lo3/a<",
            "Le/a/m0/f;",
            ">;",
            "Le/a/p5/j;",
            "Le/a/a/p0/e;",
            "Le/a/c/i/h/a;",
            "Le/a/c/c0/o;",
            "Z",
            "Lo3/a<",
            "Le/a/a/p0/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p7

    move-object/from16 v10, p9

    move-object/from16 v9, p16

    move-object/from16 v8, p17

    move-object/from16 v7, p21

    move-object/from16 v6, p24

    move-object/from16 v5, p28

    move-object/from16 v4, p29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v36, v0

    move-object v0, v4

    move-object/from16 v4, p4

    move-object/from16 v37, v1

    move-object v1, v5

    move-object/from16 v5, p5

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v6, p6

    move-object v3, v7

    move-object/from16 v7, p7

    move-object/from16 v39, v4

    move-object v4, v8

    move-object/from16 v8, p8

    move-object/from16 v29, p9

    move-object/from16 v40, v5

    move-object v5, v9

    move-object/from16 v9, p10

    move-object/from16 v41, v6

    move-object v6, v10

    move-object/from16 v10, p11

    move-object/from16 v42, v7

    move-object v7, v11

    move-object/from16 v11, p12

    move-object/from16 v43, v8

    move-object v8, v12

    move-object/from16 v12, p13

    move-object/from16 v44, v9

    move-object v9, v13

    move-object/from16 v13, p14

    move-object/from16 v45, v10

    move-object v10, v14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v20, p22

    move-object/from16 v21, p23

    move-object/from16 v22, p24

    move-object/from16 v23, p25

    move-object/from16 v24, p26

    move-object/from16 v26, p27

    move-object/from16 v25, p28

    move-object/from16 v27, p30

    move-object/from16 v28, p31

    move-object/from16 v30, p32

    move-object/from16 v31, p33

    move-object/from16 v32, p34

    move-object/from16 v33, p35

    move/from16 v34, p36

    move-object/from16 v35, p37

    move-object/from16 v46, v11

    const-string v11, "contentResolver"

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "cacheDir"

    move-object/from16 v10, p2

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messageSettings"

    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "cursorsFactory"

    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "imReactionManager"

    move-object/from16 v11, p6

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "transportManager"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messagesProcessor"

    move-object/from16 v11, p8

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "notificationsManager"

    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "threadInfoCache"

    move-object/from16 v11, p10

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "participantCache"

    move-object/from16 v11, p11

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "batchExecutor"

    move-object/from16 v11, p12

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "spamSearchTrigger"

    move-object/from16 v11, p13

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "entityCleaner"

    move-object/from16 v11, p14

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "traceUtil"

    move-object/from16 v11, p15

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messagesMonitor"

    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "featuresRegistry"

    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messagesBackupManager"

    move-object/from16 v11, p18

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "unclassifiedMessagesSyncHelper"

    move-object/from16 v11, p19

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "historyEventsMessagesStorageHelper"

    move-object/from16 v11, p20

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "queryHelper"

    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "syncManager"

    move-object/from16 v11, p22

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightsStatusProvider"

    move-object/from16 v11, p23

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "deviceInfoUtil"

    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultSmsPackageCache"

    move-object/from16 v11, p25

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightsEnrichmentManager"

    move-object/from16 v11, p26

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightsDuplicateManager"

    move-object/from16 v11, p27

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "dateHelper"

    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "coreSettings"

    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messageAnalytics"

    move-object/from16 v11, p30

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messageLinksHelper"

    move-object/from16 v11, p31

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fileUtils"

    move-object/from16 v11, p32

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightsImSyncHelper"

    move-object/from16 v11, p33

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightsMigrationManager"

    move-object/from16 v11, p34

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insightConfig"

    move-object/from16 v11, p35

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "categorizerManager"

    move-object/from16 v11, p37

    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p3

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    move-object/from16 v7, v42

    move-object/from16 v8, v43

    move-object/from16 v9, v44

    move-object/from16 v10, v45

    move-object/from16 v11, v46

    .line 1
    invoke-direct/range {v0 .. v35}, Le/a/a/g/o;-><init>(Landroid/content/ContentResolver;Ljava/io/File;[Ljava/io/File;Le/a/a/i0;Le/a/a/g/g;Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/a/g/b0;Le/a/a/r0/a;Le/a/o5/u1;Le/a/p5/m0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/b0;Lo3/a;Le/a/q2/i0;Lo3/a;Lo3/a;Le/a/p5/j;Le/a/a/p0/e;Le/a/c/i/h/a;Le/a/c/c0/o;ZLo3/a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    move-object/from16 v1, p4

    iput-object v1, v0, Le/a/a/g/n;->X:Le/a/a/i0;

    move-object/from16 v1, p5

    iput-object v1, v0, Le/a/a/g/n;->Y:Le/a/a/g/g;

    move-object/from16 v1, p7

    iput-object v1, v0, Le/a/a/g/n;->Z:Lo3/a;

    move-object/from16 v1, p9

    iput-object v1, v0, Le/a/a/g/n;->a0:Lo3/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/a/g/n;->b0:Lo3/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/a/g/n;->c0:Lo3/a;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/a/g/n;->d0:Le/a/a/g/p;

    move-object/from16 v1, p24

    iput-object v1, v0, Le/a/a/g/n;->e0:Lo3/a;

    move-object/from16 v1, p28

    iput-object v1, v0, Le/a/a/g/n;->f0:Le/a/o5/b0;

    move-object/from16 v1, p29

    iput-object v1, v0, Le/a/a/g/n;->g0:Lo3/a;

    return-void
.end method


# virtual methods
.method public A(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "conversation_id =? AND (status & 128) = 128"

    .line 4
    invoke-virtual {v0, v1, p1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    .line 5
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(result > 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public E(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conversationIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " conversation_id IN ("

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Le/a/a/g/n$b;->b:Le/a/a/g/n$b;

    const/16 v8, 0x1f

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")\n            AND transport = 2\n            AND status = 1\n            AND (("

    const-string v3, "\n            info1 = 3 \n            AND info2 != 3 \n            AND date_sent < ?\n        "

    const-string v4, ") OR ("

    invoke-static {v0, v1, v2, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\n            info1 != 3 \n            AND info2 != 3 \n            AND date_sent < ?\n        "

    const-string v2, "))\n        "

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Le/a/a/g/n;->c0:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->b0()Le/a/u3/i;

    move-result-object v4

    const-wide/16 v5, 0x3c

    invoke-interface {v4, v5, v6}, Le/a/u3/i;->d(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Le/a/a/g/n;->c0:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/u3/g;

    invoke-virtual {v6}, Le/a/u3/g;->c0()Le/a/u3/i;

    move-result-object v6

    const-wide/16 v7, 0x2d0

    invoke-interface {v6, v7, v8}, Le/a/u3/i;->d(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 6
    iget-object v3, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 7
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v6

    .line 8
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "info16"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    new-instance v9, Ls1/z/c/f0;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Ls1/z/c/f0;-><init>(I)V

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {p1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 12
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 13
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p1, v8, [Ljava/lang/String;

    .line 14
    invoke-interface {v10, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v1, v9, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v1, v9, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v9}, Ls1/z/c/f0;->b()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 20
    iget-object v1, v9, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, [Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v6, v7, v0, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public G()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "category = 4"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public H(JI)Le/a/r2/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x9

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v1, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string p1, "_id =? AND (status & 128) = 128"

    .line 6
    invoke-virtual {v1, v2, v0, p1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Le/a/a/g/o;->k(ZLjava/util/Set;)V

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/g/n;->b0:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/w0/a;

    invoke-interface {v0, p2, p3}, Le/a/a/w0/a;->a(ZI)V

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(updated)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public K(ZLjava/util/List;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    const-string v0, "rawIds"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(SparseBooleanArray())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "transport = 2 AND "

    const-string v1, "raw_id IN ("

    .line 2
    invoke-static {v0, v1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    sget-object v7, Le/a/a/g/n$a;->b:Le/a/a/g/n$a;

    const/16 v8, 0x1f

    move-object v1, p2

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x29

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Le/a/a/g/o;->j0()Z

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/g/o;->l0(Ljava/lang/String;ZZ)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(deleteMessa\u2026Entities, canWriteSms()))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final O0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "participant.normalizedAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "ImGroupInfoTable.getContentUri()"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const-string v3, "title"

    const-string v4, "im_group_id = ?"

    .line 5
    invoke-static/range {v1 .. v7}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public R([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "conversations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    .line 3
    iget-wide v6, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget v8, v5, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    iget v5, v5, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 4
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 5
    iget-object v10, p0, Le/a/a/g/n;->f0:Le/a/o5/b0;

    invoke-interface {v10}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v10

    .line 6
    iget-wide v10, v10, Lw3/b/a/e0/e;->a:J

    goto :goto_1

    :cond_0
    const-wide/16 v10, 0x0

    .line 7
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "pinned_date"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "ContentProviderOperation\u2026\n                .build()"

    const/4 v11, 0x2

    if-nez v5, :cond_1

    .line 8
    invoke-static {}, Le/a/m0/a1$n;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    new-array v8, v11, [Ljava/lang/String;

    .line 10
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v4, "conversation_id = ? AND  filter = ?"

    .line 11
    invoke-virtual {v5, v4, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {}, Le/a/m0/a1$n;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    .line 15
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v11

    const-string v4, "conversation_id = ? AND  (filter = ? OR filter = ?)"

    .line 16
    invoke-virtual {v5, v4, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0, v0}, Le/a/a/g/o;->n0(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string p2, "executeOperations(operations)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    if-nez p1, :cond_3

    move v2, v4

    :cond_3
    xor-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(executeOper\u2026operations).isNotEmpty())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public S(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "info21"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c0(JII)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Le/a/a/g/o;->x0(JIIZ)Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string p2, "markConversationUnread(c\u2026, filter, criteria, true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/ContentProviderOperation;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 2
    invoke-static {p2}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/g/o;->n0(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    return-void
.end method

.method public e()Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(true)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "conversations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, p1, v3

    .line 3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    iget-object v7, p0, Le/a/a/g/n;->f0:Le/a/o5/b0;

    invoke-interface {v7}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v7

    .line 5
    iget-wide v7, v7, Lw3/b/a/e0/e;->a:J

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    .line 6
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "archived_date"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p2, :cond_1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "pinned_date"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    :cond_1
    iget v7, v5, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    const/4 v8, 0x2

    if-nez v7, :cond_2

    new-array v7, v8, [Ljava/lang/String;

    .line 9
    iget-wide v8, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "conversation_id = ? AND filter = ?"

    goto :goto_2

    :cond_2
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 10
    iget-wide v9, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    iget v4, v5, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    const-string v4, "conversation_id = ? AND (filter = ? OR filter = ?)"

    .line 11
    :goto_2
    invoke-static {}, Le/a/m0/a1$n;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    const-string v5, "ContentProviderOperation\u2026\n                .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Le/a/a/g/o;->n0(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string p2, "executeOperations(operations)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    if-nez p1, :cond_4

    move v2, v4

    :cond_4
    xor-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(executeOper\u2026operations).isNotEmpty())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public i()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "notifyMessages called"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 2
    iget-object v0, v1, Le/a/a/g/n;->Z:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "transportManager.get()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/a/k/t;

    invoke-interface {v0}, Le/a/a/k/t;->i()Ljava/util/List;

    move-result-object v0

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_13

    .line 3
    iget-object v2, v1, Le/a/a/g/n;->f0:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    .line 4
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 5
    iget-object v6, v1, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 6
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v7

    const-string v2, "_id"

    .line 7
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "muted >= "

    const-string v10, " OR muted = -1"

    .line 8
    invoke-static {v9, v4, v5, v10}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const-string v13, " AND transport IN ("

    const/16 v14, 0x29

    if-eqz v12, :cond_3

    .line 10
    :try_start_0
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "cursor"

    .line 12
    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 14
    :cond_2
    iget-object v2, v1, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 15
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v15

    .line 16
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation_id IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x3e

    move-object/from16 v17, v11

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    move-object v4, v0

    .line 18
    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " AND seen = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v5, v17

    .line 19
    invoke-virtual {v2, v15, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 20
    :goto_2
    invoke-static {v12, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v12, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 21
    :cond_3
    :goto_3
    iget-object v2, v1, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 22
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v3

    const/4 v12, 0x0

    .line 23
    iget-object v4, v1, Le/a/a/g/n;->X:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->l1()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 24
    invoke-virtual/range {p0 .. p0}, Le/a/a/g/o;->j0()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 25
    iget-object v4, v1, Le/a/a/g/n;->g0:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    const-string v5, "profileVerificationDate"

    invoke-interface {v4, v5, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 26
    iget-object v8, v1, Le/a/a/g/n;->e0:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/p5/g;

    invoke-interface {v8}, Le/a/p5/g;->b()J

    move-result-wide v8

    .line 27
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 28
    iget-object v8, v1, Le/a/a/g/n;->X:Le/a/a/i0;

    invoke-interface {v8, v4, v5}, Le/a/a/i0;->I1(J)V

    .line 29
    :cond_4
    iget-object v8, v1, Le/a/a/g/n;->c0:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/u3/g;

    invoke-virtual {v8}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v8

    invoke-interface {v8}, Le/a/u3/b;->isEnabled()Z

    move-result v8

    const-string v9, "transportsToNotify"

    .line 30
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "seen = 0"

    .line 31
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v8, :cond_5

    const-string v8, " AND category != 3"

    .line 32
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    cmp-long v6, v4, v6

    const-string v11, "StringBuilder().apply(builderAction).toString()"

    if-lez v6, :cond_a

    const-string v6, " AND ("

    .line 33
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const-string v9, "("

    .line 36
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transport="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 38
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND date > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v8, ")"

    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, " OR "

    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 42
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v11

    goto :goto_5

    .line 44
    :cond_a
    invoke-static {v13}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x3e

    const-string v5, ","

    move-object v4, v0

    move-object v0, v11

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "send_schedule_date > 0 AND (status & 8 != 0 OR status = 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-string v9, "date DESC LIMIT 25"

    move-object v4, v2

    move-object v5, v3

    move-object v6, v12

    .line 47
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 48
    iget-object v2, v1, Le/a/a/g/n;->Y:Le/a/a/g/g;

    invoke-interface {v2, v0}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 49
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    const-string v3, "messageCursor"

    .line 51
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v3

    const-string v5, "messageCursor.message"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v5, v3, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message: address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " || status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    if-nez v5, :cond_c

    .line 54
    iget-object v5, v1, Le/a/a/g/n;->Z:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/k/t;

    invoke-interface {v5, v3}, Le/a/a/k/t;->c(Lcom/truecaller/messaging/data/types/Message;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message added id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v7, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 58
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v5}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message not loaded yet id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-wide v7, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 61
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v5}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    goto/16 :goto_6

    .line 62
    :cond_c
    iget v4, v3, Lcom/truecaller/messaging/data/types/Message;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v5, 0x8

    and-int/2addr v4, v5

    const-string v6, "message.sendScheduleDate"

    if-ne v4, v5, :cond_e

    .line 63
    :try_start_3
    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 65
    iget-object v4, v1, Le/a/a/g/n;->a0:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/y0/q;

    invoke-virtual {v1, v3}, Le/a/a/g/n;->O0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Le/a/a/y0/q;->e(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    .line 66
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 67
    invoke-virtual {v1, v3, v4, v6, v7}, Le/a/a/g/n;->u(JJ)Le/a/r2/x;

    goto/16 :goto_6

    .line 68
    :cond_d
    iget-wide v4, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 69
    invoke-virtual {v1, v4, v5}, Le/a/a/g/o;->L(J)V

    .line 70
    iget-object v4, v1, Le/a/a/g/n;->a0:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/y0/q;

    invoke-virtual {v1, v3}, Le/a/a/g/n;->O0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Le/a/a/y0/q;->m(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const-wide/16 v4, 0x0

    .line 71
    iget-object v7, v3, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-wide v6, v7, Lw3/b/a/e0/e;->a:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_f

    .line 73
    iget-object v6, v1, Le/a/a/g/n;->a0:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/r2/f;

    invoke-interface {v6}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/y0/q;

    invoke-virtual {v1, v3}, Le/a/a/g/n;->O0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Le/a/a/y0/q;->h(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    .line 74
    iget-wide v6, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 75
    invoke-virtual {v1, v6, v7, v4, v5}, Le/a/a/g/n;->u(JJ)Le/a/r2/x;

    goto/16 :goto_6

    .line 76
    :cond_f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unseen messages: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 78
    iget-object v3, v1, Le/a/a/g/n;->a0:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/y0/q;

    iget-object v4, v1, Le/a/a/g/n;->d0:Le/a/a/g/p;

    invoke-interface {v4, v0}, Le/a/a/g/p;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Le/a/a/y0/q;->j(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x0

    .line 79
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    :goto_7
    return-void

    :cond_12
    const-string v0, "No cursor returned"

    .line 80
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    return-void

    :cond_13
    const-string v0, "No transports to notify"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method public l(JLandroid/content/ContentValues;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/ContentValues;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id = ?"

    .line 4
    invoke-virtual {v0, v1, p3, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    .line 5
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "contentResolver.update(\n\u2026 { Promise.wrap(it > 0) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public n([JZ)Le/a/r2/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/g/o;->u0([J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelectionByMessageIds(messageIds)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "important"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Le/a/a/g/n;->f0:Le/a/o5/b0;

    invoke-interface {p2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p2

    .line 7
    iget-wide v3, p2, Lw3/b/a/e0/e;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 8
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v3, "important_date"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(result > 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public o(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "info16"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public q(JI)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "load_events_mode"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p3, 0x1

    new-array v3, p3, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id=?"

    .line 5
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 6
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(\n          \u2026          ) > 0\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public r(Ljava/util/ArrayList;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "operations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/g/o;->n0(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string v0, "executeOperations(operations)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(result)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public s(J[JLjava/lang/String;)V
    .locals 7

    const-string v0, "messageIds"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v5, v0, [J

    const/4 v0, 0x0

    aput-wide p1, v5, v0

    .line 1
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-virtual/range {v1 .. v6}, Le/a/a/g/o;->U(Ljava/lang/String;ZZ[J[J)V

    return-void
.end method

.method public u(JJ)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {p1, p2}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "send_schedule_date"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(updatedRows > 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "J)",
            "Le/a/r2/x<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participants"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    new-array v5, v4, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    array-length v0, p2

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    xor-int/2addr v0, v2

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p0, v0, v4}, Le/a/a/g/o;->k0([Lcom/truecaller/messaging/data/types/Entity;Z)Ljava/util/List;

    move-result-object v0

    const-string v5, "copyFilesToCache(message.entities, false)"

    invoke-static {v0, v5}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6
    aget-object v6, p2, v4

    invoke-static {v5, v6}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v6

    .line 7
    array-length v7, p2

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    .line 8
    aget-object v9, p2, v8

    invoke-static {v5, v9}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iget-boolean v7, p1, Lcom/truecaller/messaging/data/types/Message;->A:Z

    invoke-static {v5, p2, v7}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result p2

    .line 10
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "ContentProviderOperation\u2026gesTable.getContentUri())"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "participant_id"

    .line 11
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "conversation_id"

    .line 12
    invoke-virtual {v7, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 13
    iget-object p2, p0, Le/a/a/g/n;->f0:Le/a/o5/b0;

    invoke-interface {p2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p2

    .line 14
    iget-wide v8, p2, Lw3/b/a/e0/e;->a:J

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v6, "date"

    invoke-virtual {v7, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/16 p2, 0x81

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v6, "status"

    invoke-virtual {v7, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "seen"

    .line 17
    invoke-virtual {v7, p2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "read"

    .line 18
    invoke-virtual {v7, p2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "locked"

    invoke-virtual {v7, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "transport"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 21
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "scheduled_transport"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 22
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->A:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "hidden_number"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 p2, 0x2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "category"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v8, -0x1

    .line 24
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "reply_to_msg_id"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 25
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const-string v1, "sim_token"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 26
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "send_schedule_date"

    invoke-virtual {v7, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 28
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const-string v0, "it"

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/truecaller/messaging/data/types/Entity;

    .line 30
    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p2}, Le/a/c/p/a;->Z2(Lcom/truecaller/messaging/data/types/Entity;I)Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_3
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    const-string p3, "message.mentions"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length p3, p1

    move p4, v4

    :goto_4
    if-ge p4, p3, :cond_4

    aget-object v1, p1, p4

    .line 33
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Le/a/c/p/a;->a3(Lcom/truecaller/messaging/data/types/Mention;I)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 34
    :cond_4
    invoke-virtual {p0, v5}, Le/a/a/g/o;->n0(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string p3, "executeOperations(operations)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length p3, p1

    if-nez p3, :cond_5

    goto :goto_5

    :cond_5
    move v2, v4

    :goto_5
    if-eqz v2, :cond_6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(-1L)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_6
    aget-object p1, p1, p2

    iget-object p1, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(ContentUris\u2026sult[messageIndex].uri)))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/n;->W:Landroid/content/ContentResolver;

    .line 2
    invoke-static {p1, p2}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "edit_message_date"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v2, -0x1

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "edit_message_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(result > 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public z(ZLjava/util/List;)Le/a/r2/x;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    const-string v0, "messages"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(SparseBooleanArray())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget v4, v3, Lcom/truecaller/messaging/data/types/Message;->D:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->L:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget v4, v3, Lcom/truecaller/messaging/data/types/Message;->E:I

    if-le v4, v5, :cond_2

    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->M:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "_id IN ("

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x3f

    move-object v4, v12

    move-object v5, v13

    move-object v8, v14

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v15, ") OR "

    const-string v3, "group_id_day IN ("

    invoke-static {v1, v2, v15, v3}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f

    move-object v3, v0

    move-object v6, v2

    move/from16 v7, v16

    move-object/from16 v9, v17

    move/from16 v10, v18

    .line 11
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "group_id_minute IN ("

    invoke-static {v1, v0, v15, v3}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v11

    .line 12
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/a/a/g/o;->j0()Z

    move-result v1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual {v2, v0, v3, v1}, Le/a/a/g/o;->l0(Ljava/lang/String;ZZ)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(deleteMessa\u2026Entities, canWriteSms()))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
