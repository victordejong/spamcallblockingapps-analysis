.class public final Le/a/o5/a2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/a2/g;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y2/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/a2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/y2/q/a;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Le/a/y2/q/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/y2/n;",
            ">;",
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;",
            "Lo3/a<",
            "Le/a/o5/a2/b;",
            ">;",
            "Le/a/y2/q/a;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "workActionRequestFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/a2/h;->a:Lo3/a;

    iput-object p2, p0, Le/a/o5/a2/h;->b:Lo3/a;

    iput-object p3, p0, Le/a/o5/a2/h;->c:Lo3/a;

    iput-object p4, p0, Le/a/o5/a2/h;->d:Le/a/y2/q/a;

    iput-object p5, p0, Le/a/o5/a2/h;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ln3/m0/g;->b:Ln3/m0/g;

    const/16 v2, 0x18

    const-string v3, "repoVersion"

    const/16 v4, 0x10

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object v8, v0, Le/a/o5/a2/h;->c:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/o5/a2/b;

    invoke-interface {v8, v3, v2}, Le/a/o5/a2/b;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v8, v0, Le/a/o5/a2/h;->c:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/o5/a2/b;

    invoke-interface {v8, v3, v6}, Le/a/o5/a2/b;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v7, :cond_1

    const-string v9, "CleanUpBackgroundWorker"

    const-string v10, "Attestation"

    const-string v11, "AttestationOneTime"

    const-string v12, "FetchSpamLinksWhiteList"

    const-string v13, "CreditAlarmWorker"

    const-string v14, "TopSpammersSyncRecurringWorker"

    const-string v15, "BackupLogWorker"

    const-string v16, "InstalledAppsHeartbeatWorker"

    .line 4
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-static {v9}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 6
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->c(Ljava/util/Iterator;)V

    :cond_1
    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    const-string v9, "InsightsAggregationWorker"

    .line 7
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    const-string v9, "EdgeLocations"

    const-string v10, "SendPresenceSetting"

    const-string v11, "EventsUploadWorker"

    const-string v12, "UpdateConfig"

    const-string v13, "UpdateInstallation"

    .line 8
    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_3
    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    const-string v10, "SpamCategoriesFetchWorker"

    .line 9
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_4
    const/4 v10, 0x5

    if-ge v8, v10, :cond_5

    const-string v10, "CleverTapRefreshWorker"

    .line 10
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_5
    const/4 v10, 0x6

    if-ge v8, v10, :cond_6

    const-string v10, "UGCBackgroundWorker"

    .line 11
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_6
    const/4 v10, 0x7

    if-ge v8, v10, :cond_7

    const-string v10, "SmsDataAnalyticsWorker"

    .line 12
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_7
    const/16 v10, 0x8

    if-ge v8, v10, :cond_8

    const-string v10, "PayFeatureSyncWorker"

    .line 13
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_8
    const/16 v10, 0x9

    if-ge v8, v10, :cond_9

    const-string v10, "InsightsNotificationsWorker"

    const-string v11, "InsightsRemindersWorker"

    .line 14
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-static {v10}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 16
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->c(Ljava/util/Iterator;)V

    :cond_9
    if-ge v8, v5, :cond_a

    new-array v10, v7, [I

    const/16 v11, 0x2730

    aput v11, v10, v6

    .line 17
    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->b([I)V

    :cond_a
    const/16 v10, 0xb

    if-ge v8, v10, :cond_b

    new-array v10, v7, [I

    const/16 v11, 0x2711

    aput v11, v10, v6

    .line 18
    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->b([I)V

    const-string v10, "InsightsEventAggregationWorker"

    const-string v11, "InsightsEventClearWorker"

    .line 19
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_b
    const/16 v10, 0xc

    if-ge v8, v10, :cond_c

    const-string v10, "FetchImContacts"

    const-string v11, "ImNotifications"

    .line 20
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_c
    const/16 v10, 0xd

    if-ge v8, v10, :cond_d

    new-array v10, v7, [I

    const/16 v11, 0x2719

    aput v11, v10, v6

    .line 21
    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->b([I)V

    :cond_d
    const/16 v10, 0xe

    if-ge v8, v10, :cond_e

    const-string v10, "PhoneBookPremiumStatusFetchWorker"

    .line 22
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_e
    const/16 v10, 0xf

    if-ge v8, v10, :cond_f

    new-array v9, v9, [I

    .line 23
    fill-array-data v9, :array_0

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_f
    if-ge v8, v4, :cond_10

    new-array v9, v7, [I

    const/16 v10, 0x272c

    aput v10, v9, v6

    .line 24
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_10
    const/16 v9, 0x11

    if-ge v8, v9, :cond_11

    new-array v9, v7, [I

    const/16 v10, 0x271f

    aput v10, v9, v6

    .line 25
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_11
    const/16 v9, 0x12

    if-ge v8, v9, :cond_12

    new-array v9, v7, [I

    const/16 v10, 0x2729

    aput v10, v9, v6

    .line 26
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_12
    const/16 v9, 0x13

    if-ge v8, v9, :cond_13

    new-array v9, v7, [I

    const/16 v10, 0x4e21

    aput v10, v9, v6

    .line 27
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_13
    const/16 v9, 0x14

    if-ge v8, v9, :cond_14

    new-array v9, v7, [I

    const/16 v10, 0x272e

    aput v10, v9, v6

    .line 28
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_14
    const/16 v9, 0x15

    if-ge v8, v9, :cond_15

    new-array v9, v7, [I

    const/16 v10, 0x2714

    aput v10, v9, v6

    .line 29
    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->b([I)V

    :cond_15
    const/16 v9, 0x16

    if-ge v8, v9, :cond_16

    const-string v9, "AvailableTagsDownloadWorker"

    const-string v10, "TagKeywordsDownloadWorker"

    .line 30
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_16
    const/16 v9, 0x17

    if-ge v8, v9, :cond_17

    const-string v9, "ReportSpamUrl"

    .line 31
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    :cond_17
    if-ge v8, v2, :cond_18

    const-string v8, "AppHeartBeatWorkAction"

    .line 32
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Le/a/o5/a2/h;->d([Ljava/lang/String;)V

    .line 33
    :cond_18
    iget-object v8, v0, Le/a/o5/a2/h;->c:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/o5/a2/b;

    invoke-interface {v8, v3, v2}, Le/a/o5/a2/b;->putInt(Ljava/lang/String;I)V

    .line 34
    :goto_0
    iget-object v2, v0, Le/a/o5/a2/h;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y2/n;

    .line 35
    invoke-virtual {v2}, Le/a/y2/n;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Le/m/d/y/n;->e0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 37
    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Le/q/f/a/d/a;->Y1(I)I

    move-result v3

    if-ge v3, v4, :cond_19

    goto :goto_1

    :cond_19
    move v4, v3

    .line 38
    :goto_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 40
    check-cast v4, Le/a/y2/g;

    .line 41
    new-instance v5, Le/a/y2/h;

    const-class v8, Lcom/truecaller/background_work/JointActionsWorker;

    invoke-static {v8}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v8

    .line 42
    iget-object v9, v4, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 43
    invoke-virtual {v9}, Lcom/truecaller/background_work/WorkActionPeriod;->getDuration()Lw3/b/a/i;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 44
    sget-object v8, Ln3/m0/a;->a:Ln3/m0/a;

    .line 45
    iget-object v9, v4, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 46
    invoke-virtual {v9}, Lcom/truecaller/background_work/WorkActionPeriod;->getExponentialBackoff()Lw3/b/a/i;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Le/a/y2/h;->d(Ln3/m0/a;Lw3/b/a/i;)Le/a/y2/h;

    .line 47
    iget-object v8, v4, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 48
    invoke-virtual {v8}, Lcom/truecaller/background_work/WorkActionPeriod;->getFlexInterval()Lw3/b/a/i;

    move-result-object v8

    const-string v9, "interval"

    .line 49
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object v8, v5, Le/a/y2/h;->a:Lw3/b/a/i;

    .line 51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v9, v4, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "wa_bucket_period"

    .line 53
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-boolean v9, v4, Le/a/y2/g;->c:Z

    if-ne v9, v7, :cond_1a

    move v9, v7

    goto :goto_3

    :cond_1a
    if-nez v9, :cond_1c

    move v9, v6

    .line 55
    :goto_3
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const-string v10, "wa_bucket_internetRequired"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v9, Ln3/m0/f;

    invoke-direct {v9, v8}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 57
    invoke-static {v9}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v8, "Data.Builder().run {\n   \u2026())\n        build()\n    }"

    .line 58
    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5, v9}, Le/a/y2/h;->e(Ln3/m0/f;)Le/a/y2/h;

    .line 60
    iget-boolean v8, v4, Le/a/y2/g;->c:Z

    if-eqz v8, :cond_1b

    .line 61
    sget-object v8, Ln3/m0/q;->b:Ln3/m0/q;

    invoke-virtual {v5, v8}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 62
    :cond_1b
    iget-object v4, v4, Le/a/y2/g;->a:Ljava/lang/String;

    .line 63
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 64
    :cond_1c
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 65
    :cond_1d
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 66
    new-instance v4, Le/a/o5/a2/h$a;

    invoke-direct {v4, v2}, Le/a/o5/a2/h$a;-><init>(Ljava/lang/Iterable;)V

    .line 67
    invoke-static {v4}, Le/q/f/a/d/a;->g0(Ls1/u/v;)Ljava/util/Map;

    move-result-object v2

    .line 68
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v8, v7, :cond_1f

    move v8, v7

    goto :goto_5

    :cond_1f
    move v8, v6

    :goto_5
    if-eqz v8, :cond_1e

    .line 71
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 72
    :cond_20
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_21

    goto :goto_6

    :cond_21
    move-object v4, v5

    :goto_6
    if-nez v4, :cond_2a

    .line 73
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v9, ","

    invoke-static/range {v8 .. v15}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    .line 74
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/y2/h;

    .line 75
    iget-object v8, v0, Le/a/o5/a2/h;->b:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/m0/y;

    invoke-virtual {v3}, Le/a/y2/h;->b()Ln3/m0/u;

    move-result-object v3

    invoke-virtual {v8, v4, v1, v3}, Ln3/m0/y;->h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;

    goto :goto_7

    :cond_22
    if-eqz p1, :cond_23

    .line 76
    sget-object v1, Ln3/m0/g;->a:Ln3/m0/g;

    .line 77
    :cond_23
    sget-object v2, Le/a/o5/a2/i;->a:Ljava/util/List;

    .line 78
    new-instance v3, Le/a/o5/a2/h$b;

    invoke-direct {v3, v2}, Le/a/o5/a2/h$b;-><init>(Ljava/lang/Iterable;)V

    .line 79
    invoke-static {v3}, Le/q/f/a/d/a;->g0(Ls1/u/v;)Ljava/util/Map;

    move-result-object v3

    .line 80
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-le v9, v7, :cond_25

    move v9, v7

    goto :goto_9

    :cond_25
    move v9, v6

    :goto_9
    if-eqz v9, :cond_24

    .line 83
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 84
    :cond_26
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    move-object v5, v4

    :cond_27
    if-nez v5, :cond_29

    .line 85
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/y2/i;

    .line 86
    invoke-interface {v3}, Le/a/y2/i;->a()Le/a/y2/h;

    move-result-object v4

    invoke-virtual {v4}, Le/a/y2/h;->b()Ln3/m0/u;

    move-result-object v4

    .line 87
    iget-object v5, v0, Le/a/o5/a2/h;->b:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/m0/y;

    invoke-interface {v3}, Le/a/y2/i;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v1, v4}, Ln3/m0/y;->h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;

    goto :goto_a

    :cond_28
    return-void

    .line 88
    :cond_29
    new-instance v1, Lcom/truecaller/log/UnmutedException$c;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/truecaller/log/UnmutedException$c;-><init>(Ljava/util/Set;)V

    throw v1

    .line 89
    :cond_2a
    new-instance v1, Lcom/truecaller/log/UnmutedException$c;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/truecaller/log/UnmutedException$c;-><init>(Ljava/util/Set;)V

    throw v1

    :array_0
    .array-data 4
        0x2718
        0x271a
        0x271c
        0x2728
    .end array-data
.end method

.method public final varargs b([I)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Le/a/o5/a2/h;->e:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p1, v1

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final c(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/a2/h;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/y;

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ln3/m0/y;->e(Ljava/lang/String;)Ln3/m0/s;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneOff_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/m0/y;->e(Ljava/lang/String;)Ln3/m0/s;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs d([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->J1([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/o5/a2/h;->c(Ljava/util/Iterator;)V

    return-void
.end method
