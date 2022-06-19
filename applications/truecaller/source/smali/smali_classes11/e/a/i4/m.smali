.class public final Le/a/i4/m;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/j4/b/a/f;

.field public final h:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/i0;Le/a/u3/g;Le/a/p5/g;Le/a/j4/b/a/f;Le/a/q2/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseRemoteConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/i4/m;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/i4/m;->d:Le/a/a/i0;

    iput-object p3, p0, Le/a/i4/m;->e:Le/a/u3/g;

    iput-object p4, p0, Le/a/i4/m;->f:Le/a/p5/g;

    iput-object p5, p0, Le/a/i4/m;->g:Le/a/j4/b/a/f;

    iput-object p6, p0, Le/a/i4/m;->h:Le/a/q2/i0;

    const-string p1, "NotificationDefaultSmsPromoWorkAction"

    .line 2
    iput-object p1, p0, Le/a/i4/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->U1()Lw3/b/a/b;

    move-result-object v0

    const-string v1, "settings.featureDefaultSmsAppPromoDate"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->N()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    iget-object v3, p0, Le/a/i4/m;->e:Le/a/u3/g;

    .line 3
    iget-object v4, v3, Le/a/u3/g;->q4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x118

    aget-object v6, v5, v6

    invoke-virtual {v4, v3, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    check-cast v3, Le/a/u3/i;

    .line 4
    invoke-interface {v3}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 5
    iget-object v3, p0, Le/a/i4/m;->e:Le/a/u3/g;

    .line 6
    iget-object v4, v3, Le/a/u3/g;->r4:Le/a/u3/g$a;

    const/16 v6, 0x119

    aget-object v6, v5, v6

    invoke-virtual {v4, v3, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    check-cast v3, Le/a/u3/i;

    .line 7
    invoke-interface {v3}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 8
    iget-object v3, p0, Le/a/i4/m;->e:Le/a/u3/g;

    .line 9
    iget-object v4, v3, Le/a/u3/g;->s4:Le/a/u3/g$a;

    const/16 v6, 0x11a

    aget-object v5, v5, v6

    invoke-virtual {v4, v3, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    check-cast v3, Le/a/u3/i;

    .line 10
    invoke-interface {v3}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 11
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    if-eqz v5, :cond_1

    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    goto/16 :goto_4

    .line 15
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    new-instance v4, Le/m/e/t;

    invoke-direct {v4}, Le/m/e/t;-><init>()V

    .line 19
    new-instance v5, Le/m/e/t;

    invoke-direct {v5}, Le/m/e/t;-><init>()V

    .line 20
    new-instance v6, Le/m/e/t;

    invoke-direct {v6}, Le/m/e/t;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "i"

    invoke-virtual {v6, v8, v7}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 22
    sget-object v7, Lcom/truecaller/network/notification/NotificationScope;->LOCAL:Lcom/truecaller/network/notification/NotificationScope;

    iget v7, v7, Lcom/truecaller/network/notification/NotificationScope;->value:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v6, v8, v7}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    sget-object v7, Lcom/truecaller/network/notification/NotificationType;->DEFAULT_SMS_PROMO:Lcom/truecaller/network/notification/NotificationType;

    iget v7, v7, Lcom/truecaller/network/notification/NotificationType;->value:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "t"

    invoke-virtual {v6, v9, v7}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v10, "c"

    invoke-virtual {v6, v10, v7}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    new-instance v7, Le/m/e/t;

    invoke-direct {v7}, Le/m/e/t;-><init>()V

    .line 26
    invoke-virtual {v7, v8, v3}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7, v9, v1}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u"

    const-string v3, "truecaller://home/smsapp?context=default_sms_promo"

    .line 28
    invoke-virtual {v7, v1, v3}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bbt"

    .line 29
    invoke-virtual {v7, v1, v0}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, v5, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v1, "a"

    invoke-virtual {v0, v1, v7}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, v5, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v1, "e"

    invoke-virtual {v0, v1, v6}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, v4, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v1, "d"

    invoke-virtual {v0, v1, v5}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-static {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->access$000(Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v4, v1, v0}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 v0, 0x0

    .line 35
    :try_start_0
    new-instance v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_7

    .line 36
    iget-object v1, p0, Le/a/i4/m;->g:Le/a/j4/b/a/f;

    .line 37
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v3, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 39
    :try_start_1
    invoke-virtual {v1}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v1}, Le/a/j4/b/a/i;->h()V

    .line 41
    monitor-exit v3

    goto :goto_3

    .line 42
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_3
    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0, v2}, Le/a/a/i0;->v1(I)V

    .line 44
    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/i0;->R2(J)V

    .line 45
    iget-object v0, p0, Le/a/i4/m;->h:Le/a/q2/i0;

    const-string v1, "Dsan1-GenerateNotification"

    invoke-interface {v0, v1}, Le/a/q2/i0;->l(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 46
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 47
    :cond_6
    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->y2()Lw3/b/a/b;

    move-result-object v0

    iget-object v2, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->s3()I

    move-result v2

    invoke-virtual {v0, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v2, "(settings.defaultSmsNoti\u2026aultSmsAppPromoDuration))"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->U1()Lw3/b/a/b;

    move-result-object v0

    const-string v2, "settings.featureDefaultSmsAppPromoDate"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    iget-object v0, p0, Le/a/i4/m;->d:Le/a/a/i0;

    invoke-interface {v0, v1}, Le/a/a/i0;->v1(I)V

    .line 49
    :cond_7
    :goto_4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 50
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i4/m;->f:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/i4/m;->c:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/b0/g/a;

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
