.class public final Le/a/k/c/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/y0;


# instance fields
.field public a:Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/k/c/r0;

.field public final d:Le/a/k/c/i1;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/p5/l;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/k/c/r0;Le/a/k/c/i1;Le/a/p5/c;Le/a/p5/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdAvailability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsonUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/z0;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/k/c/z0;->c:Le/a/k/c/r0;

    iput-object p3, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    iput-object p4, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    iput-object p5, p0, Le/a/k/c/z0;->f:Le/a/p5/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/videocallerid/utils/OnboardingType;)V
    .locals 3

    const-string v0, "onboardingType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    .line 3
    iget-object v0, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "onboardingInPacsExpansionShownAt"

    .line 4
    invoke-interface {p1, v2, v0, v1}, Le/a/k/c/i1;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    .line 6
    iget-object v0, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "onboardingInPacsCallWithVcidShownAt"

    .line 7
    invoke-interface {p1, v2, v0, v1}, Le/a/k/c/i1;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    .line 9
    iget-object v0, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    .line 10
    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "onboardingInPacsCallWithoutVcidShownAt"

    .line 11
    invoke-interface {p1, v2, v0, v1}, Le/a/k/c/i1;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    .line 13
    iget-object v0, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "onboardingInFacsWithVcidShownAt"

    .line 14
    invoke-interface {p1, v2, v0, v1}, Le/a/k/c/i1;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    .line 16
    iget-object v0, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "onboardingInFacsWithoutVcidShownAt"

    .line 17
    invoke-interface {p1, v2, v0, v1}, Le/a/k/c/i1;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public e(Lcom/truecaller/videocallerid/utils/OnboardingType;)Z
    .locals 12

    const-string v0, "onboardingType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/z0;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Le/a/k/c/z0;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k/c/z0;->a:Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/a/k/c/z0;->b:Le/a/u3/g;

    .line 3
    iget-object v3, v0, Le/a/u3/g;->Y5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x170

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    iget-object v3, p0, Le/a/k/c/z0;->f:Le/a/p5/l;

    const-class v4, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;

    invoke-interface {v3, v0, v4}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;

    if-eqz v0, :cond_3

    .line 7
    iput-object v0, p0, Le/a/k/c/z0;->a:Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Le/a/k/c/z0;->a:Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_5

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;->getPacsExpandInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;->getPacsCallWithVcidInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;->getPacsCallWithoutVcidInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;->getFacsWithVcidInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;->getFacsWithoutVcidInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_a

    move v3, v7

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    if-eqz v3, :cond_b

    move-object v2, v0

    :cond_b
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v6, :cond_e

    if-eq p1, v5, :cond_d

    if-ne p1, v4, :cond_c

    .line 18
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    const-string v0, "onboardingInPacsExpansionShownAt"

    invoke-interface {p1, v0, v10, v11}, Le/a/k/c/i1;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_4

    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_d
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    const-string v0, "onboardingInPacsCallWithVcidShownAt"

    invoke-interface {p1, v0, v10, v11}, Le/a/k/c/i1;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_4

    .line 20
    :cond_e
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    const-string v0, "onboardingInPacsCallWithoutVcidShownAt"

    invoke-interface {p1, v0, v10, v11}, Le/a/k/c/i1;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_4

    .line 21
    :cond_f
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    const-string v0, "onboardingInFacsWithVcidShownAt"

    invoke-interface {p1, v0, v10, v11}, Le/a/k/c/i1;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_4

    .line 22
    :cond_10
    iget-object p1, p0, Le/a/k/c/z0;->d:Le/a/k/c/i1;

    const-string v0, "onboardingInFacsWithoutVcidShownAt"

    invoke-interface {p1, v0, v10, v11}, Le/a/k/c/i1;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_4
    cmp-long p1, v4, v10

    if-nez p1, :cond_11

    return v7

    .line 23
    :cond_11
    iget-object p1, p0, Le/a/k/c/z0;->e:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v8

    sub-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-ltz p1, :cond_12

    return v7

    :cond_12
    :goto_5
    return v1
.end method
