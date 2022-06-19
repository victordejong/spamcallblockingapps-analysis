.class public final Le/a/q2/m;
.super Le/a/y2/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/m$a;
    }
.end annotation


# instance fields
.field public final A:Le/a/o/c;

.field public final B:Le/a/q2/m$a;

.field public final C:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final D:Le/a/k/h;

.field public final E:Z

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Le/a/p5/a0;

.field public final h:Le/a/b0/e/f;

.field public final i:Le/a/p5/g;

.field public final j:Le/a/f/b;

.field public final k:Le/a/q2/a;

.field public final l:Lcom/truecaller/settings/CallingSettings;

.field public final m:Le/a/h0/m;

.field public final n:Le/a/h/t0/b;

.field public final o:Le/a/h3/b/a;

.field public final p:Le/a/a/i0;

.field public final q:Le/a/n5/c;

.field public final r:Le/a/w2/a;

.field public final s:Le/a/i4/o;

.field public final t:Ln3/k/a/x;

.field public final u:Le/a/e4/p;

.field public final v:Le/a/f4/b/f/b;

.field public final w:Le/a/d4/c;

.field public final x:Le/a/h0/r;

.field public final y:Le/a/b0/q/z;

.field public final z:Le/a/l/a/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/a0;Le/a/b0/e/f;Le/a/p5/g;Le/a/f/b;Le/a/q2/a;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/h/t0/b;Le/a/h3/b/a;Le/a/a/i0;Le/a/n5/c;Le/a/w2/a;Le/a/i4/o;Ln3/k/a/x;Le/a/e4/p;Le/a/f4/b/f/b;Le/a/d4/c;Le/a/h0/r;Le/a/b0/q/z;Le/a/l/a/i0;Le/a/o/c;Le/a/q2/m$a;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k/h;Z)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppInCallLog"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboardDataManager"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsFlyerEventsTracker"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationHandlerUtil"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManagerCompat"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainFrontingResolver"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamManager"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spendPredictionEventTracker"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticCallsWrapper"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/y2/k;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/q2/m;->c:Landroid/content/Context;

    iput-object v2, v0, Le/a/q2/m;->d:Le/a/b0/e/l;

    iput-object v3, v0, Le/a/q2/m;->e:Le/a/b0/o/a;

    iput-object v4, v0, Le/a/q2/m;->f:Le/a/b0/e/r/a;

    iput-object v5, v0, Le/a/q2/m;->g:Le/a/p5/a0;

    iput-object v6, v0, Le/a/q2/m;->h:Le/a/b0/e/f;

    iput-object v7, v0, Le/a/q2/m;->i:Le/a/p5/g;

    iput-object v8, v0, Le/a/q2/m;->j:Le/a/f/b;

    iput-object v9, v0, Le/a/q2/m;->k:Le/a/q2/a;

    iput-object v10, v0, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    iput-object v11, v0, Le/a/q2/m;->m:Le/a/h0/m;

    iput-object v12, v0, Le/a/q2/m;->n:Le/a/h/t0/b;

    iput-object v13, v0, Le/a/q2/m;->o:Le/a/h3/b/a;

    iput-object v14, v0, Le/a/q2/m;->p:Le/a/a/i0;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/q2/m;->q:Le/a/n5/c;

    iput-object v15, v0, Le/a/q2/m;->r:Le/a/w2/a;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/q2/m;->s:Le/a/i4/o;

    iput-object v2, v0, Le/a/q2/m;->t:Ln3/k/a/x;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/q2/m;->u:Le/a/e4/p;

    iput-object v2, v0, Le/a/q2/m;->v:Le/a/f4/b/f/b;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Le/a/q2/m;->w:Le/a/d4/c;

    iput-object v2, v0, Le/a/q2/m;->x:Le/a/h0/r;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    iput-object v1, v0, Le/a/q2/m;->y:Le/a/b0/q/z;

    iput-object v2, v0, Le/a/q2/m;->z:Le/a/l/a/i0;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    iput-object v1, v0, Le/a/q2/m;->A:Le/a/o/c;

    iput-object v2, v0, Le/a/q2/m;->B:Le/a/q2/m$a;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    iput-object v1, v0, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object v2, v0, Le/a/q2/m;->D:Le/a/k/h;

    move/from16 v1, p29

    iput-boolean v1, v0, Le/a/q2/m;->E:Z

    const-string v1, "AppSettingsWorkAction"

    .line 2
    iput-object v1, v0, Le/a/q2/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static final h(Landroid/content/Context;)Ln3/m0/s;
    .locals 5

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xf

    .line 4
    invoke-static {v1, v2}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "exec_one_off"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Ln3/m0/f;

    invoke-direct {v3, v2}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-static {v3}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v2, "AppSettingsWorkAction"

    .line 9
    invoke-static {v0, v2, p0, v1, v3}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 44

    move-object/from16 v1, p0

    const-string v0, "event"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    invoke-interface {v3}, Le/a/p5/a0;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notificationsAllowed"

    invoke-virtual {v1, v2, v4, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 3
    iget-object v3, v1, Le/a/q2/m;->e:Le/a/b0/o/a;

    const-string v4, "availability_disabled"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "availabilityEnabled"

    invoke-virtual {v1, v2, v5, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 4
    iget-object v3, v1, Le/a/q2/m;->e:Le/a/b0/o/a;

    const-string v5, "backup_enabled"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "backupEnabled"

    invoke-virtual {v1, v2, v7, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 5
    iget-object v3, v1, Le/a/q2/m;->f:Le/a/b0/e/r/a;

    const-string v7, "accountFileWasBackedUpByAutobackup"

    invoke-interface {v3, v7, v6}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "accountWasBackedUp"

    invoke-virtual {v1, v2, v8, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 6
    iget-object v3, v1, Le/a/q2/m;->e:Le/a/b0/o/a;

    const-string v8, "key_backup_frequency_hours"

    const-wide/16 v9, 0x0

    invoke-interface {v3, v8, v9, v10}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v8, "backupFrequency"

    invoke-virtual {v1, v2, v8, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 8
    iget-object v3, v1, Le/a/q2/m;->h:Le/a/b0/e/f;

    invoke-interface {v3}, Le/a/b0/e/f;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "region1"

    invoke-virtual {v1, v2, v8, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 9
    iget-object v3, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->p()Ljava/lang/String;

    move-result-object v3

    const-string v8, "NotSupported"

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    const-string v11, "DialerApp"

    .line 10
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/a/q2/m;->g()Ljava/lang/String;

    move-result-object v3

    const-string v11, "InCallUI"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 12
    invoke-virtual/range {p0 .. p0}, Le/a/q2/m;->f()Ljava/lang/String;

    move-result-object v3

    const-string v11, "InCallUIOptedInByDefault"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 13
    iget-object v3, v1, Le/a/q2/m;->A:Le/a/o/c;

    invoke-interface {v3}, Le/a/o/c;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v8

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, v1, Le/a/q2/m;->A:Le/a/o/c;

    invoke-interface {v3}, Le/a/o/c;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v11, "contextCallSettingState"

    .line 15
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 16
    :goto_2
    iget-object v3, v1, Le/a/q2/m;->A:Le/a/o/c;

    invoke-interface {v3}, Le/a/o/c;->E()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v11, "contextCallOnBoardedReasonCount"

    .line 17
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 18
    :goto_3
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->u()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockTopSpammers"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 19
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockHiddenCalls"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 20
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockNonPhonebookCalls"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 21
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->x()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockForeignNumbers"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 22
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockNeighbourSpoofing"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 23
    iget-object v3, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->s()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockIndianTelemarketers"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 24
    iget-object v3, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v11, "blockCallNotification"

    invoke-interface {v3, v11, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockedCallNotification"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 25
    iget-object v3, v1, Le/a/q2/m;->p:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->C2()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v11, "BlockedMessageNotification"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 26
    iget-object v3, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v3}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object v3

    const-string v11, "callingSettings.blockMethod"

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "BlockMethod"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 27
    iget-object v3, v1, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->n()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v8

    goto :goto_4

    .line 28
    :cond_4
    iget-object v3, v1, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->v()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const-string v11, "CallRecording"

    .line 29
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 30
    iget-object v3, v1, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->n()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v8

    goto :goto_5

    .line 31
    :cond_5
    iget-object v3, v1, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Lcom/truecaller/callrecording/CallRecordingManager;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_5
    const-string v11, "CallRecordingAuto"

    .line 32
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 33
    iget-object v3, v1, Le/a/q2/m;->C:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Lcom/truecaller/callrecording/CallRecordingManager;->F()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    move-result-object v3

    const-string v11, "RecordingConfig"

    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 34
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->z()Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v8

    goto :goto_6

    .line 35
    :cond_6
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_6
    const-string v11, "ShowVideoCallerID"

    .line 36
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 37
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->z()Z

    move-result v3

    if-nez v3, :cond_7

    move-object v3, v8

    goto :goto_7

    .line 38
    :cond_7
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->F()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_7
    const-string v11, "ReceiveVideoCallerID"

    .line 39
    invoke-virtual {v1, v2, v11, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 40
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->z()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_8

    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->F()Z

    move-result v3

    if-nez v3, :cond_8

    .line 41
    iget-object v3, v1, Le/a/q2/m;->D:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, v11

    :goto_8
    if-eqz v3, :cond_9

    const-string v12, "ReceiveVideoCallerIDTrue"

    .line 42
    invoke-virtual {v1, v2, v12, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 43
    :cond_9
    iget-boolean v3, v1, Le/a/q2/m;->E:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v12, "truecallerY"

    invoke-virtual {v1, v2, v12, v3}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 44
    iget-object v3, v1, Le/a/q2/m;->k:Le/a/q2/a;

    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/avro/generic/GenericRecord;

    .line 46
    invoke-interface {v3, v12}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_9

    .line 47
    :cond_a
    :try_start_0
    iget-object v2, v1, Le/a/q2/m;->c:Landroid/content/Context;

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    if-eqz v2, :cond_b

    .line 48
    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    const-string v3, "jobScheduler.allPendingJobs"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PendingJobSchedulerJobs"

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 50
    new-instance v12, Le/a/q2/g$b$a;

    invoke-direct {v12, v3, v2, v11, v11}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 51
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-static {v12, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Le/a/q2/a;->e(Le/a/q2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :catchall_0
    :cond_b
    iget-object v0, v1, Le/a/q2/m;->q:Le/a/n5/c;

    const-string v2, "SettingState"

    const-string v3, "name"

    .line 53
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v12, Ls1/u/t;->a:Ls1/u/t;

    .line 55
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "params"

    invoke-static {v12, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "EnhancedSearch"

    .line 56
    invoke-interface {v0}, Le/a/n5/c;->c()Z

    move-result v15

    invoke-interface {v0}, Le/a/n5/c;->a()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v8

    goto :goto_a

    :cond_c
    if-eqz v15, :cond_d

    const-string v0, "Enabled"

    goto :goto_a

    :cond_d
    const-string v0, "Disabled"

    .line 57
    :goto_a
    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "value"

    invoke-static {v0, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v15, Ls1/k;

    invoke-direct {v15, v14, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {v12, v15}, Ls1/u/i;->p0(Ljava/util/Map;Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 60
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v3, v1, Le/a/q2/m;->r:Le/a/w2/a;

    .line 63
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v3, v2, v0}, Le/a/w2/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object v8, v2

    :cond_e
    const-string v2, "defaultMessagingApp"

    .line 67
    invoke-virtual {v1, v0, v2, v8}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 68
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.READ_SMS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "messageReadPermission"

    invoke-virtual {v1, v0, v3, v2}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 69
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->B()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "messageWritePermission"

    invoke-virtual {v1, v0, v3, v2}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 70
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/generic/GenericRecord;

    .line 72
    invoke-interface {v2, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_b

    .line 73
    :cond_f
    new-instance v0, Le/a/q2/r0;

    .line 74
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->p()Ljava/lang/String;

    move-result-object v13

    .line 75
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    invoke-interface {v2}, Le/a/p5/a0;->e()Z

    move-result v14

    .line 76
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 77
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 78
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.READ_CONTACTS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 79
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 80
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 81
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 82
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    invoke-interface {v2}, Le/a/p5/a0;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 83
    iget-object v2, v1, Le/a/q2/m;->s:Le/a/i4/o;

    invoke-interface {v2}, Le/a/i4/o;->a()Z

    move-result v22

    .line 84
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->z()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 85
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 86
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->r()Z

    move-result v2

    .line 87
    iget-object v3, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->q()I

    move-result v3

    const/16 v8, 0x1d

    if-le v3, v8, :cond_10

    move v3, v4

    goto :goto_c

    :cond_10
    move v3, v6

    :goto_c
    if-eqz v3, :cond_11

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_d

    :cond_11
    move-object/from16 v25, v11

    .line 89
    :goto_d
    iget-object v2, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    const-string v3, "android.permission.READ_CALL_LOG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 90
    iget-object v2, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-static {v2}, Le/a/n/g0;->Z(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object v12, v0

    .line 91
    invoke-direct/range {v12 .. v27}, Le/a/q2/r0;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 92
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v2, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v2, v1, Le/a/q2/m;->t:Ln3/k/a/x;

    invoke-virtual {v2}, Ln3/k/a/x;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "systemNotificationsAllowed"

    invoke-virtual {v1, v0, v3, v2}, Le/a/q2/m;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 95
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/generic/GenericRecord;

    .line 97
    invoke-interface {v2, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_e

    .line 98
    :cond_12
    iget-object v0, v1, Le/a/q2/m;->g:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    .line 99
    iget-object v2, v1, Le/a/q2/m;->u:Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->h()Z

    move-result v13

    .line 100
    iget-object v2, v1, Le/a/q2/m;->v:Le/a/f4/b/f/b;

    invoke-interface {v2}, Le/a/f4/b/f/b;->isEnabled()Z

    move-result v14

    .line 101
    iget-object v2, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    iget-object v3, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-interface {v2, v3}, Le/a/q2/m$a;->e(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object v2

    invoke-virtual {v2}, Le/a/o5/c2/k;->a()Le/a/o5/c2/k$b;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, v2, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    move-object v15, v2

    goto :goto_f

    :cond_13
    move-object v15, v11

    .line 102
    :goto_f
    iget-object v2, v1, Le/a/q2/m;->w:Le/a/d4/c;

    sget-object v3, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v2, v3}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v16

    .line 103
    iget-object v2, v1, Le/a/q2/m;->w:Le/a/d4/c;

    invoke-interface {v2, v3}, Le/a/d4/c;->f(Le/a/d4/e;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_10

    :cond_14
    move-object/from16 v17, v11

    .line 104
    :goto_10
    iget-object v2, v1, Le/a/q2/m;->h:Le/a/b0/e/f;

    invoke-interface {v2}, Le/a/b0/e/f;->d()Z

    move-result v18

    .line 105
    iget-object v2, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    iget-object v3, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-interface {v2, v3}, Le/a/q2/m$a;->f(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_11

    :cond_15
    move-object/from16 v19, v11

    .line 106
    :goto_11
    iget-object v2, v1, Le/a/q2/m;->f:Le/a/b0/e/r/a;

    const-string v3, "networkDomain"

    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 107
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->l()Ljava/lang/String;

    move-result-object v21

    .line 108
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->q()I

    move-result v2

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_16

    goto :goto_12

    .line 109
    :cond_16
    iget-object v2, v1, Le/a/q2/m;->i:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->q()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_19

    .line 110
    iget-object v2, v1, Le/a/q2/m;->c:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/UserManager;

    if-nez v3, :cond_17

    move-object v2, v11

    :cond_17
    check-cast v2, Landroid/os/UserManager;

    if-eqz v2, :cond_18

    .line 111
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    :goto_12
    move-object/from16 v22, v11

    goto :goto_14

    .line 112
    :cond_19
    iget-object v2, v1, Le/a/q2/m;->c:Landroid/content/Context;

    const-string v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/app/usage/UsageStatsManager;

    if-nez v3, :cond_1a

    move-object v2, v11

    :cond_1a
    check-cast v2, Landroid/app/usage/UsageStatsManager;

    if-eqz v2, :cond_1b

    .line 113
    invoke-virtual {v2}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_13

    :cond_1b
    move-object v2, v11

    :goto_13
    move-object/from16 v22, v2

    .line 114
    :goto_14
    iget-object v2, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    invoke-interface {v2}, Le/a/q2/m$a;->c()Ljava/lang/String;

    move-result-object v23

    .line 115
    iget-object v2, v1, Le/a/q2/m;->q:Le/a/n5/c;

    invoke-interface {v2}, Le/a/n5/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Le/a/q2/m;->q:Le/a/n5/c;

    invoke-interface {v2}, Le/a/n5/c;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v24, v2

    goto :goto_15

    :cond_1c
    move-object/from16 v24, v11

    .line 116
    :goto_15
    iget-object v2, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->u()Z

    move-result v25

    .line 117
    iget-object v2, v1, Le/a/q2/m;->m:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->r()Z

    move-result v26

    .line 118
    iget-object v2, v1, Le/a/q2/m;->o:Le/a/h3/b/a;

    invoke-interface {v2}, Le/a/h3/b/a;->d()Z

    move-result v27

    if-eqz v0, :cond_1d

    .line 119
    iget-object v2, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    const-string v3, "enhancedNotificationsEnabled"

    invoke-interface {v2, v3}, Le/a/q2/m$a;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v28, v2

    goto :goto_16

    :cond_1d
    move-object/from16 v28, v11

    :goto_16
    if-eqz v0, :cond_1e

    .line 120
    iget-object v0, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    const-string v2, "showMissedCallsNotifications"

    invoke-interface {v0, v2}, Le/a/q2/m$a;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_17

    :cond_1e
    move-object/from16 v29, v11

    .line 121
    :goto_17
    iget-object v0, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    const-string v2, "showMissedCallReminders"

    invoke-interface {v0, v2}, Le/a/q2/m$a;->d(Ljava/lang/String;)Z

    move-result v30

    .line 122
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "enabledCallerIDforPB"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    .line 123
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "afterCall"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    .line 124
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "afterCallForPbContacts"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    .line 125
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const/4 v2, 0x3

    const-string v3, "merge_by"

    invoke-interface {v0, v3, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    move/from16 v34, v4

    goto :goto_18

    :cond_1f
    move/from16 v34, v6

    .line 126
    :goto_18
    iget-object v0, v1, Le/a/q2/m;->n:Le/a/h/t0/b;

    invoke-interface {v0}, Le/a/h/t0/b;->isEnabled()Z

    move-result v35

    .line 127
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "showFrequentlyCalledContacts"

    invoke-interface {v0, v2, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 128
    iget-object v0, v1, Le/a/q2/m;->e:Le/a/b0/o/a;

    invoke-interface {v0, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    .line 129
    iget-object v0, v1, Le/a/q2/m;->f:Le/a/b0/e/r/a;

    invoke-interface {v0, v7}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    .line 130
    iget-object v0, v1, Le/a/q2/m;->B:Le/a/q2/m$a;

    invoke-interface {v0}, Le/a/q2/m$a;->b()Z

    move-result v39

    .line 131
    iget-object v0, v1, Le/a/q2/m;->p:Le/a/a/i0;

    invoke-interface {v0, v6}, Le/a/a/i0;->r1(I)Z

    move-result v40

    .line 132
    iget-object v0, v1, Le/a/q2/m;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "showIncomingCallNotifications"

    invoke-interface {v0, v2, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 133
    invoke-virtual/range {p0 .. p0}, Le/a/q2/m;->g()Ljava/lang/String;

    move-result-object v42

    .line 134
    invoke-virtual/range {p0 .. p0}, Le/a/q2/m;->f()Ljava/lang/String;

    move-result-object v43

    .line 135
    new-instance v0, Le/a/q2/p;

    move-object v12, v0

    invoke-direct/range {v12 .. v43}, Le/a/q2/p;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZZZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v2, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 137
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 138
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 139
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-double v2, v0

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v7

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 141
    new-instance v2, Le/a/q2/g$b$a;

    const-string v3, "DevicePerformanceMemory"

    invoke-direct {v2, v3, v0, v11, v11}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v0, "AnalyticsEvent.Builder(D\u2026age)\n            .build()"

    .line 142
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 144
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {v0, v11, v4}, Ls1/y/h;->c(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 147
    new-instance v2, Ls1/f0/h;

    const-string v3, "\\s+"

    invoke-direct {v2, v3}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v6}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_19

    :cond_20
    move-object v0, v11

    goto :goto_19

    :catchall_1
    move-exception v0

    .line 148
    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_19
    instance-of v2, v0, Ls1/l$a;

    if-eqz v2, :cond_21

    move-object v0, v11

    .line 150
    :cond_21
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_22

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2c

    if-ge v2, v3, :cond_23

    :cond_22
    move-object v0, v11

    :cond_23
    if-eqz v0, :cond_24

    .line 152
    sget v2, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v7

    const/16 v5, 0x15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    long-to-double v2, v2

    div-double/2addr v7, v2

    sub-double/2addr v12, v7

    const/16 v5, 0xd

    .line 154
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/16 v5, 0xe

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    add-double/2addr v7, v14

    div-double/2addr v7, v2

    div-double/2addr v7, v12

    .line 155
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1b

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_1
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_24
    :goto_1a
    move-object v0, v11

    .line 158
    :goto_1b
    new-instance v2, Le/a/q2/g$b;

    const-string v3, "DevicePerformanceCpu"

    invoke-direct {v2, v3}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_25

    move v3, v4

    goto :goto_1c

    :cond_25
    move v3, v6

    :goto_1c
    const-string v5, "Valid"

    .line 159
    invoke-virtual {v2, v5, v3}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    const-wide/16 v7, 0x0

    .line 160
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    if-eqz v0, :cond_26

    goto :goto_1d

    :cond_26
    move-object v0, v3

    :goto_1d
    const-string v3, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/16 v0, 0x3e8

    int-to-double v12, v0

    mul-double/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 161
    iput-object v0, v2, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 162
    invoke-virtual {v2}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v0

    const-string v2, "AnalyticsEvent.Builder(D\u2026000)\n            .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v2, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v2, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 164
    iget-object v0, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v2, "context.packageManager.g\u2026o(context.packageName, 0)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_28

    .line 167
    array-length v3, v0

    move v5, v6

    move-wide v7, v9

    :goto_1e
    if-ge v5, v3, :cond_29

    aget-object v12, v0, v5

    const-string v13, "it"

    .line 168
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Le/a/q2/m;->e(Ljava/io/File;)J

    move-result-wide v13

    add-long/2addr v9, v13

    cmp-long v15, v13, v7

    if-lez v15, :cond_27

    .line 169
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "it.name"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v7, v13

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_28
    move-wide v7, v9

    :cond_29
    long-to-double v9, v9

    .line 170
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "BiggestRootFileOrDirectory"

    .line 171
    invoke-static {v3, v2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-wide/16 v9, 0x400

    .line 172
    div-long/2addr v7, v9

    div-long/2addr v7, v9

    .line 173
    div-long v9, v7, v9

    const/16 v3, 0xa

    int-to-long v12, v3

    cmp-long v3, v7, v12

    const/4 v5, 0x2

    if-gez v3, :cond_2a

    const-string v3, "<10MB"

    goto :goto_1f

    :cond_2a
    const/16 v3, 0x32

    int-to-long v14, v3

    cmp-long v3, v7, v14

    if-gez v3, :cond_2b

    const-string v3, "<50MB"

    goto :goto_1f

    :cond_2b
    const/16 v3, 0x64

    int-to-long v14, v3

    cmp-long v3, v7, v14

    if-gez v3, :cond_2c

    const-string v3, "<100MB"

    goto :goto_1f

    :cond_2c
    const/16 v3, 0xc8

    int-to-long v14, v3

    cmp-long v3, v7, v14

    if-gez v3, :cond_2d

    const-string v3, "<200MB"

    goto :goto_1f

    :cond_2d
    const/16 v3, 0x1f4

    int-to-long v14, v3

    cmp-long v3, v7, v14

    if-gez v3, :cond_2e

    const-string v3, "<500MB"

    goto :goto_1f

    :cond_2e
    const-wide/16 v7, 0x1

    cmp-long v3, v9, v7

    if-gez v3, :cond_2f

    const-string v3, "<1GB"

    goto :goto_1f

    :cond_2f
    int-to-long v7, v5

    cmp-long v3, v9, v7

    if-gez v3, :cond_30

    const-string v3, "<2GB"

    goto :goto_1f

    :cond_30
    const/4 v3, 0x5

    int-to-long v7, v3

    cmp-long v3, v9, v7

    if-gez v3, :cond_31

    const-string v3, "<5GB"

    goto :goto_1f

    :cond_31
    cmp-long v3, v9, v12

    if-gez v3, :cond_32

    const-string v3, "<10GB"

    goto :goto_1f

    :cond_32
    const-string v3, ">=10GB"

    :goto_1f
    const-string v7, "BiggestRootFileOrDirectoryBucket"

    .line 174
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v3, Le/a/q2/g$b$a;

    const-string v7, "DataFolderUsage"

    invoke-direct {v3, v7, v0, v2, v11}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v0, "AnalyticsEvent.Builder(D\u2026ze))\n            .build()"

    .line 176
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v0, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 178
    :try_start_3
    iget-object v0, v1, Le/a/q2/m;->c:Landroid/content/Context;

    invoke-static {}, Le/a/m0/c1/l0;->d()[Le/a/m0/c1/h0;

    move-result-object v2

    iget-object v3, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-static {v0, v2, v3}, Le/a/m0/c1/l0;->j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;

    move-result-object v0

    const-string v2, "TruecallerDatabaseHelper\u2026ableHelpers(), analytics)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    invoke-static {v0}, Le/a/b0/i/f/b;->h(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "ProviderUtil.getTablesNamesWithRowCount(tcDb)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {v0}, Ls1/u/i;->T0(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_33

    move-object v2, v11

    goto :goto_20

    .line 183
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_20

    .line 185
    :cond_34
    move-object v3, v2

    check-cast v3, Ls1/k;

    .line 186
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 187
    check-cast v3, Ljava/lang/Long;

    .line 188
    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 189
    move-object v8, v7

    check-cast v8, Ls1/k;

    .line 190
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 191
    check-cast v8, Ljava/lang/Long;

    .line 192
    invoke-virtual {v3, v8}, Ljava/lang/Long;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_36

    move-object v2, v7

    move-object v3, v8

    .line 193
    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_35

    .line 194
    :goto_20
    check-cast v2, Ls1/k;

    if-eqz v2, :cond_39

    .line 195
    iget-object v0, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 196
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const v0, 0x186a0

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-lez v0, :cond_37

    move v0, v4

    goto :goto_21

    :cond_37
    move v0, v6

    :goto_21
    if-eqz v0, :cond_38

    goto :goto_22

    :cond_38
    move-object v2, v11

    :goto_22
    if-eqz v2, :cond_39

    const-string v0, "TcDbTableRowCount"

    .line 197
    iget-object v3, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 198
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v7, "BiggestTableName"

    .line 199
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v2, Le/a/q2/g$b$a;

    invoke-direct {v2, v0, v3, v8, v11}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_23

    :catch_2
    :cond_39
    move-object v2, v11

    :goto_23
    if-eqz v2, :cond_3a

    .line 204
    iget-object v0, v1, Le/a/q2/m;->k:Le/a/q2/a;

    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 205
    :cond_3a
    iget-object v0, v1, Le/a/q2/m;->x:Le/a/h0/r;

    invoke-interface {v0}, Le/a/h0/r;->b()Le/a/r2/x;

    move-result-object v0

    new-instance v2, Le/a/q2/m$b;

    invoke-direct {v2, v1}, Le/a/q2/m$b;-><init>(Le/a/q2/m;)V

    invoke-virtual {v0, v2}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 206
    iget-object v0, v1, Le/a/q2/m;->z:Le/a/l/a/i0;

    .line 207
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    .line 209
    new-instance v3, Lw3/b/a/b;

    iget-object v7, v0, Le/a/l/a/i0;->b:Le/a/b0/o/a;

    const-string v8, "likelyToSpendEventLastLogged"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v3, v4}, Lw3/b/a/b;->K(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lw3/b/a/e0/c;->f(Lw3/b/a/z;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 210
    iget-object v2, v0, Le/a/l/a/i0;->a:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    .line 211
    sget-object v3, Le/a/l5/a/s1;->d:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/s1$b;

    invoke-direct {v3, v11}, Le/a/l5/a/s1$b;-><init>(Le/a/l5/a/s1$a;)V

    .line 212
    iget-object v7, v0, Le/a/l/a/i0;->c:Le/a/s4/a;

    const-string v9, "likelyToSpend_23310"

    invoke-interface {v7, v9}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v3, v9, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 214
    iput-object v7, v3, Le/a/l5/a/s1$b;->a:Ljava/lang/CharSequence;

    .line 215
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v4, v7, v5

    .line 216
    invoke-virtual {v3}, Le/a/l5/a/s1$b;->a()Le/a/l5/a/s1;

    move-result-object v3

    .line 217
    invoke-interface {v2, v3}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 218
    iget-object v0, v0, Le/a/l/a/i0;->b:Le/a/b0/o/a;

    .line 219
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    const-string v3, "DateTime.now()"

    .line 220
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 222
    invoke-interface {v0, v8, v2, v3}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 223
    :cond_3b
    iget-object v0, v1, Le/a/y2/k;->a:Ln3/m0/f;

    const-string v2, "exec_one_off"

    .line 224
    invoke-virtual {v0, v2, v6}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 225
    iget-object v0, v1, Le/a/q2/m;->e:Le/a/b0/o/a;

    const-string v2, "appset_ex"

    invoke-interface {v0, v2, v4}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    :cond_3c
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "Result.success()"

    .line 227
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q2/m;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y2/k;->a:Ln3/m0/f;

    const-string v2, "exec_one_off"

    .line 3
    invoke-virtual {v0, v2, v1}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/q2/m;->e:Le/a/b0/o/a;

    const-string v2, "appset_ex"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/q2/m;->e:Le/a/b0/o/a;

    invoke-interface {v0, v2}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l5/a/a2;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Le/a/l5/a/a2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/l5/a/a2;->a()Le/a/l5/a/a2$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Le/a/l5/a/a2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/l5/a/a2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    .line 4
    invoke-virtual {v0}, Le/a/l5/a/a2$b;->a()Le/a/l5/a/a2;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final e(Ljava/io/File;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "child.absolutePath"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "it"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Le/a/q2/m;->e(Ljava/io/File;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/u/i;->J0(Ljava/lang/Iterable;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/m;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NotSupported"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q2/m;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/m;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NotSupported"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q2/m;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
