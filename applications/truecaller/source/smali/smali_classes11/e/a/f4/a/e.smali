.class public final Le/a/f4/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/a/d;


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/n2/a/a;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/n2/a/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRequestHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/f4/a/e;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/f4/a/e;->c:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/f4/a/e;->d:Le/a/n2/a/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "requestUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    iget-object v0, p0, Le/a/f4/a/e;->b:Le/a/b0/o/a;

    const-string v1, "checkCredentialsLastTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iget-object v4, p0, Le/a/f4/a/e;->b:Le/a/b0/o/a;

    const-string v5, "checkCredentialsTtl"

    invoke-interface {v4, v5, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Le/a/f4/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token is valid by request TTL, but server returned UNAUTHORIZED to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/f4/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Le/a/f4/a/e;->d:Le/a/n2/a/a;

    new-instance v1, Lcom/truecaller/account/network/CheckCredentialsRequestDto;

    const-string v5, "received_unauthorized"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/truecaller/account/network/CheckCredentialsRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;ILs1/z/c/f;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v4, v5}, Le/m/d/y/n;->u(Le/a/n2/a/a;Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;ILjava/lang/Object;)Le/a/n2/a/e;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    check-cast v0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;

    .line 9
    iget-object v1, p0, Le/a/f4/a/e;->b:Le/a/b0/o/a;

    const-string v6, "checkCredentialsLastTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v1, v6, v7, v8}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-object v1, p0, Le/a/f4/a/e;->b:Le/a/b0/o/a;

    const-string v6, "checkCredentialsTtl"

    .line 11
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getNextCallDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 12
    invoke-interface {v1, v6, v8, v9}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v6, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-virtual {v0}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getTtl()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_4
    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-interface {v6, v1, v2, v3}, Le/a/b0/e/l;->r(Ljava/lang/String;J)V

    .line 15
    :cond_5
    invoke-virtual {v0}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    if-nez v4, :cond_8

    .line 16
    iget-object v1, p0, Le/a/f4/a/e;->c:Le/a/b0/e/r/a;

    const-string v2, "networkDomain"

    invoke-virtual {v0}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_8
    new-instance v0, Le/a/f4/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token is valid by request, but server returned UNAUTHORIZED to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/f4/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_9
    instance-of p1, v0, Le/a/n2/a/f;

    if-eqz p1, :cond_b

    move-object p1, v0

    check-cast p1, Le/a/n2/a/f;

    invoke-virtual {p1}, Le/a/n2/a/f;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 19
    iget-object p1, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    check-cast v0, Le/a/n2/a/f;

    .line 20
    iget-object v0, v0, Le/a/n2/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_a
    invoke-interface {p1, v2, v3}, Le/a/b0/e/l;->h(J)V

    .line 22
    iget-object p1, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->c()V

    goto :goto_1

    .line 23
    :cond_b
    instance-of p1, v0, Le/a/n2/a/f;

    if-eqz p1, :cond_d

    check-cast v0, Le/a/n2/a/f;

    invoke-virtual {v0}, Le/a/n2/a/f;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Le/a/f4/a/e;->a:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_c

    move v4, v5

    :cond_c
    if-eqz v4, :cond_d

    .line 25
    :try_start_2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    sget-object v1, Lcom/truecaller/common/account/analytics/LogoutContext;->CHECK_CREDENTIALS:Lcom/truecaller/common/account/analytics/LogoutContext;

    invoke-virtual {v0, p1, v5, v5, v1}, Lcom/truecaller/TrueApp;->d0(Ljava/lang/String;ZZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    :try_start_3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :cond_d
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
