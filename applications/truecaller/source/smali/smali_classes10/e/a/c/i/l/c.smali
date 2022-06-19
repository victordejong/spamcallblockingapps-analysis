.class public final Le/a/c/i/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/l/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/c/i/i/a;

.field public final c:Le/a/c/r/h/b;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/i/l/f/a;

.field public final f:Le/a/c/e/c;

.field public final g:Le/a/c/f/h;

.field public final h:Le/a/b0/m/c/a;

.field public final i:Le/a/c/w/o0/g;

.field public final j:Le/a/c/i/l/g/a;

.field public final k:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/c/i/i/a;Le/a/c/r/h/b;Le/a/c/b/j;Le/a/c/i/l/f/a;Le/a/c/e/c;Le/a/c/f/h;Le/a/b0/m/c/a;Le/a/c/w/o0/g;Le/a/c/i/l/g/a;Le/a/c/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/c/i/i/a;",
            "Le/a/c/r/h/b;",
            "Le/a/c/b/j;",
            "Le/a/c/i/l/f/a;",
            "Le/a/c/e/c;",
            "Le/a/c/f/h;",
            "Le/a/b0/m/c/a;",
            "Le/a/c/w/o0/g;",
            "Le/a/c/i/l/g/a;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartNotificationManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiSchemaBinder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUpdateNotificationHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/i/l/c;->b:Le/a/c/i/i/a;

    iput-object p3, p0, Le/a/c/i/l/c;->c:Le/a/c/r/h/b;

    iput-object p4, p0, Le/a/c/i/l/c;->d:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/i/l/c;->e:Le/a/c/i/l/f/a;

    iput-object p6, p0, Le/a/c/i/l/c;->f:Le/a/c/e/c;

    iput-object p7, p0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    iput-object p8, p0, Le/a/c/i/l/c;->h:Le/a/b0/m/c/a;

    iput-object p9, p0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    iput-object p10, p0, Le/a/c/i/l/c;->j:Le/a/c/i/l/g/a;

    iput-object p11, p0, Le/a/c/i/l/c;->k:Le/a/c/j/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLe/a/c/i/l/f/f;Le/a/c/i/l/e/a;JZI)Z
    .locals 16

    const-string v0, "senderId"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageText"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartNotificationsHelper"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBannerHelper"

    move-object/from16 v12, p8

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/i/l/c$d;

    const/4 v15, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p11

    move-wide/from16 v6, p9

    move/from16 v8, p5

    move/from16 v9, p12

    move-object/from16 v10, p3

    move/from16 v13, p4

    move/from16 v14, p6

    invoke-direct/range {v1 .. v15}, Le/a/c/i/l/c$d;-><init>(Le/a/c/i/l/c;ZLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;ZZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ILjava/lang/String;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;ZZZLs1/w/d;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "I",
            "Ljava/lang/String;",
            "Le/a/c/i/l/f/f;",
            "Le/a/c/i/l/e/a;",
            "ZZZ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p9

    instance-of v1, v0, Le/a/c/i/l/c$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/i/l/c$a;

    iget v2, v1, Le/a/c/i/l/c$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/l/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/l/c$a;

    invoke-direct {v1, v9, v0}, Le/a/c/i/l/c$a;-><init>(Le/a/c/i/l/c;Ls1/w/d;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Le/a/c/i/l/c$a;->d:Ljava/lang/Object;

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/c/i/l/c$a;->e:I

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v11, :cond_1

    iget-boolean v1, v8, Le/a/c/i/l/c$a;->m:Z

    iget-boolean v2, v8, Le/a/c/i/l/c$a;->l:Z

    iget-boolean v3, v8, Le/a/c/i/l/c$a;->k:Z

    iget v4, v8, Le/a/c/i/l/c$a;->j:I

    iget-object v5, v8, Le/a/c/i/l/c$a;->i:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/l/e/a;

    iget-object v6, v8, Le/a/c/i/l/c$a;->h:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/l/f/f;

    iget-object v7, v8, Le/a/c/i/l/c$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/i/l/c;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v15, v3

    move v14, v4

    move-object v13, v5

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v9, v8, Le/a/c/i/l/c$a;->g:Ljava/lang/Object;

    move-object/from16 v12, p4

    iput-object v12, v8, Le/a/c/i/l/c$a;->h:Ljava/lang/Object;

    move-object/from16 v13, p5

    iput-object v13, v8, Le/a/c/i/l/c$a;->i:Ljava/lang/Object;

    move/from16 v14, p2

    iput v14, v8, Le/a/c/i/l/c$a;->j:I

    move/from16 v15, p6

    iput-boolean v15, v8, Le/a/c/i/l/c$a;->k:Z

    move/from16 v7, p7

    iput-boolean v7, v8, Le/a/c/i/l/c$a;->l:Z

    move/from16 v6, p8

    iput-boolean v6, v8, Le/a/c/i/l/c$a;->m:Z

    iput v11, v8, Le/a/c/i/l/c$a;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 5
    invoke-virtual/range {v0 .. v8}, Le/a/c/i/l/c;->c(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/lang/String;ZZZLe/a/c/i/l/f/f;Le/a/c/i/l/e/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3

    return-object v10

    :cond_3
    move/from16 v2, p7

    move/from16 v1, p8

    move-object v7, v9

    move-object v6, v12

    .line 6
    :goto_1
    check-cast v0, Le/a/c/r/k/a;

    if-eqz v0, :cond_7

    .line 7
    iget-object v3, v7, Le/a/c/i/l/c;->e:Le/a/c/i/l/f/a;

    invoke-interface {v3, v14}, Le/a/c/i/l/f/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v11, 0x0

    goto :goto_2

    .line 8
    :cond_4
    iget-object v3, v7, Le/a/c/i/l/c;->e:Le/a/c/i/l/f/a;

    move-object/from16 p1, v3

    move-object/from16 p2, v0

    move-object/from16 p3, v6

    move-object/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v1

    invoke-interface/range {p1 .. p7}, Le/a/c/i/l/f/a;->a(Le/a/c/r/k/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;IZZ)V

    :goto_2
    if-eqz v11, :cond_7

    .line 9
    iget-object v1, v0, Le/a/c/r/k/a;->a:Le/a/c/r/k/b;

    .line 10
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, ""

    const-string v5, "feature"

    .line 11
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "eventCategory"

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventInfo"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "context"

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "actionType"

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "actionInfo"

    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "propertyMap"

    invoke-static {v3, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "custom_smart_notification"

    const-string v10, "<set-?>"

    .line 12
    invoke-static {v11, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "create"

    .line 13
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, v12

    .line 14
    iget-object v12, v1, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 15
    invoke-virtual {v12}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getCategory()Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-static {v12, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v1, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const-string v2, "im"

    goto :goto_3

    :cond_5
    const-string v2, "sms"

    .line 20
    :goto_3
    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p2, v8

    .line 21
    new-instance v8, Le/a/c/r/d/b;

    move-object/from16 p3, v6

    .line 22
    new-instance v6, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c0

    const/16 v22, 0x0

    move-object/from16 v23, v10

    move-object v10, v6

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move-object v13, v1

    move-object v1, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v22}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 23
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 24
    invoke-direct {v8, v6, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 25
    iget-object v3, v7, Le/a/c/i/l/c;->f:Le/a/c/e/c;

    invoke-interface {v3, v8}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 26
    iget-object v0, v0, Le/a/c/r/k/a;->a:Le/a/c/r/k/b;

    .line 27
    iget-object v0, v0, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v0, :cond_6

    .line 28
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v25

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v24

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "promo_banner"

    move-object/from16 v1, v23

    .line 30
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getCategory()Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "smart_notification"

    .line 35
    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "create"

    .line 36
    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "show_details"

    .line 37
    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Le/a/c/r/d/b;

    .line 39
    new-instance v1, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const/16 v20, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 40
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 41
    invoke-direct {v0, v1, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 42
    iget-object v1, v7, Le/a/c/i/l/c;->f:Le/a/c/e/c;

    invoke-interface {v1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 43
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 44
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic c(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/lang/String;ZZZLe/a/c/i/l/f/f;Le/a/c/i/l/e/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ljava/lang/String;",
            "ZZZ",
            "Le/a/c/i/l/f/f;",
            "Le/a/c/i/l/e/a;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/r/k/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    instance-of v2, v1, Le/a/c/i/l/c$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/i/l/c$b;

    iget v3, v2, Le/a/c/i/l/c$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/l/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/l/c$b;

    invoke-direct {v2, v0, v1}, Le/a/c/i/l/c$b;-><init>(Le/a/c/i/l/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/i/l/c$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/i/l/c$b;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-boolean v3, v2, Le/a/c/i/l/c$b;->n:Z

    iget-boolean v4, v2, Le/a/c/i/l/c$b;->m:Z

    iget-boolean v7, v2, Le/a/c/i/l/c$b;->l:Z

    iget-object v8, v2, Le/a/c/i/l/c$b;->k:Ljava/lang/Object;

    check-cast v8, Le/a/b0/m/a/a;

    iget-object v9, v2, Le/a/c/i/l/c$b;->j:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/l/e/a;

    iget-object v10, v2, Le/a/c/i/l/c$b;->i:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/l/f/f;

    iget-object v11, v2, Le/a/c/i/l/c$b;->h:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v2, v2, Le/a/c/i/l/c$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/l/c;

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v2

    move-object/from16 v2, v20

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/i/l/c;->h:Le/a/b0/m/c/a;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Le/a/b0/m/c/a;->Kw(Ljava/lang/String;)Le/a/b0/m/a/a;

    move-result-object v8

    .line 5
    :try_start_1
    iput-object v0, v2, Le/a/c/i/l/c$b;->g:Ljava/lang/Object;

    move-object/from16 v1, p2

    iput-object v1, v2, Le/a/c/i/l/c$b;->h:Ljava/lang/Object;

    move-object/from16 v4, p6

    iput-object v4, v2, Le/a/c/i/l/c$b;->i:Ljava/lang/Object;

    move-object/from16 v7, p7

    iput-object v7, v2, Le/a/c/i/l/c$b;->j:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/i/l/c$b;->k:Ljava/lang/Object;

    move/from16 v9, p3

    iput-boolean v9, v2, Le/a/c/i/l/c$b;->l:Z

    move/from16 v10, p4

    iput-boolean v10, v2, Le/a/c/i/l/c$b;->m:Z

    move/from16 v11, p5

    iput-boolean v11, v2, Le/a/c/i/l/c$b;->n:Z

    iput v6, v2, Le/a/c/i/l/c$b;->e:I

    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v2}, Le/a/c/i/l/c;->d(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    move v3, v11

    move-object v11, v1

    move-object v1, v4

    move v4, v10

    move-object v10, v0

    move/from16 v20, v9

    move-object v9, v2

    move-object v2, v7

    move/from16 v7, v20

    .line 6
    :goto_1
    check-cast v9, Le/a/c/r/b;

    .line 7
    instance-of v12, v9, Le/a/c/r/b$a;

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    move-object v6, v9

    check-cast v6, Le/a/c/r/b$a;

    .line 8
    iget-object v9, v10, Le/a/c/i/l/c;->a:Landroid/content/Context;

    move-object/from16 p1, v6

    move-object/from16 p2, v9

    move/from16 p3, v7

    move/from16 p4, v4

    move/from16 p5, v3

    move-object/from16 p6, v8

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    .line 9
    invoke-static/range {p1 .. p8}, Le/a/m0/a1$k;->l1(Le/a/c/r/b$a;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto/16 :goto_4

    .line 10
    :cond_4
    instance-of v12, v9, Le/a/c/r/b$b;

    if-eqz v12, :cond_6

    check-cast v9, Le/a/c/r/b$b;

    .line 11
    iget-object v12, v10, Le/a/c/i/l/c;->a:Landroid/content/Context;

    if-eqz v3, :cond_5

    move v14, v6

    goto :goto_3

    :cond_5
    move v14, v13

    .line 12
    :goto_3
    iget-object v3, v10, Le/a/c/i/l/c;->d:Le/a/c/b/j;

    .line 13
    iget-object v6, v10, Le/a/c/i/l/c;->k:Le/a/c/j/e;

    move-object v10, v12

    move v12, v7

    move v13, v4

    move-object v15, v8

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    .line 14
    invoke-static/range {v9 .. v19}, Le/a/m0/a1$k;->m1(Le/a/c/r/b$b;Landroid/content/Context;Ljava/lang/String;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;Le/a/c/b/j;Le/a/c/j/e;)Le/a/c/r/k/a;

    move-result-object v1

    goto :goto_2

    .line 15
    :cond_6
    instance-of v6, v9, Le/a/c/r/b$f;

    if-eqz v6, :cond_8

    .line 16
    iget-object v6, v10, Le/a/c/i/l/c;->d:Le/a/c/b/j;

    invoke-interface {v6}, Le/a/c/b/j;->j()Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_4

    .line 17
    :cond_7
    move-object v6, v9

    check-cast v6, Le/a/c/r/b$f;

    .line 18
    iget-object v9, v10, Le/a/c/i/l/c;->a:Landroid/content/Context;

    move-object/from16 p1, v6

    move-object/from16 p2, v9

    move/from16 p3, v7

    move/from16 p4, v4

    move/from16 p5, v3

    move-object/from16 p6, v8

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    .line 19
    invoke-static/range {p1 .. p8}, Le/a/m0/a1$k;->p1(Le/a/c/r/b$f;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;

    move-result-object v1

    goto :goto_2

    .line 20
    :cond_8
    instance-of v6, v9, Le/a/c/r/b$c;

    if-eqz v6, :cond_9

    .line 21
    move-object v6, v9

    check-cast v6, Le/a/c/r/b$c;

    .line 22
    iget-object v9, v10, Le/a/c/i/l/c;->a:Landroid/content/Context;

    move-object/from16 p1, v6

    move-object/from16 p2, v9

    move/from16 p3, v7

    move/from16 p4, v4

    move/from16 p5, v3

    move-object/from16 p6, v8

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    .line 23
    invoke-static/range {p1 .. p8}, Le/a/m0/a1$k;->n1(Le/a/c/r/b$c;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;

    move-result-object v1

    goto :goto_2

    .line 24
    :cond_9
    instance-of v6, v9, Le/a/c/r/b$d;

    if-eqz v6, :cond_a

    .line 25
    move-object v6, v9

    check-cast v6, Le/a/c/r/b$d;

    .line 26
    iget-object v9, v10, Le/a/c/i/l/c;->a:Landroid/content/Context;

    move-object/from16 p1, v6

    move-object/from16 p2, v9

    move/from16 p3, v7

    move/from16 p4, v4

    move/from16 p5, v3

    move-object/from16 p6, v8

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    .line 27
    invoke-static/range {p1 .. p8}, Le/a/m0/a1$k;->o1(Le/a/c/r/b$d;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 28
    :catch_0
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "Binding Ui for Insights Smart Notification failed"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-object v5
.end method

.method public final d(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/r/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/c/i/l/c$c;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/i/l/c$c;

    iget v4, v3, Le/a/c/i/l/c$c;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/i/l/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/i/l/c$c;

    invoke-direct {v3, v0, v2}, Le/a/c/i/l/c$c;-><init>(Le/a/c/i/l/c;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/i/l/c$c;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/i/l/c$c;->e:I

    const/16 v6, 0xa

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v10, :cond_2

    if-ne v5, v9, :cond_1

    iget-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/f/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/f/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/f/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/f/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    iget-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/f/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_6

    :sswitch_0
    const-string v5, "Delivery"

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    .line 6
    iget-object v5, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v14

    iput-object v2, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    iput v10, v3, Le/a/c/i/l/c$c;->e:I

    invoke-interface {v5, v6, v14, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_8

    return-object v4

    :cond_8
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 7
    sget-object v4, Ls1/u/t;->a:Ls1/u/t;

    .line 8
    invoke-static {v1, v4, v2}, Le/a/m0/a1$k;->q1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$b;

    move-result-object v1

    new-array v2, v7, [Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    .line 9
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v8

    .line 10
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v13

    .line 11
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ORDER_STATUS:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v12

    .line 12
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ITEM_NAME:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v11

    .line 13
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v10

    .line 14
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v2, v9

    .line 15
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-interface {v3, v1, v2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v14

    goto/16 :goto_7

    :sswitch_1
    const-string v5, "Event"

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    .line 18
    iget-object v5, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v14

    iput-object v2, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    iput v9, v3, Le/a/c/i/l/c$c;->e:I

    invoke-interface {v5, v15, v14, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_9

    return-object v4

    :cond_9
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Le/a/m0/a1$k;->t1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$c;

    move-result-object v1

    new-array v2, v6, [Lcom/truecaller/insights/binders/utils/EventUiProperties;

    .line 19
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v8

    .line 20
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_TYPE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v13

    .line 21
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_STATUS:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v12

    .line 22
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->NAME:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v11

    .line 23
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->TITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v10

    .line 24
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SUBTITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v9

    .line 25
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SMALL_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v2, v7

    .line 26
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->BIG_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const/4 v5, 0x7

    aput-object v4, v2, v5

    .line 27
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const/16 v5, 0x8

    aput-object v4, v2, v5

    .line 28
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const/16 v5, 0x9

    aput-object v4, v2, v5

    .line 29
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-interface {v3, v1, v2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v14

    goto/16 :goto_7

    :sswitch_2
    const-string v5, "Bill"

    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    .line 32
    iget-object v5, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v15

    iput-object v2, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    iput v13, v3, Le/a/c/i/l/c$c;->e:I

    invoke-interface {v5, v14, v15, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_a

    return-object v4

    :cond_a
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v13}, Le/a/m0/a1$k;->j1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/truecaller/insights/binders/utils/BillUiProperties;

    .line 33
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v8

    .line 34
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v13

    .line 35
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUEINS_NUM:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v12

    .line 36
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUEINS_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v11

    .line 37
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v10

    .line 38
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v9

    .line 39
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v7

    .line 40
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const/4 v5, 0x7

    aput-object v4, v2, v5

    .line 41
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const/16 v5, 0x8

    aput-object v4, v2, v5

    .line 42
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const/16 v5, 0x9

    aput-object v4, v2, v5

    .line 43
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v2, v6

    .line 44
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-interface {v3, v1, v2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v14

    goto/16 :goto_7

    :sswitch_3
    const-string v5, "Bank"

    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    .line 47
    iget-object v5, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v14

    iput-object v2, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    iput v12, v3, Le/a/c/i/l/c$c;->e:I

    invoke-interface {v5, v6, v14, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_b

    return-object v4

    :cond_b
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Le/a/m0/a1$k;->f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/truecaller/insights/binders/utils/BankUiProperties;

    .line 48
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v8

    .line 49
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ICON_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v13

    .line 50
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v12

    .line 51
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_AMT:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v11

    .line 52
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_ACC_DETAIL:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v10

    .line 53
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v9

    .line 54
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v2, v7

    .line 55
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 56
    invoke-interface {v3, v1, v2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v14

    goto :goto_7

    :sswitch_4
    const-string v5, "Travel"

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Le/a/c/i/l/c;->g:Le/a/c/f/h;

    .line 58
    iget-object v5, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v14

    iput-object v2, v3, Le/a/c/i/l/c$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/l/c$c;->h:Ljava/lang/Object;

    iput v11, v3, Le/a/c/i/l/c$c;->e:I

    invoke-interface {v5, v6, v14, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_c

    return-object v4

    :cond_c
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v13}, Le/a/m0/a1$k;->E1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$f;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    .line 59
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->TRAVEL_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v8

    .line 60
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->DATETIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v13

    .line 61
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CONTENT_TITLE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v12

    .line 62
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v11

    .line 63
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CATEGORY:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v10

    .line 64
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v9

    .line 65
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ALERT_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v2, v7

    .line 66
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/4 v5, 0x7

    aput-object v4, v2, v5

    .line 67
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-interface {v3, v1, v2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v14

    goto :goto_7

    :goto_6
    move-object v14, v4

    :goto_7
    return-object v14

    :sswitch_data_0
    .sparse-switch
        -0x6a3494c6 -> :sswitch_4
        0x1f7a5c -> :sswitch_3
        0x1f9827 -> :sswitch_2
        0x403827a -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch
.end method
