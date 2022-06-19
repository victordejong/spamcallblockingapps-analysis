.class public final Le/a/g0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/d;


# instance fields
.field public final a:Ls1/g;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/g0/k/b;

.field public final e:Le/a/g0/n/a;

.field public final f:Le/a/g0/l/a;

.field public final g:Le/a/p5/c;

.field public final h:Le/a/p5/q0/e;

.field public final i:Le/a/n2/a/a;

.field public final j:Le/a/g0/b;

.field public final k:Le/a/g0/j/j;

.field public final l:Ls1/w/f;

.field public final m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/g0/k/b;Le/a/g0/n/a;Le/a/g0/l/a;Le/a/p5/c;Le/a/p5/q0/e;Le/a/n2/a/a;Le/a/g0/b;Le/a/g0/j/j;Ls1/w/f;J)V
    .locals 1
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p11    # J
        .annotation runtime Ljavax/inject/Named;
            value = "pu+rd"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captchaHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionRequestHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRequestHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSuspensionListener"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/e;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/g0/e;->d:Le/a/g0/k/b;

    iput-object p3, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    iput-object p4, p0, Le/a/g0/e;->f:Le/a/g0/l/a;

    iput-object p5, p0, Le/a/g0/e;->g:Le/a/p5/c;

    iput-object p6, p0, Le/a/g0/e;->h:Le/a/p5/q0/e;

    iput-object p7, p0, Le/a/g0/e;->i:Le/a/n2/a/a;

    iput-object p8, p0, Le/a/g0/e;->j:Le/a/g0/b;

    iput-object p9, p0, Le/a/g0/e;->k:Le/a/g0/j/j;

    iput-object p10, p0, Le/a/g0/e;->l:Ls1/w/f;

    iput-wide p11, p0, Le/a/g0/e;->m:J

    .line 2
    new-instance p1, Le/a/g0/e$d;

    invoke-direct {p1, p0}, Le/a/g0/e$d;-><init>(Le/a/g0/e;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g0/e;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/e;->d:Le/a/g0/k/b;

    check-cast v0, Le/a/g0/k/c;

    .line 2
    invoke-virtual {v0}, Le/a/g0/k/c;->b()Le/a/g0/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g0/k/d;->a()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "as-11"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/g0/n/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v3, "stet-12"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "suspensionSettings.getLo\u2026NSION_TTL_EXPIRE_TIME, 0)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    iget-object v4, p0, Le/a/g0/e;->g:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 5
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/g0/e;->l:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/g0/f;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Le/a/g0/f;-><init>(Le/a/g0/e;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_1
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/e;->d:Le/a/g0/k/b;

    check-cast v0, Le/a/g0/k/c;

    .line 2
    invoke-virtual {v0}, Le/a/g0/k/c;->b()Le/a/g0/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g0/k/d;->c()V

    :cond_0
    return-void
.end method

.method public d()Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/g0/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/g0/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/g0/e$e;-><init>(Le/a/g0/e;Ls1/w/d;)V

    .line 2
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object v1
.end method

.method public e()Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/g0/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/g0/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/g0/e$f;-><init>(Le/a/g0/e;Ls1/w/d;)V

    .line 2
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object v1
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "iid-02"

    invoke-interface {v0, v1, p1}, Le/a/g0/n/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g0/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v0, "ufe-07"

    invoke-interface {p2, v0, p1}, Le/a/g0/n/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public h(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "as-11"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/g0/n/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/g0/e;->r(J)V

    .line 3
    iget-object p1, p0, Le/a/g0/e;->k:Le/a/g0/j/j;

    invoke-interface {p1}, Le/a/g0/j/j;->a()V

    .line 4
    iget-object p1, p0, Le/a/g0/e;->j:Le/a/g0/b;

    invoke-interface {p1}, Le/a/g0/b;->a()V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/g0/e;->s(Z)V

    return-void
.end method

.method public j()Z
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/g0/e;->i:Le/a/n2/a/a;

    new-instance v7, Lcom/truecaller/account/network/CheckCredentialsRequestDto;

    const-string v2, "received_unauthorized"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/account/network/CheckCredentialsRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;ILs1/z/c/f;)V

    .line 2
    iget-object v1, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v2, "iid-02"

    invoke-interface {v1, v2}, Le/a/g0/n/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    check-cast v0, Le/a/n2/a/b;

    :try_start_1
    invoke-virtual {v0, v7, v1}, Le/a/n2/a/b;->a(Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;)Le/a/n2/a/e;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    :goto_0
    instance-of v1, v0, Le/a/n2/a/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le/a/n2/a/f;

    invoke-virtual {v1}, Le/a/n2/a/f;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v0, v1, Le/a/n2/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Le/a/g0/e;->r(J)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v3}, Le/a/g0/e;->s(Z)V

    move v2, v3

    :goto_2
    return v2
.end method

.method public k()Lcom/truecaller/suspension/UnsuspensionMethod;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "usfs-03"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/g0/n/a;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/truecaller/suspension/FeedbackState;->RESULT_SUCCESS:Lcom/truecaller/suspension/FeedbackState;

    invoke-virtual {v3}, Lcom/truecaller/suspension/FeedbackState;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/truecaller/suspension/UnsuspensionMethod$a;->a:Lcom/truecaller/suspension/UnsuspensionMethod$a;

    goto/16 :goto_6

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/g0/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 4
    invoke-virtual {p0}, Le/a/g0/e;->o()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    or-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 5
    new-instance v0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;

    invoke-virtual {p0}, Le/a/g0/e;->n()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v5, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    invoke-interface {v5, v1, v2}, Le/a/g0/n/a;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v5, Lcom/truecaller/suspension/FeedbackState;->RESULT_ERROR:Lcom/truecaller/suspension/FeedbackState;

    invoke-virtual {v5}, Lcom/truecaller/suspension/FeedbackState;->getValue()I

    move-result v5

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_5

    move v2, v4

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 7
    sget-object v1, Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;->Feedback:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {p0}, Le/a/g0/e;->p()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;->Recaptcha:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_4
    invoke-direct {v0, v3, v1}, Lcom/truecaller/suspension/UnsuspensionMethod$Support;-><init>(Ljava/lang/String;Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;)V

    goto :goto_6

    .line 10
    :cond_8
    new-instance v0, Lcom/truecaller/suspension/UnsuspensionMethod$b;

    .line 11
    iget-object v1, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-wide/16 v2, 0x0

    const-string v4, "uitv-06"

    invoke-interface {v1, v4, v2, v3}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "suspensionSettings.getLo\u2026Settings.THROTTLE_TTL, 0)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 12
    iget-object v1, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v6, "utvt-04"

    invoke-interface {v1, v6, v2, v3}, Le/a/g0/n/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "suspensionSettings.getLo\u2026THROTTLE_TTL_SET_TIME, 0)"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 13
    iget-object v1, p0, Le/a/g0/e;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-gez v1, :cond_9

    goto :goto_5

    .line 14
    :cond_9
    iget-object v1, p0, Le/a/g0/e;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v4, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 15
    :goto_5
    invoke-virtual {p0}, Le/a/g0/e;->p()Z

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/truecaller/suspension/UnsuspensionMethod$b;-><init>(JZ)V

    :goto_6
    return-object v0
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    iget-object v1, p0, Le/a/g0/e;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Le/a/g0/n/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Le/a/d4/e;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/d4/e;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/g0/e$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/g0/e$a;

    iget v1, v0, Le/a/g0/e$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/g0/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/g0/e$a;

    invoke-direct {v0, p0, p3}, Le/a/g0/e$a;-><init>(Le/a/g0/e;Ls1/w/d;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Le/a/g0/e$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/g0/e$a;->e:I

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v7, Le/a/g0/e$a;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/d4/e;

    iget-object p1, v7, Le/a/g0/e$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/g0/e;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/g0/e;->h:Le/a/p5/q0/e;

    const/4 v2, 0x2

    .line 5
    iget-wide v3, p0, Le/a/g0/e;->m:J

    .line 6
    new-instance v5, Le/a/g0/e$b;

    invoke-direct {v5, p0}, Le/a/g0/e$b;-><init>(Le/a/g0/e;)V

    .line 7
    new-instance v6, Le/a/g0/e$c;

    invoke-direct {v6, p0, p1, p2}, Le/a/g0/e$c;-><init>(Le/a/g0/e;Ljava/lang/String;Le/a/d4/e;)V

    iput-object p0, v7, Le/a/g0/e$a;->g:Ljava/lang/Object;

    iput-object p2, v7, Le/a/g0/e$a;->h:Ljava/lang/Object;

    iput v8, v7, Le/a/g0/e$a;->e:I

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v1 .. v7}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    .line 9
    :goto_1
    check-cast p3, Le/a/g0/l/d;

    .line 10
    instance-of v0, p3, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 11
    check-cast p3, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;

    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object p1, p1, Le/a/g0/e;->k:Le/a/g0/j/j;

    invoke-interface {p1, p2}, Le/a/g0/j/j;->e(Le/a/d4/e;)V

    goto/16 :goto_4

    .line 13
    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Le/a/g0/k/f$b;

    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    invoke-static {v0}, Le/a/l4/k;->G(Le/a/g0/k/f;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urle-01"

    invoke-interface {v1, v2, v0}, Le/a/g0/n/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4afa2586

    if-eq v1, v2, :cond_7

    const v2, 0x74cff1f7

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "invalid"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_7
    const-string v1, "throttled"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getTtl()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 20
    iget-object v2, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v3, "uitv-06"

    invoke-interface {v2, v3, v0, v1}, Le/a/g0/n/a;->putLong(Ljava/lang/String;J)V

    .line 21
    iget-object v0, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    iget-object v1, p1, Le/a/g0/e;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "utvt-04"

    invoke-interface {v0, v3, v1, v2}, Le/a/g0/n/a;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "throttled without a ttl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    :goto_2
    invoke-virtual {p1}, Le/a/g0/e;->o()I

    move-result v0

    add-int/2addr v0, v8

    .line 24
    iget-object v1, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v2, "urft-09"

    invoke-interface {v1, v2, v0}, Le/a/g0/n/a;->putInt(Ljava/lang/String;I)V

    .line 25
    :goto_3
    iget-object p1, p1, Le/a/g0/e;->k:Le/a/g0/j/j;

    new-instance v0, Le/a/g0/j/j$a$c;

    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/g0/j/j$a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Le/a/g0/j/j;->g(Le/a/d4/e;Le/a/g0/j/j$a;)V

    .line 26
    :goto_4
    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getSuccess()Z

    move-result v1

    goto :goto_5

    .line 27
    :cond_a
    instance-of v0, p3, Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 28
    iget-object v0, p1, Le/a/g0/e;->k:Le/a/g0/j/j;

    new-instance v3, Le/a/g0/j/j$a$c;

    check-cast p3, Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;

    invoke-virtual {p3}, Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;->getStatus()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3}, Le/a/g0/j/j$a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2, v3}, Le/a/g0/j/j;->g(Le/a/d4/e;Le/a/g0/j/j$a;)V

    .line 29
    new-instance p2, Le/a/g0/k/f$b;

    invoke-direct {p2, v2}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Le/a/g0/e;->q(Le/a/g0/k/f;)V

    goto :goto_5

    :cond_b
    if-nez p3, :cond_c

    .line 30
    iget-object p3, p1, Le/a/g0/e;->k:Le/a/g0/j/j;

    sget-object v0, Le/a/g0/j/j$a$a;->a:Le/a/g0/j/j$a$a;

    invoke-interface {p3, p2, v0}, Le/a/g0/j/j;->g(Le/a/d4/e;Le/a/g0/j/j$a;)V

    .line 31
    new-instance p2, Le/a/g0/k/f$b;

    invoke-direct {p2, v2}, Le/a/g0/k/f$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Le/a/g0/e;->q(Le/a/g0/k/f;)V

    .line 32
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "ufe-07"

    invoke-interface {v0, v1}, Le/a/g0/n/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "urft-09"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/g0/n/a;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "suspensionSettings.getIn\u2026ECAPTCHA_FAILED_TRIES, 0)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "urle-01"

    invoke-interface {v0, v1}, Le/a/g0/n/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method public final q(Le/a/g0/k/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    invoke-static {p1}, Le/a/l4/k;->G(Le/a/g0/k/f;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "urle-01"

    invoke-interface {v0, v1, p1}, Le/a/g0/n/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/g0/e;->o()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v1, "urft-09"

    invoke-interface {v0, v1, p1}, Le/a/g0/n/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final r(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g0/e;->e:Le/a/g0/n/a;

    iget-object v1, p0, Le/a/g0/e;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v1

    const-string v1, "stet-12"

    invoke-interface {v0, v1, p1, p2}, Le/a/g0/n/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final s(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/g0/e;->k:Le/a/g0/j/j;

    invoke-interface {p1}, Le/a/g0/j/j;->d()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/g0/e;->l()V

    .line 3
    iget-object p1, p0, Le/a/g0/e;->j:Le/a/g0/b;

    invoke-interface {p1}, Le/a/g0/b;->d()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g0/e;->b:Ljava/lang/String;

    return-void
.end method
