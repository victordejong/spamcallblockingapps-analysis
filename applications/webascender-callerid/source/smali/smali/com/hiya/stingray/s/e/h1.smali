.class public final Lcom/hiya/stingray/s/e/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/e1;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/e1;

    invoke-direct {v0, p1, p2}, Lcom/hiya/stingray/manager/e1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/b3;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/j2;)Lcom/hiya/stingray/manager/g1;
    .locals 11

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsManager"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoPremiumManager"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreeningServiceManager"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDialerManager"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/g1;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/hiya/stingray/manager/g1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/b3;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/j2;)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/k1;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/k1;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/k1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method public final d(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/s1;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/s1;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/s1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method public final e(Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)Lcom/hiya/stingray/ui/callergrid/j;
    .locals 8

    const-string v0, "callLogContentProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdProvider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactContentProvider"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerGridMapper"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/callergrid/j;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/ui/callergrid/j;-><init>(Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)V

    return-object v0
.end method

.method public final f(Landroid/content/Context;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/l4;Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/w1;
    .locals 10

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blackListManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whiteListManager"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreenerManager"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/w1;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/hiya/stingray/manager/w1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/l4;Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/u3;)V

    return-object v0
.end method

.method public final g(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/s2;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/s2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/manager/s2;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method public final h(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/u2;
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/u2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hiya/stingray/manager/u2;-><init>(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method public final i(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/p4/a;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)Lcom/hiya/stingray/manager/g3;
    .locals 9

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeManager"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsManager"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/g3;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/manager/g3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/p4/a;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)V

    return-object v0
.end method

.method public final j(Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/ui/login/o;
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/login/o;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/login/o;-><init>(Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method public final k(Landroid/content/Context;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/b2;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/manager/u3;
    .locals 10

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedUserSharedPreferences"

    move-object v5, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    move-object v4, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashReportingManager"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoPremiumManager"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/u3;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/hiya/stingray/manager/u3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/b2;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method public final l(Landroid/content/Context;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/l1;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/manager/a4;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedUserSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/a4;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/manager/a4;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/l1;Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method public final m(Landroid/content/Context;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/manager/p4/a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/p4/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/p4/a;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method
