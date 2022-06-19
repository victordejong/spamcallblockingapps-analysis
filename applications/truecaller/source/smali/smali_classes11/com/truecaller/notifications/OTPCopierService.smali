.class public final Lcom/truecaller/notifications/OTPCopierService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008S\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR.\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"0!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010Q\u00a8\u0006T"
    }
    d2 = {
        "Lcom/truecaller/notifications/OTPCopierService;",
        "Landroid/app/Service;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "",
        "actionType",
        "Lcom/truecaller/notifications/OtpAnalyticsModel;",
        "otpAnalyticsModel",
        "actionInfo",
        "a",
        "(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V",
        "Landroid/content/ClipboardManager;",
        "h",
        "Landroid/content/ClipboardManager;",
        "clipboardManager",
        "Le/a/p5/c0;",
        "Le/a/p5/c0;",
        "getResourceProvider",
        "()Le/a/p5/c0;",
        "setResourceProvider",
        "(Le/a/p5/c0;)V",
        "resourceProvider",
        "Lo3/a;",
        "Le/a/r2/f;",
        "Le/a/a/g/m;",
        "d",
        "Lo3/a;",
        "getMessageStorageRef",
        "()Lo3/a;",
        "setMessageStorageRef",
        "(Lo3/a;)V",
        "messageStorageRef",
        "Le/a/i4/e;",
        "b",
        "Le/a/i4/e;",
        "getAnalyticsNotificationManager",
        "()Le/a/i4/e;",
        "setAnalyticsNotificationManager",
        "(Le/a/i4/e;)V",
        "analyticsNotificationManager",
        "Le/a/c/c0/o;",
        "f",
        "Le/a/c/c0/o;",
        "getInsightConfig",
        "()Le/a/c/c0/o;",
        "setInsightConfig",
        "(Le/a/c/c0/o;)V",
        "insightConfig",
        "Le/a/q2/a;",
        "c",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/c/e/c;",
        "e",
        "Le/a/c/e/c;",
        "getInsightsAnalyticsManager",
        "()Le/a/c/e/c;",
        "setInsightsAnalyticsManager",
        "(Le/a/c/e/c;)V",
        "insightsAnalyticsManager",
        "Le/a/o5/j;",
        "g",
        "Le/a/o5/j;",
        "getAppListener",
        "()Le/a/o5/j;",
        "setAppListener",
        "(Le/a/o5/j;)V",
        "appListener",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/p5/c0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/i4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/c/e/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/c/c0/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/o5/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Landroid/content/ClipboardManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/notifications/OTPCopierService;->e:Le/a/c/e/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/16 v3, 0x7f

    const/16 v4, 0x7f

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-string v6, ""

    if-eqz v4, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    move-object v8, v6

    goto :goto_2

    :cond_2
    move-object v8, v2

    :goto_2
    and-int/lit8 v9, v3, 0x8

    if-eqz v9, :cond_3

    move-object v9, v6

    goto :goto_3

    :cond_3
    move-object v9, v2

    :goto_3
    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_4

    move-object v10, v6

    goto :goto_4

    :cond_4
    move-object v10, v2

    :goto_4
    and-int/lit8 v11, v3, 0x20

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move-object v6, v2

    :goto_5
    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const-string v3, "feature"

    .line 3
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "otp_notification"

    const-string v3, "<set-?>"

    .line 4
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getOtpProcessor()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getEventInfo()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p1

    .line 9
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, p3

    .line 10
    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getContext()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_8

    .line 14
    new-instance v3, Le/a/c/r/d/b;

    .line 15
    new-instance v5, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v6, v5

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v6 .. v18}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-direct {v3, v5, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 18
    invoke-interface {v1, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 19
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v1, "insightsAnalyticsManager"

    .line 20
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->s(Lcom/truecaller/notifications/OTPCopierService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    const-string v3, "intent"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OTPCopierService action should not be null"

    .line 2
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v4, "OTP_NOTIFICATION_ID"

    const/4 v5, -0x1

    .line 3
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v6, v5, :cond_0

    .line 4
    new-instance v4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    const/4 v5, 0x4

    invoke-direct {v4, v6, v8, v7, v5}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_16

    check-cast v4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    :goto_0
    const-wide/16 v5, -0x1

    const-string v9, "MESSAGE_ID"

    .line 6
    invoke-virtual {v1, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-string v13, "CONVERSATION_ID"

    .line 7
    invoke-virtual {v1, v13, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v13, "SILENT_MARK_AS_READ"

    .line 8
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    cmp-long v5, v9, v5

    const-string v6, "messageStorageRef"

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, v0, Lcom/truecaller/notifications/OTPCopierService;->d:Lo3/a;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/f;

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Le/a/a/g/m;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v5, 0x1

    new-array v6, v5, [J

    aput-wide v11, v6, v7

    new-array v5, v5, [J

    aput-wide v9, v5, v7

    const-string v14, "notification"

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    invoke-interface/range {v13 .. v18}, Le/a/a/g/m;->U(Ljava/lang/String;ZZ[J[J)V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_2
    if-eqz v13, :cond_6

    .line 10
    iget-object v5, v0, Lcom/truecaller/notifications/OTPCopierService;->f:Le/a/c/c0/o;

    if-eqz v5, :cond_5

    invoke-interface {v5, v13}, Le/a/c/c0/o;->e0(Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lcom/truecaller/notifications/OTPCopierService;->g:Le/a/o5/j;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Le/a/o5/j;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 12
    iget-object v5, v0, Lcom/truecaller/notifications/OTPCopierService;->d:Lo3/a;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/f;

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/g/m;

    invoke-interface {v5}, Le/a/a/g/m;->g()V

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_4
    const-string v1, "appListener"

    .line 13
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_5
    const-string v1, "insightConfig"

    .line 14
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 15
    :cond_6
    :goto_1
    iget-object v5, v4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    const-string v6, "analyticsNotificationManager"

    if-eqz v5, :cond_8

    .line 16
    iget-object v9, v0, Lcom/truecaller/notifications/OTPCopierService;->b:Le/a/i4/e;

    if-eqz v9, :cond_7

    .line 17
    iget v4, v4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 18
    invoke-interface {v9, v5, v4}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 19
    :cond_8
    iget-object v5, v0, Lcom/truecaller/notifications/OTPCopierService;->b:Le/a/i4/e;

    if-eqz v5, :cond_15

    .line 20
    iget v4, v4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 21
    invoke-interface {v5, v4}, Le/a/i4/e;->f(I)V

    :goto_2
    const-string v4, "extra_otp_analytics_model"

    .line 22
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/truecaller/notifications/OtpAnalyticsModel;

    if-nez v3, :cond_9

    goto/16 :goto_3

    .line 23
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x26addcd6

    const-string v9, "click"

    const-string v10, "analytics"

    if-eq v5, v6, :cond_f

    const v1, 0x11d98b2d

    if-eq v5, v1, :cond_c

    const v1, 0x7918f157

    if-eq v5, v1, :cond_a

    goto/16 :goto_3

    :cond_a
    const-string v1, "ACTION_MARK_MESSAGE_READ"

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v4, :cond_14

    const-string v1, "mark_read"

    .line 25
    invoke-virtual {v0, v9, v4, v1}, Lcom/truecaller/notifications/OTPCopierService;->a(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;->MARK_OTP_READ:Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;

    invoke-virtual {v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->l(Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    iget-object v2, v0, Lcom/truecaller/notifications/OTPCopierService;->c:Le/a/q2/a;

    if-eqz v2, :cond_b

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto/16 :goto_3

    :cond_b
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_c
    const-string v1, "ACTION_DISMISS_OTP"

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v4, :cond_d

    const-string v1, "dismiss"

    const-string v3, ""

    .line 28
    invoke-virtual {v0, v1, v4, v3}, Lcom/truecaller/notifications/OTPCopierService;->a(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V

    .line 29
    :cond_d
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;->DISMISS_OTP:Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;

    invoke-virtual {v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->l(Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    iget-object v2, v0, Lcom/truecaller/notifications/OTPCopierService;->c:Le/a/q2/a;

    if-eqz v2, :cond_e

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_3

    :cond_e
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_f
    const-string v5, "ACTION_COPY_OTP"

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 31
    invoke-static/range {p0 .. p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    const-string v3, "OTP"

    .line 32
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.truecaller.OTP"

    .line 33
    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 34
    iget-object v3, v0, Lcom/truecaller/notifications/OTPCopierService;->h:Landroid/content/ClipboardManager;

    if-eqz v3, :cond_13

    if-eqz v3, :cond_10

    .line 35
    invoke-virtual {v3, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 36
    :cond_10
    iget-object v1, v0, Lcom/truecaller/notifications/OTPCopierService;->a:Le/a/p5/c0;

    if-eqz v1, :cond_12

    const v3, 0x7f120e07

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 39
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;->COPY_OTP:Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;

    invoke-virtual {v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->l(Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    iget-object v2, v0, Lcom/truecaller/notifications/OTPCopierService;->c:Le/a/q2/a;

    if-eqz v2, :cond_11

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    if-eqz v4, :cond_14

    const-string v1, "copy_message"

    .line 40
    invoke-virtual {v0, v9, v4, v1}, Lcom/truecaller/notifications/OTPCopierService;->a(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_11
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_12
    const-string v1, "resourceProvider"

    .line 42
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_13
    const-string v1, "Clipboard manager is null."

    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    :cond_14
    :goto_3
    const/4 v1, 0x2

    return v1

    .line 44
    :cond_15
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 45
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
