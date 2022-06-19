.class public final Le/a/g3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g3/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/r5/i0;

.field public final d:Le/a/z4/d;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Le/a/b0/q/l0;

.field public final h:Lcom/truecaller/clevertap/CleverTapManager;

.field public final i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

.field public final j:Le/a/b0/e/l;

.field public final k:Le/a/c3/a;

.field public final l:Le/a/b0/k/f;

.field public final m:Le/a/l/p2/b1;

.field public final n:Le/a/g3/i;

.field public final o:Le/a/s4/a;

.field public final p:Le/a/a/q0/b;

.field public final q:Le/a/h/i;

.field public final r:Le/a/p5/a0;

.field public final s:Le/a/o4/g;

.field public final t:Le/a/l/s2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l/p2/v0;Le/a/r5/i0;Le/a/z4/d;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/q/l0;Lcom/truecaller/clevertap/CleverTapManager;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/b0/e/l;Le/a/c3/a;Le/a/b0/k/f;Le/a/l/p2/b1;Le/a/g3/i;Le/a/s4/a;Le/a/a/q0/b;Le/a/h/i;Le/a/p5/a0;Le/a/o4/g;Le/a/l/s2/a;)V
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

    const-string v0, "premiumStateSettings"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountsManager"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageUtil"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionStatusRepository"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumUserPropGenerator"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingUserPropGenerator"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingCleverTapUtils"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushIdProvider"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebasePersonalisationManager"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/g3/k;->a:Landroid/content/Context;

    iput-object v2, v0, Le/a/g3/k;->b:Le/a/l/p2/v0;

    iput-object v3, v0, Le/a/g3/k;->c:Le/a/r5/i0;

    iput-object v4, v0, Le/a/g3/k;->d:Le/a/z4/d;

    iput-object v5, v0, Le/a/g3/k;->e:Le/a/b0/o/a;

    iput-object v6, v0, Le/a/g3/k;->f:Le/a/b0/e/r/a;

    iput-object v7, v0, Le/a/g3/k;->g:Le/a/b0/q/l0;

    iput-object v8, v0, Le/a/g3/k;->h:Lcom/truecaller/clevertap/CleverTapManager;

    iput-object v9, v0, Le/a/g3/k;->i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iput-object v10, v0, Le/a/g3/k;->j:Le/a/b0/e/l;

    iput-object v11, v0, Le/a/g3/k;->k:Le/a/c3/a;

    iput-object v12, v0, Le/a/g3/k;->l:Le/a/b0/k/f;

    iput-object v13, v0, Le/a/g3/k;->m:Le/a/l/p2/b1;

    iput-object v14, v0, Le/a/g3/k;->n:Le/a/g3/i;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/g3/k;->o:Le/a/s4/a;

    iput-object v15, v0, Le/a/g3/k;->p:Le/a/a/q0/b;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/g3/k;->q:Le/a/h/i;

    iput-object v2, v0, Le/a/g3/k;->r:Le/a/p5/a0;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/g3/k;->s:Le/a/o4/g;

    iput-object v2, v0, Le/a/g3/k;->t:Le/a/l/s2/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/g3/k;->s:Le/a/o4/g;

    invoke-interface {v0}, Le/a/o4/g;->a()Le/a/o4/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v1, Le/a/g3/k;->h:Lcom/truecaller/clevertap/CleverTapManager;

    .line 3
    iget-object v3, v0, Le/a/o4/d;->b:Le/a/d4/e;

    .line 4
    iget-object v0, v0, Le/a/o4/d;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3, v0}, Lcom/truecaller/clevertap/CleverTapManager;->updatePushRegistrationId(Le/a/d4/e;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v0, Le/a/h/k;

    .line 7
    iget-object v2, v0, Le/a/h/k;->b:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->t()Z

    move-result v2

    const-string v3, "defaultDialerGrantedLoggedToCleverTap"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-object v0, Lcom/truecaller/calling/CallingCleverTapState;->NOT_SUPPORTED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v0, Le/a/h/k;->b:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v0, v0, Le/a/h/k;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v3, v4}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    sget-object v0, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, Le/a/h/k;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lcom/truecaller/calling/CallingCleverTapState;->CHURN:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 14
    :goto_0
    new-instance v2, Le/a/h/o;

    invoke-direct {v2, v0}, Le/a/h/o;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 15
    new-instance v0, Le/a/g3/m;

    invoke-direct {v0}, Le/a/g3/m;-><init>()V

    .line 16
    iget-object v5, v1, Le/a/g3/k;->n:Le/a/g3/i;

    .line 17
    new-instance v6, Le/a/g3/q;

    iget-object v5, v5, Le/a/g3/i;->a:Le/a/l/a/v;

    invoke-virtual {v5}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Le/a/g3/q;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 19
    iget-object v5, v1, Le/a/g3/k;->b:Le/a/l/p2/v0;

    invoke-interface {v5}, Le/a/l/p2/v0;->H()Z

    move-result v5

    const-string v6, "UNDEFINED"

    if-nez v5, :cond_5

    .line 20
    new-instance v5, Le/a/g3/s;

    .line 21
    iget-object v7, v1, Le/a/g3/k;->d:Le/a/z4/d;

    const-string v8, "lastPremiumLaunchContext"

    invoke-interface {v7, v8}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v6, v7

    :cond_4
    const-string v7, "generalSettings.getStrin\u2026ONTEXT) ?: PROP_UNDEFINED"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {v5, v6}, Le/a/g3/s;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_5
    new-instance v5, Le/a/g3/s;

    invoke-direct {v5, v6}, Le/a/g3/s;-><init>(Ljava/lang/String;)V

    .line 24
    :goto_1
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 25
    iget-object v6, v1, Le/a/g3/k;->c:Le/a/r5/i0;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Le/a/p5/s0/g;->V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v5

    .line 26
    new-instance v6, Le/a/g3/t;

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/16 v9, 0x1e

    if-eqz v5, :cond_f

    sget-object v10, Lcom/truecaller/clevertap/TwoDigitCountSegment;->Companion:Lcom/truecaller/clevertap/TwoDigitCountSegment$a;

    .line 27
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_6

    .line 28
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->NONE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    :cond_6
    const/4 v10, 0x5

    if-le v4, v5, :cond_7

    goto :goto_2

    :cond_7
    if-lt v10, v5, :cond_8

    .line 29
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->ONE_TO_FIVE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    :cond_8
    :goto_2
    if-le v7, v5, :cond_9

    goto :goto_3

    :cond_9
    if-lt v8, v5, :cond_a

    .line 30
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->SIX_TO_TEN:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    :cond_a
    :goto_3
    const/16 v7, 0x14

    const/16 v8, 0xb

    if-le v8, v5, :cond_b

    goto :goto_4

    :cond_b
    if-lt v7, v5, :cond_c

    .line 31
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->ELEVEN_TO_TWENTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    :cond_c
    :goto_4
    const/16 v7, 0x15

    if-le v7, v5, :cond_d

    goto :goto_5

    :cond_d
    if-lt v9, v5, :cond_e

    .line 32
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->TWENTY_ONE_TO_THIRTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    .line 33
    :cond_e
    :goto_5
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->THIRTY_ONE_MORE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    goto :goto_6

    .line 34
    :cond_f
    sget-object v5, Lcom/truecaller/clevertap/TwoDigitCountSegment;->NONE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    .line 35
    :goto_6
    invoke-direct {v6, v5}, Le/a/g3/t;-><init>(Lcom/truecaller/clevertap/TwoDigitCountSegment;)V

    .line 36
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 37
    iget-object v10, v1, Le/a/g3/k;->c:Le/a/r5/i0;

    .line 38
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 39
    invoke-virtual {v5, v9}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v5

    const-string v6, "DateTime.now().minusDays\u2026MIT_IN_DAYS\n            )"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-wide v11, v5, Lw3/b/a/e0/e;->a:J

    const/4 v13, 0x0

    const/4 v5, 0x2

    const/4 v15, 0x0

    move v14, v5

    .line 41
    invoke-static/range {v10 .. v15}, Le/a/p5/s0/g;->V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v6

    .line 42
    new-instance v7, Le/a/g3/u;

    sget-object v8, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->Companion:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment$a;

    .line 43
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/4 v12, 0x3

    if-nez v6, :cond_10

    .line 44
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->NONE:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_10
    if-ne v6, v4, :cond_11

    .line 45
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->ONE:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_11
    if-ne v6, v5, :cond_12

    .line 46
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->TWO:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_12
    if-ne v6, v12, :cond_13

    .line 47
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->THREE:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_13
    if-le v10, v6, :cond_14

    goto :goto_7

    :cond_14
    if-lt v11, v6, :cond_15

    .line 48
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->FOUR_TO_SEVEN:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_15
    :goto_7
    const/16 v5, 0xf

    if-le v8, v6, :cond_16

    goto :goto_8

    :cond_16
    if-lt v5, v6, :cond_17

    .line 49
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->EIGHT_TO_FIFTEEN:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    :cond_17
    :goto_8
    const/16 v5, 0x10

    if-le v5, v6, :cond_18

    goto :goto_9

    :cond_18
    if-lt v9, v6, :cond_19

    .line 50
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->SIXTEEN_TO_THIRTY:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    goto :goto_a

    .line 51
    :cond_19
    :goto_9
    sget-object v5, Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;->THIRTY_ONE_MORE:Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;

    .line 52
    :goto_a
    invoke-direct {v7, v5}, Le/a/g3/u;-><init>(Lcom/truecaller/clevertap/ProfileViewCountRecentSegment;)V

    .line 53
    invoke-virtual {v0, v7}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 54
    iget-object v5, v1, Le/a/g3/k;->b:Le/a/l/p2/v0;

    invoke-interface {v5}, Le/a/l/p2/v0;->H()Z

    move-result v5

    const-string v6, "lastPremiumTimestamp"

    const-wide/16 v7, 0x0

    if-nez v5, :cond_25

    .line 55
    iget-object v5, v1, Le/a/g3/k;->d:Le/a/z4/d;

    invoke-interface {v5, v6, v7, v8}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 56
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v11, v1, Le/a/g3/k;->g:Le/a/b0/q/l0;

    invoke-virtual {v11}, Le/a/b0/q/l0;->c()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v10

    int-to-long v12, v9

    div-long/2addr v10, v12

    .line 57
    new-instance v9, Le/a/g3/r;

    cmp-long v5, v5, v7

    if-nez v5, :cond_1a

    .line 58
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->UNDEFINED:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_1a
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->Companion:Lcom/truecaller/clevertap/MonthSegment$a;

    long-to-int v6, v10

    .line 59
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_1b

    .line 60
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->CURRENT_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_1b
    if-ne v6, v4, :cond_1c

    .line 61
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->ONE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_1c
    const/4 v5, 0x2

    if-ne v6, v5, :cond_1d

    .line 62
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->TWO_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_1d
    const/4 v5, 0x3

    if-ne v6, v5, :cond_1e

    .line 63
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->THREE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_1e
    const/4 v5, 0x4

    if-le v5, v6, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v5, 0x6

    if-lt v5, v6, :cond_20

    .line 64
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->FOUR_SIX_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_20
    :goto_b
    const/16 v5, 0x9

    const/4 v10, 0x7

    if-le v10, v6, :cond_21

    goto :goto_c

    :cond_21
    if-lt v5, v6, :cond_22

    .line 65
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->SEVEN_NINE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    :cond_22
    :goto_c
    const/16 v5, 0xc

    const/16 v10, 0xa

    if-le v10, v6, :cond_23

    goto :goto_d

    :cond_23
    if-lt v5, v6, :cond_24

    .line 66
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->TEN_TWELVE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    goto :goto_e

    .line 67
    :cond_24
    :goto_d
    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->YEAR_MORE:Lcom/truecaller/clevertap/MonthSegment;

    .line 68
    :goto_e
    invoke-direct {v9, v5}, Le/a/g3/r;-><init>(Lcom/truecaller/clevertap/MonthSegment;)V

    goto :goto_f

    .line 69
    :cond_25
    iget-object v5, v1, Le/a/g3/k;->d:Le/a/z4/d;

    iget-object v9, v1, Le/a/g3/k;->g:Le/a/b0/q/l0;

    invoke-virtual {v9}, Le/a/b0/q/l0;->c()J

    move-result-wide v9

    invoke-interface {v5, v6, v9, v10}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 70
    new-instance v9, Le/a/g3/r;

    sget-object v5, Lcom/truecaller/clevertap/MonthSegment;->UNDEFINED:Lcom/truecaller/clevertap/MonthSegment;

    invoke-direct {v9, v5}, Le/a/g3/r;-><init>(Lcom/truecaller/clevertap/MonthSegment;)V

    .line 71
    :goto_f
    invoke-virtual {v0, v9}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 72
    new-instance v5, Le/a/g3/x;

    iget-object v6, v1, Le/a/g3/k;->i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {v6}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->h()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g3/x;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    .line 73
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 74
    new-instance v5, Le/a/g3/a;

    sget-object v6, Lcom/truecaller/buildinfo/BuildName;->Companion:Lcom/truecaller/buildinfo/BuildName$a;

    iget-object v9, v1, Le/a/g3/k;->k:Le/a/c3/a;

    invoke-interface {v9}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/truecaller/buildinfo/BuildName$a;->a(Ljava/lang/String;)Lcom/truecaller/buildinfo/BuildName;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g3/a;-><init>(Lcom/truecaller/buildinfo/BuildName;)V

    .line 75
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 76
    new-instance v5, Le/a/g3/v;

    iget-object v6, v1, Le/a/g3/k;->m:Le/a/l/p2/b1;

    invoke-interface {v6}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g3/v;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 78
    new-instance v5, Le/a/g3/w;

    iget-object v6, v1, Le/a/g3/k;->d:Le/a/z4/d;

    const-string v9, "showProfileViewNotifications"

    invoke-interface {v6, v9, v4}, Le/a/z4/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-direct {v5, v6}, Le/a/g3/w;-><init>(Z)V

    .line 79
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 80
    new-instance v5, Le/a/g3/b0;

    iget-object v6, v1, Le/a/g3/k;->o:Le/a/s4/a;

    const-string v9, "likelyToSpend_23310"

    invoke-interface {v6, v9}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g3/b0;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 82
    new-instance v5, Le/a/g3/p;

    iget-object v6, v1, Le/a/g3/k;->t:Le/a/l/s2/a;

    invoke-interface {v6}, Le/a/l/s2/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g3/p;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 84
    iget-object v5, v1, Le/a/g3/k;->p:Le/a/a/q0/b;

    check-cast v5, Le/a/a/q0/f;

    .line 85
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v9, v5, Le/a/a/q0/f;->c:Le/a/p5/g;

    invoke-interface {v9}, Le/a/p5/g;->c()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 88
    new-instance v10, Le/a/a/q0/g;

    sget-object v11, Lcom/truecaller/messaging/clevertap/DefaultSMSUser;->YES:Lcom/truecaller/messaging/clevertap/DefaultSMSUser;

    invoke-direct {v10, v11}, Le/a/a/q0/g;-><init>(Lcom/truecaller/messaging/clevertap/DefaultSMSUser;)V

    goto :goto_10

    .line 89
    :cond_26
    iget-object v10, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v10}, Le/a/a/i0;->m0()Z

    move-result v10

    if-eqz v10, :cond_27

    new-instance v10, Le/a/a/q0/g;

    sget-object v11, Lcom/truecaller/messaging/clevertap/DefaultSMSUser;->CHURN:Lcom/truecaller/messaging/clevertap/DefaultSMSUser;

    invoke-direct {v10, v11}, Le/a/a/q0/g;-><init>(Lcom/truecaller/messaging/clevertap/DefaultSMSUser;)V

    goto :goto_10

    .line 90
    :cond_27
    new-instance v10, Le/a/a/q0/g;

    sget-object v11, Lcom/truecaller/messaging/clevertap/DefaultSMSUser;->NO:Lcom/truecaller/messaging/clevertap/DefaultSMSUser;

    invoke-direct {v10, v11}, Le/a/a/q0/g;-><init>(Lcom/truecaller/messaging/clevertap/DefaultSMSUser;)V

    .line 91
    :goto_10
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v10, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v10, v9}, Le/a/a/i0;->n0(Z)V

    .line 93
    new-instance v9, Le/a/a/q0/j;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->a(I)I

    move-result v10

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->g(I)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v10

    invoke-direct {v9, v10}, Le/a/a/q0/j;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 94
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v9, Le/a/a/q0/h;

    const/high16 v10, 0x20000000

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->a(I)I

    move-result v10

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->g(I)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v10

    invoke-direct {v9, v10}, Le/a/a/q0/h;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 96
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v9, Le/a/a/q0/i;

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->a(I)I

    move-result v10

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->g(I)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v10

    invoke-direct {v9, v10}, Le/a/a/q0/i;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 98
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v9, Le/a/a/q0/t;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->d(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Le/a/a/q0/f;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v11

    invoke-direct {v9, v11}, Le/a/a/q0/t;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 100
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v12, v5, Le/a/a/q0/f;->a:Landroid/content/ContentResolver;

    .line 102
    sget-object v9, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 103
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v11, "business_im"

    invoke-virtual {v9, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 104
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_29

    .line 105
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_28

    const-string v12, "it"

    .line 106
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "business_im_date"

    invoke-static {v9, v12}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    :cond_28
    move-object v12, v11

    .line 107
    :goto_11
    invoke-static {v9, v11}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_12

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

    invoke-static {v9, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_29
    move-object v12, v11

    .line 108
    :goto_12
    invoke-virtual {v5, v12}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v9

    .line 109
    new-instance v12, Le/a/a/q0/o;

    invoke-direct {v12, v9}, Le/a/a/q0/o;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 110
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v9, Le/a/a/q0/r;

    const-string v12, "(info5 & 2) != 0 AND "

    .line 112
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->d(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 113
    invoke-virtual {v5, v13}, Le/a/a/q0/f;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 114
    invoke-virtual {v5, v13}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v13

    .line 115
    invoke-direct {v9, v13}, Le/a/a/q0/r;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 116
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v9, Le/a/a/q0/u;

    invoke-virtual {v5, v4}, Le/a/a/q0/f;->d(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Le/a/a/q0/f;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v13

    invoke-direct {v9, v13}, Le/a/a/q0/u;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 118
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v9, Le/a/a/q0/s;

    .line 120
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Le/a/a/q0/f;->d(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 121
    invoke-virtual {v5, v12}, Le/a/a/q0/f;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 122
    invoke-virtual {v5, v12}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v12

    .line 123
    invoke-direct {v9, v12}, Le/a/a/q0/s;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 124
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Le/a/a/q0/p;

    invoke-virtual {v5, v10}, Le/a/a/q0/f;->b(Z)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v12

    invoke-direct {v9, v12}, Le/a/a/q0/p;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 126
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v9, Le/a/a/q0/q;

    invoke-virtual {v5, v4}, Le/a/a/q0/f;->b(Z)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v12

    invoke-direct {v9, v12}, Le/a/a/q0/q;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 128
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v9, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->K0()Lw3/b/a/b;

    move-result-object v9

    const-string v12, "settings.manualCleanupLastDate"

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-wide v12, v9, Lw3/b/a/e0/e;->a:J

    .line 131
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v7

    if-eqz v12, :cond_2a

    move v12, v4

    goto :goto_13

    :cond_2a
    move v12, v10

    :goto_13
    if-eqz v12, :cond_2b

    goto :goto_14

    :cond_2b
    move-object v9, v11

    :goto_14
    invoke-virtual {v5, v9}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v9

    new-instance v12, Le/a/a/q0/v;

    invoke-direct {v12, v9}, Le/a/a/q0/v;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 132
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v9, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->I()Lw3/b/a/b;

    move-result-object v9

    const-string v12, "settings.autoCleanupLastDate"

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-wide v12, v9, Lw3/b/a/e0/e;->a:J

    .line 135
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v7, v12, v7

    if-eqz v7, :cond_2c

    move v7, v4

    goto :goto_15

    :cond_2c
    move v7, v10

    :goto_15
    if-eqz v7, :cond_2d

    goto :goto_16

    :cond_2d
    move-object v9, v11

    :goto_16
    invoke-virtual {v5, v9}, Le/a/a/q0/f;->f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v7

    new-instance v8, Le/a/a/q0/n;

    invoke-direct {v8, v7}, Le/a/a/q0/n;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 136
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v7, Le/a/a/q0/w;

    iget-object v8, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->o2()I

    move-result v8

    invoke-virtual {v5, v8}, Le/a/a/q0/f;->e(I)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v8

    invoke-direct {v7, v8}, Le/a/a/q0/w;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 138
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v7, Le/a/a/q0/a;

    iget-object v8, v5, Le/a/a/q0/f;->b:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->P()I

    move-result v8

    invoke-virtual {v5, v8}, Le/a/a/q0/f;->e(I)Lcom/truecaller/messaging/clevertap/NUMBERS;

    move-result-object v8

    invoke-direct {v7, v8}, Le/a/a/q0/a;-><init>(Lcom/truecaller/messaging/clevertap/NUMBERS;)V

    .line 140
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v7, Le/a/a/q0/k;

    .line 142
    new-instance v8, Le/a/a/q0/c;

    invoke-direct {v8, v5, v11}, Le/a/a/q0/c;-><init>(Le/a/a/q0/f;Ls1/w/d;)V

    invoke-static {v11, v8, v4, v11}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 143
    invoke-direct {v7, v8}, Le/a/a/q0/k;-><init>(I)V

    .line 144
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v7, Le/a/a/q0/l;

    .line 146
    new-instance v8, Le/a/a/q0/d;

    invoke-direct {v8, v5, v11}, Le/a/a/q0/d;-><init>(Le/a/a/q0/f;Ls1/w/d;)V

    invoke-static {v11, v8, v4, v11}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 147
    invoke-direct {v7, v8}, Le/a/a/q0/l;-><init>(I)V

    .line 148
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v7, Le/a/a/q0/m;

    .line 150
    new-instance v8, Le/a/a/q0/e;

    invoke-direct {v8, v5, v11}, Le/a/a/q0/e;-><init>(Le/a/a/q0/f;Ls1/w/d;)V

    invoke-static {v11, v8, v4, v11}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 151
    invoke-direct {v7, v5}, Le/a/a/q0/m;-><init>(I)V

    .line 152
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/g3/n;

    .line 154
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    goto :goto_17

    .line 155
    :cond_2e
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 156
    iget-object v6, v5, Le/a/h/k;->a:Le/a/f/b;

    invoke-interface {v6}, Le/a/f/b;->l()Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->NOT_SUPPORTED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_18

    .line 157
    :cond_2f
    iget-object v6, v5, Le/a/h/k;->a:Le/a/f/b;

    invoke-interface {v6}, Le/a/f/b;->f()Z

    move-result v6

    if-eqz v6, :cond_30

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_18

    .line 158
    :cond_30
    iget-object v6, v5, Le/a/h/k;->a:Le/a/f/b;

    invoke-interface {v6}, Le/a/f/b;->h()Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, v5, Le/a/h/k;->a:Le/a/f/b;

    invoke-interface {v6}, Le/a/f/b;->g()Z

    move-result v6

    if-eqz v6, :cond_32

    :cond_31
    iget-object v6, v5, Le/a/h/k;->a:Le/a/f/b;

    invoke-interface {v6}, Le/a/f/b;->g()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v5, Le/a/h/k;->b:Le/a/p5/g;

    invoke-interface {v6}, Le/a/p5/g;->f()Z

    move-result v6

    if-nez v6, :cond_33

    .line 159
    iget-object v5, v5, Le/a/h/k;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v5, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 160
    :cond_32
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->CHURN:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_18

    .line 161
    :cond_33
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 162
    :goto_18
    new-instance v6, Le/a/h/v;

    invoke-direct {v6, v5}, Le/a/h/v;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 163
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 164
    invoke-virtual {v0, v2}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 165
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 166
    iget-object v6, v5, Le/a/h/k;->c:Le/a/o/c;

    invoke-interface {v6}, Le/a/o/c;->isSupported()Z

    move-result v6

    if-nez v6, :cond_34

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->NOT_SUPPORTED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_19

    .line 167
    :cond_34
    iget-object v6, v5, Le/a/h/k;->c:Le/a/o/c;

    invoke-interface {v6}, Le/a/o/c;->q()Z

    move-result v6

    if-eqz v6, :cond_35

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_19

    .line 168
    :cond_35
    iget-object v5, v5, Le/a/h/k;->c:Le/a/o/c;

    invoke-interface {v5}, Le/a/o/c;->l()Z

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->CHURN:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_19

    .line 169
    :cond_36
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 170
    :goto_19
    new-instance v6, Le/a/h/h;

    invoke-direct {v6, v5}, Le/a/h/h;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 171
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 172
    new-instance v5, Le/a/g3/o;

    iget-object v6, v1, Le/a/g3/k;->r:Le/a/p5/a0;

    invoke-interface {v6}, Le/a/p5/a0;->b()Z

    move-result v6

    invoke-direct {v5, v6}, Le/a/g3/o;-><init>(Z)V

    .line 173
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 174
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 175
    iget-object v5, v5, Le/a/h/k;->e:Le/a/d/f;

    invoke-interface {v5}, Le/a/d/f;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_37

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_1a

    .line 176
    :cond_37
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 177
    :goto_1a
    new-instance v6, Le/a/h/n0;

    invoke-direct {v6, v5}, Le/a/h/n0;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 178
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 179
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 180
    iget-object v6, v5, Le/a/h/k;->e:Le/a/d/f;

    invoke-interface {v6}, Le/a/d/f;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v5, v5, Le/a/h/k;->e:Le/a/d/f;

    invoke-interface {v5}, Le/a/d/f;->r()Z

    move-result v5

    if-eqz v5, :cond_38

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_1b

    .line 181
    :cond_38
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 182
    :goto_1b
    new-instance v6, Le/a/h/m0;

    invoke-direct {v6, v5}, Le/a/h/m0;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 183
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 184
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 185
    iget-object v6, v5, Le/a/h/k;->f:Le/a/k/h;

    invoke-interface {v6}, Le/a/k/h;->z()Z

    move-result v6

    if-nez v6, :cond_39

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->NOT_SUPPORTED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_1c

    .line 186
    :cond_39
    iget-object v5, v5, Le/a/h/k;->f:Le/a/k/h;

    invoke-interface {v5}, Le/a/k/h;->b()Z

    move-result v5

    if-eqz v5, :cond_3a

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    goto :goto_1c

    .line 187
    :cond_3a
    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->DISABLED:Lcom/truecaller/calling/CallingCleverTapState;

    .line 188
    :goto_1c
    new-instance v6, Le/a/h/l0;

    invoke-direct {v6, v5}, Le/a/h/l0;-><init>(Lcom/truecaller/calling/CallingCleverTapState;)V

    .line 189
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    .line 190
    iget-object v5, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v5, Le/a/h/k;

    .line 191
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v6, Le/a/h/j;

    invoke-direct {v6, v5, v11}, Le/a/h/j;-><init>(Le/a/h/k;Ls1/w/d;)V

    invoke-static {v11, v6, v4, v11}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/g3/n;

    .line 193
    invoke-virtual {v0, v5}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    const/4 v5, 0x3

    new-array v5, v5, [Le/a/g3/n;

    .line 194
    new-instance v6, Le/a/g3/z;

    iget-object v7, v1, Le/a/g3/k;->o:Le/a/s4/a;

    const-string v8, "likelyToBuyMonthlySub"

    invoke-interface {v7, v8, v10}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v6, v7}, Le/a/g3/z;-><init>(Z)V

    aput-object v6, v5, v10

    .line 195
    new-instance v6, Le/a/g3/a0;

    iget-object v7, v1, Le/a/g3/k;->o:Le/a/s4/a;

    const-string v8, "likelyToBuyYearlySub"

    invoke-interface {v7, v8, v10}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v6, v7}, Le/a/g3/a0;-><init>(Z)V

    aput-object v6, v5, v4

    .line 196
    new-instance v6, Le/a/g3/y;

    iget-object v7, v1, Le/a/g3/k;->o:Le/a/s4/a;

    const-string v8, "likelyToBuyGoldSub"

    invoke-interface {v7, v8, v10}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v6, v7}, Le/a/g3/y;-><init>(Z)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 197
    invoke-static {v5}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 198
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/g3/n;

    .line 199
    invoke-virtual {v0, v6}, Le/a/g3/m;->a(Le/a/g3/n;)Le/a/g3/m;

    goto :goto_1d

    .line 200
    :cond_3b
    iget-object v5, v1, Le/a/g3/k;->h:Lcom/truecaller/clevertap/CleverTapManager;

    .line 201
    iget-object v6, v1, Le/a/g3/k;->e:Le/a/b0/o/a;

    const-string v7, "profileFirstName"

    invoke-interface {v6, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 202
    iget-object v6, v1, Le/a/g3/k;->f:Le/a/b0/e/r/a;

    const-string v7, "profileNumber"

    invoke-interface {v6, v7}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 203
    iget-object v6, v1, Le/a/g3/k;->e:Le/a/b0/o/a;

    const-string v7, "profileEmail"

    invoke-interface {v6, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 204
    iget-object v6, v1, Le/a/g3/k;->a:Landroid/content/Context;

    invoke-static {v6}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v6

    const-string v7, "languageAuto"

    .line 205
    invoke-static {v7, v4}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "language"

    if-eqz v7, :cond_3e

    .line 206
    iget-object v7, v1, Le/a/g3/k;->l:Le/a/b0/k/f;

    iget-object v9, v1, Le/a/g3/k;->a:Landroid/content/Context;

    invoke-virtual {v7, v9}, Le/a/b0/k/f;->c(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_3c

    goto :goto_1e

    :cond_3c
    iget-object v7, v1, Le/a/g3/k;->l:Le/a/b0/k/f;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "Locale.getDefault()"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "defaultLocale"

    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7}, Le/a/b0/k/f;->f()Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_3d

    goto :goto_1e

    :cond_3d
    move-object v7, v9

    goto :goto_1e

    .line 209
    :cond_3e
    new-instance v7, Ljava/util/Locale;

    invoke-static {v8}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 210
    :goto_1e
    invoke-static {v7}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object v7

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v8, v7, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 213
    iget-object v8, v8, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 214
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    iget-object v7, v7, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 216
    iget-object v7, v7, Le/a/b0/k/c;->c:Ljava/lang/String;

    .line 217
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 218
    new-instance v7, Lcom/truecaller/clevertap/CleverTapProfile;

    if-eqz v6, :cond_3f

    iget-object v11, v6, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    :cond_3f
    move-object/from16 v16, v11

    move-object v12, v7

    invoke-direct/range {v12 .. v17}, Lcom/truecaller/clevertap/CleverTapProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {v5, v7}, Lcom/truecaller/clevertap/CleverTapManager;->onUserLogin(Lcom/truecaller/clevertap/CleverTapProfile;)V

    .line 220
    iget-object v5, v1, Le/a/g3/k;->h:Lcom/truecaller/clevertap/CleverTapManager;

    invoke-interface {v5, v0}, Lcom/truecaller/clevertap/CleverTapManager;->updateProfile(Le/a/g3/m;)V

    .line 221
    iget-object v0, v1, Le/a/g3/k;->q:Le/a/h/i;

    check-cast v0, Le/a/h/k;

    .line 222
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "defaultDialerProperty"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Le/a/g3/n;->a()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "DefaultDailerState"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/truecaller/calling/CallingCleverTapState;->ENABLED:Lcom/truecaller/calling/CallingCleverTapState;

    if-ne v2, v5, :cond_40

    .line 224
    iget-object v0, v0, Le/a/h/k;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v3, v4}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    :cond_40
    return v4
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g3/k;->e:Le/a/b0/o/a;

    const-string v1, "featureCleverTap"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/g3/k;->j:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/a/r/t/c;->qa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
