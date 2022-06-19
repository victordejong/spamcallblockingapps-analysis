.class public final Le/a/q2/z0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/z0/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls1/w/f;

.field public final c:Le/a/b0/e/l;

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/p5/u;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/b0/e/f;

.field public final j:Le/a/c3/a;

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/p5/c;

.field public final m:Le/a/q2/a;

.field public final n:Le/a/u3/g;

.field public final o:Lu3/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/e/l;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/p5/u;Lo3/a;Lo3/a;Le/a/b0/e/f;Le/a/c3/a;Lo3/a;Le/a/p5/c;Le/a/q2/a;Le/a/u3/g;Lu3/e0;)V
    .locals 16
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Le/a/b0/e/l;",
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Le/a/h/b0;",
            ">;",
            "Le/a/p5/u;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;",
            "Le/a/b0/e/f;",
            "Le/a/c3/a;",
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;",
            "Le/a/p5/c;",
            "Le/a/q2/a;",
            "Le/a/u3/g;",
            "Lu3/e0;",
            ")V"
        }
    .end annotation

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

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simSelectionHelper"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsHttpClient"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    iput-object v2, v0, Le/a/q2/z0/c;->b:Ls1/w/f;

    iput-object v3, v0, Le/a/q2/z0/c;->c:Le/a/b0/e/l;

    iput-object v4, v0, Le/a/q2/z0/c;->d:Ljavax/inject/Provider;

    iput-object v5, v0, Le/a/q2/z0/c;->e:Ljavax/inject/Provider;

    iput-object v6, v0, Le/a/q2/z0/c;->f:Le/a/p5/u;

    iput-object v7, v0, Le/a/q2/z0/c;->g:Lo3/a;

    iput-object v8, v0, Le/a/q2/z0/c;->h:Lo3/a;

    iput-object v9, v0, Le/a/q2/z0/c;->i:Le/a/b0/e/f;

    iput-object v10, v0, Le/a/q2/z0/c;->j:Le/a/c3/a;

    iput-object v11, v0, Le/a/q2/z0/c;->k:Lo3/a;

    iput-object v12, v0, Le/a/q2/z0/c;->l:Le/a/p5/c;

    iput-object v13, v0, Le/a/q2/z0/c;->m:Le/a/q2/a;

    iput-object v14, v0, Le/a/q2/z0/c;->n:Le/a/u3/g;

    iput-object v15, v0, Le/a/q2/z0/c;->o:Lu3/e0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/z0/c;->c:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/q2/z0/c;->b:Ls1/w/f;

    new-instance v4, Le/a/q2/z0/c$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/q2/z0/c$a;-><init>(Le/a/q2/z0/c;Lcom/truecaller/analytics/heartbeat/HeartBeatType;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)Landroidx/work/ListenableWorker$a;
    .locals 9

    const-string v0, "ListenableWorker.Result.retry()"

    const-string v1, "type"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->getStringRepr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/q2/z0/c;->e(Ljava/lang/String;)Le/a/l5/a/q0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v4, p0, Le/a/q2/z0/c;->d:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/a0;

    iget-object v5, p0, Le/a/q2/z0/c;->o:Lu3/e0;

    invoke-interface {v4, p1, v5}, Le/a/q2/a0;->b(Lorg/apache/avro/generic/GenericRecord;Lu3/e0;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/analytics/EventsUploadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    instance-of v4, p1, Ls1/l$a;

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    check-cast p1, Lcom/truecaller/analytics/EventsUploadResult;

    .line 5
    iget-object v4, p0, Le/a/q2/z0/c;->n:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->i0()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    .line 7
    :goto_1
    sget-object v4, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;->FAILURE:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    goto :goto_2

    .line 8
    :cond_2
    sget-object v4, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;->QUEUED:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    goto :goto_2

    .line 9
    :cond_3
    sget-object v4, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;->SUCCESS:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    .line 10
    :goto_2
    iget-object v5, p0, Le/a/q2/z0/c;->l:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v5

    .line 11
    iget-object v7, p0, Le/a/q2/z0/c;->k:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b0/o/a;

    const-string v8, "hbLastTime"

    invoke-interface {v7, v8, v1, v2}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 12
    invoke-static {v5, v6, v1, v2}, Ls1/d0/j;->a(JJ)J

    move-result-wide v1

    .line 13
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    .line 14
    new-instance v5, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;

    invoke-direct {v5, v4, v1, v2}, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;-><init>(Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;J)V

    iget-object v1, p0, Le/a/q2/z0/c;->m:Le/a/q2/a;

    invoke-static {v5, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_4
    if-nez p1, :cond_5

    .line 15
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v0, "ListenableWorker.Result.failure()"

    .line 20
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 21
    :cond_8
    :goto_3
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v0, "ListenableWorker.Result.success()"

    .line 22
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object p1

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 24
    iget-object p1, p0, Le/a/q2/z0/c;->n:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->i0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    new-instance p1, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;

    sget-object v4, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;->FAILED_BUILDING_EVENT:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    invoke-direct {p1, v4, v1, v2, v3}, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;-><init>(Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;JI)V

    iget-object v1, p0, Le/a/q2/z0/c;->m:Le/a/q2/a;

    invoke-static {p1, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 26
    :cond_9
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 27
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Le/a/l5/a/q0$b;Landroid/telephony/TelephonyManager;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 2
    :try_start_1
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3
    instance-of v4, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :try_start_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :cond_0
    move v0, v3

    .line 8
    :catch_2
    :goto_1
    invoke-static {}, Le/a/l5/a/q3;->a()Le/a/l5/a/q3$b;

    move-result-object p2

    .line 9
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {p2, v2}, Le/a/l5/a/q3$b;->b(I)Le/a/l5/a/q3$b;

    .line 10
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p2, v1}, Le/a/l5/a/q3$b;->c(I)Le/a/l5/a/q3$b;

    .line 11
    invoke-virtual {p2, v3}, Le/a/l5/a/q3$b;->e(I)Le/a/l5/a/q3$b;

    .line 12
    invoke-virtual {p2, v0}, Le/a/l5/a/q3$b;->d(I)Le/a/l5/a/q3$b;

    .line 13
    invoke-virtual {p2}, Le/a/l5/a/q3$b;->a()Le/a/l5/a/q3;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/q0$b;->c(Le/a/l5/a/q3;)Le/a/l5/a/q0$b;

    goto :goto_2

    .line 14
    :cond_1
    instance-of p2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p2, :cond_2

    .line 15
    sget-object p2, Le/a/l5/a/k3;->c:Lorg/apache/avro/Schema;

    new-instance p2, Le/a/l5/a/k3$b;

    invoke-direct {p2, v0}, Le/a/l5/a/k3$b;-><init>(Le/a/l5/a/k3$a;)V

    .line 16
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Le/a/l5/a/k3$b;->b(F)Le/a/l5/a/k3$b;

    .line 17
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Le/a/l5/a/k3$b;->c(F)Le/a/l5/a/k3$b;

    .line 18
    invoke-virtual {p2}, Le/a/l5/a/k3$b;->a()Le/a/l5/a/k3;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/q0$b;->b(Le/a/l5/a/k3;)Le/a/l5/a/q0$b;

    :catch_3
    :cond_2
    :goto_2
    return-void

    .line 19
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 20
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    instance-of v4, v1, Landroid/telephony/CellInfoGsm;

    const-string v5, "cell.cellIdentity ?: continue@loop"

    if-eqz v4, :cond_6

    .line 22
    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Le/a/l5/a/q3;->a()Le/a/l5/a/q3$b;

    move-result-object p2

    .line 24
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v0

    invoke-virtual {p2, v0}, Le/a/l5/a/q3$b;->d(I)Le/a/l5/a/q3$b;

    .line 25
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v0

    invoke-virtual {p2, v0}, Le/a/l5/a/q3$b;->e(I)Le/a/l5/a/q3$b;

    .line 26
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    invoke-virtual {p2, v0}, Le/a/l5/a/q3$b;->c(I)Le/a/l5/a/q3$b;

    .line 27
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    invoke-virtual {p2, v0}, Le/a/l5/a/q3$b;->b(I)Le/a/l5/a/q3$b;

    .line 28
    invoke-virtual {p2}, Le/a/l5/a/q3$b;->a()Le/a/l5/a/q3;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/q0$b;->c(Le/a/l5/a/q3;)Le/a/l5/a/q0$b;

    goto/16 :goto_5

    .line 29
    :cond_6
    instance-of v4, v1, Landroid/telephony/CellInfoLte;

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    .line 30
    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p2, Le/a/l5/a/t3;->e:Lorg/apache/avro/Schema;

    new-instance p2, Le/a/l5/a/t3$b;

    invoke-direct {p2, v0}, Le/a/l5/a/t3$b;-><init>(Le/a/l5/a/t3$a;)V

    .line 32
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 34
    iput v0, p2, Le/a/l5/a/t3$b;->a:I

    .line 35
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v3

    .line 36
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    .line 37
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput v0, p2, Le/a/l5/a/t3$b;->b:I

    .line 39
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v6

    .line 40
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    .line 41
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput v0, p2, Le/a/l5/a/t3$b;->c:I

    .line 43
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v4

    .line 44
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    .line 45
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 46
    iput v0, p2, Le/a/l5/a/t3$b;->d:I

    .line 47
    invoke-virtual {p2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v2

    .line 48
    invoke-virtual {p2}, Le/a/l5/a/t3$b;->a()Le/a/l5/a/t3;

    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 50
    iput-object p2, p1, Le/a/l5/a/q0$b;->g:Le/a/l5/a/t3;

    .line 51
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v6, p1, v1

    goto :goto_5

    .line 52
    :cond_7
    instance-of v4, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_8

    .line 53
    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object p2, Le/a/l5/a/k3;->c:Lorg/apache/avro/Schema;

    new-instance p2, Le/a/l5/a/k3$b;

    invoke-direct {p2, v0}, Le/a/l5/a/k3$b;-><init>(Le/a/l5/a/k3$a;)V

    .line 55
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Le/a/l5/a/k3$b;->b(F)Le/a/l5/a/k3$b;

    .line 56
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Le/a/l5/a/k3$b;->c(F)Le/a/l5/a/k3$b;

    .line 57
    invoke-virtual {p2}, Le/a/l5/a/k3$b;->a()Le/a/l5/a/k3;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/q0$b;->b(Le/a/l5/a/k3;)Le/a/l5/a/q0$b;

    goto :goto_5

    .line 58
    :cond_8
    instance-of v4, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_4

    check-cast v1, Landroid/telephony/CellInfoWcdma;

    .line 59
    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v4, "cell.cellIdentity ?: return false"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Le/a/l5/a/q3;->a()Le/a/l5/a/q3$b;

    move-result-object v4

    .line 61
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    invoke-virtual {v4, v5}, Le/a/l5/a/q3$b;->d(I)Le/a/l5/a/q3$b;

    .line 62
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v5

    invoke-virtual {v4, v5}, Le/a/l5/a/q3$b;->e(I)Le/a/l5/a/q3$b;

    .line 63
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    invoke-virtual {v4, v5}, Le/a/l5/a/q3$b;->c(I)Le/a/l5/a/q3$b;

    .line 64
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    invoke-virtual {v4, v1}, Le/a/l5/a/q3$b;->b(I)Le/a/l5/a/q3$b;

    .line 65
    invoke-virtual {v4}, Le/a/l5/a/q3$b;->a()Le/a/l5/a/q3;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/l5/a/q0$b;->c(Le/a/l5/a/q3;)Le/a/l5/a/q0$b;

    goto :goto_4

    :cond_9
    move v6, v3

    :goto_4
    if-nez v6, :cond_a

    goto/16 :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method public final e(Ljava/lang/String;)Le/a/l5/a/q0;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "heartBeat"

    const-string v3, ""

    .line 1
    iget-object v4, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2
    sget-object v7, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    new-instance v7, Le/a/l5/a/q0$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Le/a/l5/a/q0$b;-><init>(Le/a/l5/a/q0$a;)V

    .line 3
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v7, v9, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object v1, v7, Le/a/l5/a/q0$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v9, 0x1

    aput-boolean v9, v1, v10

    .line 6
    iget-object v1, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v11, "context.resources"

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 7
    sget-object v11, Le/a/l5/a/n3;->g:Lorg/apache/avro/Schema;

    new-instance v11, Le/a/l5/a/n3$b;

    invoke-direct {v11, v8}, Le/a/l5/a/n3$b;-><init>(Le/a/l5/a/n3$a;)V

    .line 8
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-virtual {v11, v13, v12}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object v12, v11, Le/a/l5/a/n3$b;->b:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v12

    aput-boolean v9, v12, v9

    .line 12
    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 13
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v11, v13, v12}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 14
    iput-object v12, v11, Le/a/l5/a/n3$b;->a:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v12

    aput-boolean v9, v12, v14

    .line 16
    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    const/4 v15, 0x4

    aget-object v13, v13, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput v12, v11, Le/a/l5/a/n3$b;->e:I

    .line 19
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v12

    aput-boolean v9, v12, v15

    .line 20
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 21
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput v12, v11, Le/a/l5/a/n3$b;->d:I

    .line 23
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v12

    aput-boolean v9, v12, v14

    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 25
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    const/4 v13, 0x5

    aget-object v12, v12, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 26
    iput v1, v11, Le/a/l5/a/n3$b;->f:I

    .line 27
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v13

    const-string v1, "deviceInfo"

    .line 28
    invoke-static {v11, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-object v1, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v1, v8

    .line 30
    :goto_0
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v11, v12, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 31
    iput-object v1, v11, Le/a/l5/a/n3$b;->c:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v10

    .line 33
    invoke-virtual {v11}, Le/a/l5/a/n3$b;->a()Le/a/l5/a/n3;

    move-result-object v1

    const-string v11, "deviceInfo.build()"

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v14

    invoke-virtual {v7, v11, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 35
    iput-object v1, v7, Le/a/l5/a/q0$b;->b:Le/a/l5/a/n3;

    .line 36
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v14

    .line 37
    sget-object v1, Le/a/l5/a/y3;->c:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/y3$b;

    invoke-direct {v1, v8}, Le/a/l5/a/y3$b;-><init>(Le/a/l5/a/y3$a;)V

    const-string v11, "Android"

    .line 38
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    const/4 v15, 0x0

    aget-object v12, v12, v15

    invoke-virtual {v1, v12, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 39
    iput-object v11, v1, Le/a/l5/a/y3$b;->a:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v11

    aput-boolean v9, v11, v15

    .line 41
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v1, v12, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 43
    iput-object v11, v1, Le/a/l5/a/y3$b;->b:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v11

    aput-boolean v9, v11, v9

    .line 45
    invoke-virtual {v1}, Le/a/l5/a/y3$b;->a()Le/a/l5/a/y3;

    move-result-object v1

    .line 46
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v7, v11, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 47
    iput-object v1, v7, Le/a/l5/a/q0$b;->c:Le/a/l5/a/y3;

    .line 48
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v12

    .line 49
    sget-object v1, Le/a/l5/a/u3;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/u3$b;

    invoke-direct {v1, v8}, Le/a/l5/a/u3$b;-><init>(Le/a/l5/a/u3$a;)V

    const-string v11, "builder"

    .line 50
    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Le/a/q2/z0/c;->f:Le/a/p5/u;

    invoke-interface {v11}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v11

    .line 51
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    const/4 v15, 0x0

    aget-object v12, v12, v15

    invoke-virtual {v1, v12, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 52
    iput-object v11, v1, Le/a/l5/a/u3$b;->a:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v11

    aput-boolean v9, v11, v15

    .line 54
    iget-object v11, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v1, v6, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 57
    iput-object v5, v1, Le/a/l5/a/u3$b;->b:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v9

    .line 59
    iget-object v5, v0, Le/a/q2/z0/c;->i:Le/a/b0/e/f;

    invoke-interface {v5}, Le/a/b0/e/f;->d()Z

    move-result v5

    const-string v6, "builder.build()"

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v1}, Le/a/l5/a/u3$b;->a()Le/a/l5/a/u3;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 61
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v11

    .line 63
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 64
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/NetworkInterface;

    const-string v15, "iface"

    .line 65
    invoke-static {v12, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v12}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v12}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v12

    .line 67
    :goto_2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 68
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    instance-of v14, v15, Ljava/net/Inet4Address;

    if-nez v14, :cond_4

    move-object v15, v8

    :cond_4
    check-cast v15, Ljava/net/Inet4Address;

    if-eqz v15, :cond_5

    .line 69
    invoke-virtual {v15}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    const/4 v14, 0x3

    goto :goto_2

    .line 70
    :catch_1
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 71
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v1, v11, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 72
    iput-object v5, v1, Le/a/l5/a/u3$b;->c:Ljava/util/List;

    .line 73
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v10

    .line 74
    :cond_7
    invoke-virtual {v1}, Le/a/l5/a/u3$b;->a()Le/a/l5/a/u3;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :goto_3
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v13

    invoke-virtual {v7, v5, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 76
    iput-object v1, v7, Le/a/l5/a/q0$b;->d:Le/a/l5/a/u3;

    .line 77
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v13

    const-string v1, "unknown"

    const-string v5, "language"

    .line 78
    sget-object v6, Le/a/l5/a/s3;->d:Lorg/apache/avro/Schema;

    new-instance v6, Le/a/l5/a/s3$b;

    invoke-direct {v6, v8}, Le/a/l5/a/s3$b;-><init>(Le/a/l5/a/s3$a;)V

    .line 79
    :try_start_2
    iget-object v11, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android"

    .line 80
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "context.packageManager\n \u2026ForApplication(\"android\")"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v11, :cond_8

    .line 81
    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Le/a/l5/a/s3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s3$b;

    goto :goto_4

    .line 82
    :cond_8
    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Le/a/l5/a/s3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s3$b;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 83
    :catch_2
    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Le/a/l5/a/s3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s3$b;

    :goto_4
    const-string v1, "t9_lang"

    .line 84
    invoke-static {v1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "auto"

    if-eqz v1, :cond_b

    const-string v12, "it"

    .line 85
    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    move v12, v9

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    if-nez v12, :cond_a

    goto :goto_6

    :cond_a
    move-object v1, v8

    :goto_6
    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move-object v1, v11

    .line 86
    :goto_7
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v6, v12, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 87
    iput-object v1, v6, Le/a/l5/a/s3$b;->b:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v9

    const-string v1, "languageAuto"

    .line 89
    invoke-static {v1}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v5}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    :goto_8
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v6, v1, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 91
    iput-object v11, v6, Le/a/l5/a/s3$b;->a:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v5

    .line 93
    invoke-virtual {v6}, Le/a/l5/a/s3$b;->a()Le/a/l5/a/s3;

    move-result-object v1

    const-string v5, "language.build()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v7, v5, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 95
    iput-object v1, v7, Le/a/l5/a/q0$b;->e:Le/a/l5/a/s3;

    .line 96
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v6

    .line 97
    :try_start_3
    iget-object v1, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 98
    invoke-static {v1, v5}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 99
    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v4}, Le/a/q2/z0/c;->d(Le/a/l5/a/q0$b;Landroid/telephony/TelephonyManager;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    :catch_3
    :cond_d
    :try_start_4
    iget-object v1, v0, Le/a/q2/z0/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    const-string v5, "AdvertisingIdClient.getAdvertisingIdInfo(context)"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v5

    if-nez v5, :cond_e

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v1, :cond_f

    move-object v1, v3

    goto :goto_9

    :catch_4
    :cond_e
    move-object v1, v8

    .line 103
    :cond_f
    :goto_9
    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v5, 0xc

    aget-object v2, v2, v5

    invoke-virtual {v7, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 105
    iput-object v1, v7, Le/a/l5/a/q0$b;->k:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v5

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v2, v0, Le/a/q2/z0/c;->g:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->h()Z

    move-result v2

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string v6, "simInfo"

    const-string v11, "(this as java.lang.String).substring(startIndex)"

    if-eqz v2, :cond_15

    .line 109
    invoke-virtual {v7, v10}, Le/a/l5/a/q0$b;->d(I)Le/a/l5/a/q0$b;

    .line 110
    iget-object v2, v0, Le/a/q2/z0/c;->g:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "multiSimManager.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v2

    const-string v4, "multiSimManager.get().allSimInfos"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v4, v0, Le/a/q2/z0/c;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/b0;

    invoke-interface {v4}, Le/a/h/b0;->a()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/multisim/SimInfo;

    .line 113
    sget-object v12, Le/a/l5/a/f4;->g:Lorg/apache/avro/Schema;

    new-instance v12, Le/a/l5/a/f4$b;

    invoke-direct {v12, v8}, Le/a/l5/a/f4$b;-><init>(Le/a/l5/a/f4$a;)V

    .line 114
    invoke-static {v12, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    if-nez v13, :cond_10

    move-object v13, v3

    :cond_10
    invoke-virtual {v12, v13}, Le/a/l5/a/f4$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 115
    iget-object v13, v10, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    if-nez v13, :cond_11

    const/4 v13, 0x0

    goto :goto_b

    .line 116
    :cond_11
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    :goto_b
    const/4 v14, 0x4

    if-lt v13, v14, :cond_12

    .line 117
    iget-object v13, v10, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    const-string v15, "info.mccMnc"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v14, 0x3

    invoke-virtual {v13, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Le/a/p5/g0;->K(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Le/a/l5/a/f4$b;->c(I)Le/a/l5/a/f4$b;

    .line 118
    iget-object v13, v10, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Le/a/p5/g0;->K(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Le/a/l5/a/f4$b;->d(I)Le/a/l5/a/f4$b;

    goto :goto_c

    :cond_12
    const/4 v9, 0x0

    .line 119
    invoke-virtual {v12, v9}, Le/a/l5/a/f4$b;->c(I)Le/a/l5/a/f4$b;

    .line 120
    invoke-virtual {v12, v9}, Le/a/l5/a/f4$b;->d(I)Le/a/l5/a/f4$b;

    .line 121
    :goto_c
    iget-object v9, v10, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    invoke-static {v9, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v12, v9}, Le/a/l5/a/f4$b;->b(Z)Le/a/l5/a/f4$b;

    .line 122
    invoke-virtual {v12, v8}, Le/a/l5/a/f4$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 123
    iget-object v9, v10, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 124
    iget-object v9, v0, Le/a/q2/z0/c;->h:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/b0/q/z;

    iget-object v13, v10, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    invoke-static {v13}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v14, "info.phoneNumber!!"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v10, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v14, "info.simToken"

    invoke-static {v10, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v13, v10}, Le/a/b0/q/z;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 125
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x1

    if-le v10, v13, :cond_13

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v10, 0x2b

    if-ne v14, v10, :cond_13

    .line 126
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    :cond_13
    invoke-virtual {v12, v9}, Le/a/l5/a/f4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    goto :goto_d

    .line 128
    :cond_14
    invoke-virtual {v12, v8}, Le/a/l5/a/f4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 129
    :goto_d
    invoke-virtual {v12}, Le/a/l5/a/f4$b;->a()Le/a/l5/a/f4;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_15
    move v2, v9

    .line 130
    invoke-virtual {v7, v2}, Le/a/l5/a/q0$b;->d(I)Le/a/l5/a/q0$b;

    .line 131
    sget-object v9, Le/a/l5/a/f4;->g:Lorg/apache/avro/Schema;

    new-instance v9, Le/a/l5/a/f4$b;

    invoke-direct {v9, v8}, Le/a/l5/a/f4$b;-><init>(Le/a/l5/a/f4$a;)V

    .line 132
    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Le/a/l5/a/f4$b;->b(Z)Le/a/l5/a/f4$b;

    .line 133
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object v3, v2

    :cond_16
    invoke-virtual {v9, v3}, Le/a/l5/a/f4$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 134
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v13, :cond_17

    :try_start_5
    const-string v3, "mccmnc"

    .line 136
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 137
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    :catch_5
    const/4 v15, 0x0

    :catch_6
    const/4 v2, 0x0

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 138
    :goto_e
    invoke-virtual {v9, v15}, Le/a/l5/a/f4$b;->c(I)Le/a/l5/a/f4$b;

    .line 139
    invoke-virtual {v9, v2}, Le/a/l5/a/f4$b;->d(I)Le/a/l5/a/f4$b;

    .line 140
    invoke-virtual {v9, v8}, Le/a/l5/a/f4$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 141
    :try_start_7
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 143
    invoke-static {v2, v8}, Le/a/b0/q/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Le/a/l5/a/f4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    goto :goto_f

    .line 144
    :cond_18
    invoke-virtual {v9, v8}, Le/a/l5/a/f4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    .line 145
    :catch_7
    invoke-virtual {v9, v8}, Le/a/l5/a/f4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f4$b;

    .line 146
    :goto_f
    invoke-virtual {v9}, Le/a/l5/a/f4$b;->a()Le/a/l5/a/f4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_19
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v7, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 148
    iput-object v1, v7, Le/a/l5/a/q0$b;->j:Ljava/util/List;

    .line 149
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 150
    sget-object v1, Le/a/l5/a/a4;->c:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/a4$b;

    invoke-direct {v1, v8}, Le/a/l5/a/a4$b;-><init>(Le/a/l5/a/a4$a;)V

    .line 151
    iget-object v2, v0, Le/a/q2/z0/c;->j:Le/a/c3/a;

    invoke-interface {v2}, Le/a/c3/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<null>"

    if-eqz v2, :cond_1a

    goto :goto_10

    :cond_1a
    move-object v2, v3

    .line 152
    :goto_10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 153
    iput-object v2, v1, Le/a/l5/a/a4$b;->a:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v4, 0x1

    aput-boolean v4, v2, v5

    .line 155
    iget-object v2, v0, Le/a/q2/z0/c;->j:Le/a/c3/a;

    invoke-interface {v2}, Le/a/c3/a;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object v3, v2

    .line 156
    :cond_1b
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 157
    iput-object v3, v1, Le/a/l5/a/a4$b;->b:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v4

    .line 159
    invoke-virtual {v1}, Le/a/l5/a/a4$b;->a()Le/a/l5/a/a4;

    move-result-object v1

    .line 160
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v7, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 161
    iput-object v1, v7, Le/a/l5/a/q0$b;->l:Le/a/l5/a/a4;

    .line 162
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 163
    invoke-virtual {v7}, Le/a/l5/a/q0$b;->a()Le/a/l5/a/q0;

    move-result-object v1

    const-string v2, "heartBeat.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
