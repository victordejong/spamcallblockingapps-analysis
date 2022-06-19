.class public final Le/a/r5/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r5/i0;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/z4/d;

.field public final d:Le/a/b0/o/a;

.field public final e:Le/a/r5/j;

.field public final f:Le/a/l/p2/v0;

.field public final g:Le/a/q2/a;

.field public final h:Lcom/truecaller/clevertap/CleverTapManager;

.field public final i:Le/a/b0/q/l0;

.field public final j:Le/a/r5/p0;

.field public final k:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/o5/f0;Le/a/z4/d;Le/a/b0/o/a;Le/a/r5/j;Le/a/l/p2/v0;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;Le/a/b0/q/l0;Le/a/r5/p0;Ls1/w/f;)V
    .locals 1
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileViewDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/j0;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/r5/j0;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    iput-object p4, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    iput-object p6, p0, Le/a/r5/j0;->f:Le/a/l/p2/v0;

    iput-object p7, p0, Le/a/r5/j0;->g:Le/a/q2/a;

    iput-object p8, p0, Le/a/r5/j0;->h:Lcom/truecaller/clevertap/CleverTapManager;

    iput-object p9, p0, Le/a/r5/j0;->i:Le/a/b0/q/l0;

    iput-object p10, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    iput-object p11, p0, Le/a/r5/j0;->k:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Le/a/r5/o;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/r5/o;",
            ">;)",
            "Le/a/r5/o;"
        }
    .end annotation

    const-string v0, "profileViewEvents"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/r5/j0;->s()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 3
    iget-object v5, v0, Le/a/u3/g;->q:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-virtual {v5, v0, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/4 v5, 0x4

    .line 4
    invoke-interface {v0, v5}, Le/a/u3/i;->getInt(I)I

    move-result v0

    .line 5
    iget-object v5, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    invoke-interface {v5}, Le/a/r5/p0;->F0()J

    move-result-wide v5

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Le/a/r5/o;

    .line 8
    iget-wide v11, v9, Le/a/r5/o;->a:J

    cmp-long v9, v11, v5

    if-nez v9, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v10

    :goto_2
    if-eq v8, v10, :cond_4

    if-ge v8, v0, :cond_4

    cmp-long v0, v5, v2

    if-nez v0, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    goto :goto_5

    .line 10
    :cond_4
    :goto_3
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    goto :goto_5

    .line 11
    :cond_5
    iget-object v0, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    invoke-interface {v0}, Le/a/r5/p0;->F0()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_9

    .line 12
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/r5/o;

    .line 13
    iget-wide v7, v3, Le/a/r5/o;->a:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    if-eqz v3, :cond_6

    .line 14
    check-cast v2, Le/a/r5/o;

    move-object p1, v2

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    goto :goto_5

    .line 17
    :cond_9
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    :goto_5
    return-object p1
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->b:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->J:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    check-cast v0, Le/a/r5/n;

    .line 2
    iget-object v1, v0, Le/a/r5/n;->e:Ls1/w/f;

    new-instance v2, Le/a/r5/l;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Le/a/r5/l;-><init>(Le/a/r5/n;Ljava/util/Set;Ls1/w/d;)V

    invoke-static {v1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/whoviewedme/ProfileViewSource;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/r5/o;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    move-object v2, v0

    check-cast v2, Le/a/r5/n;

    .line 2
    iget-object v0, v2, Le/a/r5/n;->e:Ls1/w/f;

    new-instance v7, Le/a/r5/m;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/r5/m;-><init>(Le/a/r5/n;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "whoViewedMeLastVisitTimestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v1, "whoViewedMeIncognitoEnabled"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->k:Ls1/w/f;

    new-instance v1, Le/a/r5/j0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/r5/j0$a;-><init>(Le/a/r5/j0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->f:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v2, "whoViewedMeIncognitoEnabled"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()I
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    invoke-virtual {p0}, Le/a/r5/j0;->r()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->U(Le/a/r5/j;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    const-string v1, "whoViewedMePromoTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/r5/j0;->f:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->H()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/r5/j0;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Le/a/r5/j0;->i()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    iget-object v4, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-wide v5, v0

    invoke-static/range {v4 .. v9}, Le/a/p5/s0/g;->U(Le/a/r5/j;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    .line 6
    iget-object v4, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-wide/16 v5, 0x5

    const-string v7, "featureWhoViewedMeShowNotificationAfterXLookups"

    invoke-interface {v4, v7, v5, v6}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 7
    iget-object v4, p0, Le/a/r5/j0;->i:Le/a/b0/q/l0;

    .line 8
    iget-object v2, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v3, "featureWhoViewedMeShowNotificationAfterXDays"

    invoke-interface {v2, v3, v5, v6}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 9
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v0

    invoke-virtual/range {v4 .. v9}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Le/a/r5/o;)V
    .locals 3

    const-string v0, "profileViewEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/r5/j0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    .line 3
    iget-wide v1, p1, Le/a/r5/o;->a:J

    .line 4
    invoke-interface {v0, v1, v2}, Le/a/r5/p0;->z2(J)V

    .line 5
    iget-object p1, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    .line 6
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-interface {p1, v0, v1}, Le/a/r5/p0;->d2(J)V

    :cond_0
    return-void
.end method

.method public l(JLcom/truecaller/whoviewedme/ProfileViewSource;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    check-cast v0, Le/a/r5/n;

    invoke-virtual {v0, p1, p2, p3}, Le/a/r5/n;->a(JLcom/truecaller/whoviewedme/ProfileViewSource;)I

    move-result p1

    return p1
.end method

.method public m()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    const-string v1, "whoViewedMeNotificationTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v4, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-wide v5, v0

    invoke-static/range {v4 .. v9}, Le/a/p5/s0/g;->U(Le/a/r5/j;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    .line 3
    iget-object v4, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v5, "featureWhoViewedMeShowNotificationAfterXLookups"

    const-wide/16 v6, 0x5

    invoke-interface {v4, v5, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 4
    iget-object v4, p0, Le/a/r5/j0;->i:Le/a/b0/q/l0;

    .line 5
    iget-object v2, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v3, "featureWhoViewedMeShowNotificationAfterXDays"

    invoke-interface {v2, v3, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 6
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v0

    invoke-virtual/range {v4 .. v9}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n(Ljava/lang/String;IZZ)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "tcId"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/r5/j0;->b()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move/from16 v7, p2

    if-eq v7, v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    .line 3
    :goto_1
    iget-object v8, v1, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v9, "whoViewedMePBContactEnabled"

    invoke-interface {v8, v9, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    move v8, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v4

    .line 4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Le/a/r5/j0;->h()Z

    move-result v9

    xor-int/2addr v9, v4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v1, Le/a/r5/j0;->e:Le/a/r5/j;

    check-cast v12, Le/a/r5/n;

    .line 6
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v13, v12, Le/a/r5/n;->c:Landroid/content/ContentResolver;

    .line 8
    iget-object v14, v12, Le/a/r5/n;->a:Landroid/net/Uri;

    const-string v2, "max(timestamp) as timestamp"

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    .line 10
    sget-object v0, Lcom/truecaller/whoviewedme/ProfileViewType;->OUTGOING:Lcom/truecaller/whoviewedme/ProfileViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/16 v18, 0x0

    const-string v16, "tc_id = ? AND type = ?"

    move-object/from16 v17, v2

    .line 11
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_4

    goto :goto_5

    .line 13
    :cond_4
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "timestamp"

    .line 14
    invoke-static {v2, v12}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    :goto_5
    const/4 v12, 0x0

    .line 15
    invoke-static {v2, v12}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_6

    :cond_6
    const-wide/16 v12, 0x0

    :goto_6
    sub-long/2addr v10, v12

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 18
    iget-object v2, v1, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-wide/16 v12, 0x5

    const-string v14, "featureWhoViewedMeNewViewIntervalInDays"

    invoke-interface {v2, v14, v12, v13}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 19
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    move v0, v5

    :goto_7
    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-eqz p3, :cond_8

    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v4, v5

    :goto_8
    return v4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 20
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v1, "whoViewedMeACSEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p(Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V
    .locals 5

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "unknown"

    goto :goto_0

    :pswitch_1
    const-string p1, "weeklySummaryNotification"

    goto :goto_0

    :pswitch_2
    const-string p1, "premiumUserTab"

    goto :goto_0

    :pswitch_3
    const-string p1, "homeTabPromo"

    goto :goto_0

    :pswitch_4
    const-string p1, "notification"

    goto :goto_0

    :pswitch_5
    const-string p1, "deepLink"

    goto :goto_0

    :pswitch_6
    const-string p1, "navigationDrawer"

    :goto_0
    const-string v0, "whoViewedMe"

    .line 3
    iget-object v1, p0, Le/a/r5/j0;->f:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    const-string v2, "viewId"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v1, "Premium"

    goto :goto_1

    :cond_0
    const-string v1, "Free"

    .line 5
    :goto_1
    new-instance v2, Le/a/q2/y0/a/a;

    .line 6
    new-instance v3, Ls1/k;

    const-string v4, "PremiumStatus"

    invoke-direct {v3, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v0, p1, v1}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Le/a/r5/j0;->g:Le/a/q2/a;

    invoke-static {v2, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    iget-object p1, v2, Le/a/q2/y0/a/a;->c:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_1
    invoke-static {v0}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 17
    iget-object v0, v2, Le/a/q2/y0/a/a;->a:Ljava/lang/String;

    const-string v1, "ViewId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, v2, Le/a/q2/y0/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "Context"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    .line 19
    :cond_4
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    .line 20
    :goto_4
    iget-object v0, p0, Le/a/r5/j0;->h:Lcom/truecaller/clevertap/CleverTapManager;

    const-string v1, "ViewVisited"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->e:Le/a/r5/j;

    check-cast v0, Le/a/r5/n;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v4, Le/a/r5/k;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Le/a/r5/k;-><init>(Le/a/r5/n;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    iget-object v0, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    const-string v1, "whoViewedMeNotificationTimestamp"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v1, "featureWhoViewedMeShowNotificationAfterXLookups"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/r5/j0;->d:Le/a/b0/o/a;

    const-string v1, "featureWhoViewedMeShowNotificationAfterXDays"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public r()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->c:Le/a/z4/d;

    .line 2
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v2, "DateTime.now().minusDays(1)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    const-string v3, "whoViewedMeLastVisitTimestamp"

    .line 5
    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r5/j0;->j:Le/a/r5/p0;

    invoke-interface {v0}, Le/a/r5/p0;->m2()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 3
    iget-object v3, v2, Le/a/u3/g;->r:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    const/4 v3, 0x3

    .line 4
    invoke-interface {v2, v3}, Le/a/u3/i;->getInt(I)I

    move-result v2

    .line 5
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3, v0, v1}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v3, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(lastRevealTime)\u2026sDays(cacheAllowedInDays)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
