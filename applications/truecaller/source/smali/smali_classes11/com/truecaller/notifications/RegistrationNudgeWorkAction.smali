.class public final Lcom/truecaller/notifications/RegistrationNudgeWorkAction;
.super Le/a/y2/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/i4/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/s4/a;Le/a/q2/a;Le/a/i4/s;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseRemoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registrationNudgeHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d:Le/a/q2/a;

    iput-object p4, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->e:Le/a/i4/s;

    const-string p1, "regNudgeLastShown"

    const-wide/16 p3, 0x0

    .line 2
    invoke-static {p1, p3, p4}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p3, v0, p3

    if-nez p3, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "regNudgeBadgeStartTime"

    invoke-static {p1, p3, p4}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-interface {p2}, Le/a/s4/a;->b()V

    const-string p1, "RegistrationNudgeWorkAction"

    .line 6
    iput-object p1, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 11

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0xea60

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-string v5, "regNudgeBadgeStartTime"

    .line 4
    invoke-static {v5, v3, v4}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 6
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Le/a/e/a2;->c0(Landroid/content/Context;I)V

    const-string v0, "regNudgeBadgeSet"

    .line 7
    invoke-static {v0, v1}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    sget-object v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->INIT:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "registrationNotificationState"

    invoke-static {v2, v0}, Le/a/n/g0;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CommonSettings.getString\u2026askState.INIT.toString())"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->valueOf(Ljava/lang/String;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v0

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegistrationNudgeWorkAction: Current State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d(Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v3

    sget-object v4, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    const-string v4, "Result.success()"

    if-eqz v3, :cond_3

    .line 11
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 12
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-wide/16 v6, 0x0

    const-string v3, "regNudgeLastShown"

    .line 13
    invoke-static {v3, v6, v7}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v6

    .line 14
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d(Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->getInterval()J

    move-result-wide v8

    .line 15
    new-instance v10, Lw3/b/a/b;

    invoke-direct {v10, v6, v7}, Lw3/b/a/b;-><init>(J)V

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v8, v6

    invoke-virtual {v10, v8, v9}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lw3/b/a/e0/c;->h(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d(Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->e:Le/a/i4/s;

    .line 19
    iget-object v5, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->c:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->getTitle()I

    move-result v6

    .line 21
    invoke-virtual {v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->getText()I

    move-result v7

    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-interface {v1, v5, v6, v7, v8}, Le/a/i4/s;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v3, v1, v2}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    .line 26
    iget-object v1, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d:Le/a/q2/a;

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Type"

    const-string v5, "regNudge"

    .line 28
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/g0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Status"

    .line 30
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v3, Le/a/q2/g$b$a;

    const/4 v5, 0x0

    const-string v6, "Notification"

    invoke-direct {v3, v6, v5, v2, v5}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v2, "AnalyticsEvent.Builder(A\u2026tate.toString())).build()"

    .line 32
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v1, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationNudgeWorkAction: Moved to State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    :cond_5
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 36
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->INIT:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registrationNotificationState"

    invoke-static {v1, v0}, Le/a/n/g0;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonSettings.getString\u2026askState.INIT.toString())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->valueOf(Ljava/lang/String;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->c:Landroid/content/Context;

    const-string v2, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/b0/g/a;

    invoke-virtual {v1}, Le/a/b0/g/a;->W()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->d(Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    move-result-object v1

    sget-object v4, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    if-eq v1, v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;->c:Landroid/content/Context;

    invoke-static {v0}, Le/a/o5/c2/r0;->a(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object v0

    instance-of v0, v0, Le/a/o5/c2/e0;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public final d(Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->THIRD:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->SECOND:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    goto :goto_0

    .line 6
    :cond_3
    sget-object p1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->FIRST:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    :goto_0
    return-object p1
.end method
