.class public final Le/a/b0/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/e/h;


# instance fields
.field public final a:Le/a/b0/e/r/a;

.field public final b:Le/a/n2/a/a;

.field public final c:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/n2/a/a;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRequestHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/b0/e/i;->b:Le/a/n2/a/a;

    iput-object p3, p0, Le/a/b0/e/i;->c:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    const-string v1, "auth_token_cross_domain"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_4

    const-string v1, "xd_t_f_t"

    .line 3
    invoke-virtual {p0, v1}, Le/a/b0/e/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xd_t_e_t"

    invoke-virtual {p0, v1}, Le/a/b0/e/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    move-object v4, v0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    invoke-virtual {p0}, Le/a/b0/e/i;->b()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/b0/e/i;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "xd_t_f_t"

    .line 2
    invoke-virtual {p0, v2}, Le/a/b0/e/i;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "xd_t_r_d_u"

    const/4 v6, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    const-wide/16 v7, -0x1

    invoke-interface {v3, v5, v7, v8}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    invoke-interface {v0, v5}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/b0/e/i;->b:Le/a/n2/a/a;

    check-cast v0, Le/a/n2/a/b;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v3, Le/a/n2/a/c;

    invoke-static {v0, v3}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    invoke-interface {v0}, Le/a/n2/a/c;->b()Lx3/b;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v3, "AccountRestAdapter.fetch\u2026ssDomainToken().execute()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget-object v2, v0, Lx3/a0;->a:Lu3/k0;

    .line 10
    iget v2, v2, Lu3/k0;->e:I

    .line 11
    iget-object v0, v0, Lx3/a0;->c:Lu3/l0;

    .line 12
    invoke-virtual {p0, v2, v0}, Le/a/b0/e/i;->c(ILu3/l0;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lcom/truecaller/account/network/TemporaryTokenDto;

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/account/network/TemporaryTokenDto;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/account/network/TemporaryTokenDto;->getTtl()Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_4

    .line 17
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v4, v6

    :cond_5
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 18
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_7

    .line 19
    iget-object v0, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    iget-object v3, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 23
    iget-object v5, p0, Le/a/b0/e/i;->c:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v5

    .line 24
    iget-object v7, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    .line 25
    invoke-interface {v7, v2, v5, v6}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    const-string v2, "xd_t_e_t"

    .line 26
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v3, v5

    .line 27
    invoke-interface {v7, v2, v3, v4}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    const-string v2, "auth_token_cross_domain"

    .line 28
    invoke-interface {v7, v2, v0}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_7
    return-object v1

    :catch_0
    move-exception v0

    .line 29
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_8

    :goto_3
    return-object v1

    .line 30
    :cond_8
    throw v0
.end method

.method public final c(ILu3/l0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p2

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    const-class v1, Lcom/truecaller/account/network/TokenErrorResponseDto;

    invoke-virtual {v0, p2, v1}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/account/network/TokenErrorResponseDto;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getNextCallDuration()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x193

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/b0/e/i;->c:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide p1

    .line 6
    iget-object v1, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    const-string v2, "xd_t_f_t"

    .line 7
    invoke-interface {v1, v2, p1, p2}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    const-string v2, "xd_t_r_d_u"

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v3, p1

    .line 10
    invoke-interface {v1, v2, v3, v4}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    const-string p1, "auth_token_cross_domain"

    .line 11
    invoke-interface {v1, p1}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/truecaller/log/UnmutedException$b;

    invoke-virtual {p2}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/truecaller/log/UnmutedException$b;-><init>(ILjava/lang/Integer;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lcom/truecaller/log/UnmutedException$b;

    const/16 v0, 0xc8

    const-string v1, "Unable to parse xDC token error: "

    .line 14
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p2, v0, v1, p1}, Lcom/truecaller/log/UnmutedException$b;-><init>(ILjava/lang/Integer;Ljava/lang/String;)V

    .line 16
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b0/e/i;->a:Le/a/b0/e/r/a;

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Le/a/b0/e/i;->c:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
