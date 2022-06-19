.class public final Le/a/g0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/h;


# instance fields
.field public final a:Le/a/g0/d;

.field public final b:Le/a/g0/n/a;

.field public final c:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/g0/d;Le/a/g0/n/a;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "suspensionManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/i;->a:Le/a/g0/d;

    iput-object p2, p0, Le/a/g0/i;->b:Le/a/g0/n/a;

    iput-object p3, p0, Le/a/g0/i;->c:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g0/i;->b:Le/a/g0/n/a;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->getId()I

    move-result p1

    const-string v1, "asnc-13"

    invoke-interface {v0, v1, p1}, Le/a/g0/n/a;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Le/a/g0/i;->c:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string p1, "asnt-12"

    invoke-interface {v0, p1, v1, v2}, Le/a/g0/n/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public b()Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g0/i;->b:Le/a/g0/n/a;

    const-string v1, "asnc-13"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Le/a/g0/n/a;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "suspensionSettings.getIn\u2026TIFICATION_CONFIG_ID, -1)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Le/a/g0/i;->d(I)Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/g0/i;->a:Le/a/g0/d;

    invoke-interface {v0}, Le/a/g0/d;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Le/a/g0/i;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Le/a/g0/i;->b:Le/a/g0/n/a;

    const-wide/16 v6, -0x1

    const-string v8, "asnt-12"

    invoke-interface {v5, v8, v6, v7}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "suspensionSettings.getLo\u2026ED_NOTIFICATION_TIME, -1)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 4
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Le/a/g0/i;->b:Le/a/g0/n/a;

    const/4 v5, -0x1

    const-string v6, "asnc-13"

    invoke-interface {v0, v6, v5}, Le/a/g0/n/a;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "suspensionSettings.getIn\u2026TIFICATION_CONFIG_ID, -1)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Le/a/g0/i;->d(I)Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->getDaysInterval()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final d(I)Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;
    .locals 6

    .line 1
    invoke-static {}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->values()[Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 2
    sget-object p1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->IMMEDIATE:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    goto :goto_4

    .line 3
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    :goto_3
    sget-object p1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->WEEKLY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    goto :goto_4

    .line 5
    :cond_6
    sget-object p1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->ONE_WEEK:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    goto :goto_4

    .line 6
    :cond_7
    sget-object p1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->ONE_DAY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    :goto_4
    return-object p1
.end method
