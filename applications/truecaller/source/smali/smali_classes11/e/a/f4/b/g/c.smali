.class public final Le/a/f4/b/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/b/g/b;


# instance fields
.field public final a:Ljava/io/File;

.field public b:Le/a/f4/b/g/a;

.field public final c:Ls1/g;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/f4/b/i/a;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/f4/b/i/a;Le/a/b0/e/r/a;Landroid/telephony/TelephonyManager;Ljava/io/File;)V
    .locals 1

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkAdvancedSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDir"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/b/g/c;->d:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    iput-object p3, p0, Le/a/f4/b/g/c;->f:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/f4/b/g/c;->g:Landroid/telephony/TelephonyManager;

    .line 2
    new-instance p1, Ljava/io/File;

    const-string p2, "edges.json"

    invoke-direct {p1, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/f4/b/g/c;->a:Ljava/io/File;

    .line 3
    sget-object p2, Le/a/f4/b/g/c$a;->b:Le/a/f4/b/g/c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/f4/b/g/c;->c:Ls1/g;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    sget-object p2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p2, 0x0

    :try_start_2
    new-instance p3, Le/m/e/k;

    invoke-direct {p3}, Le/m/e/k;-><init>()V

    const-class p4, Le/a/f4/b/g/a;

    invoke-virtual {p3, p1, p4}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/f4/b/g/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Le/a/f4/b/g/c;->i(Le/a/f4/b/g/a;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 9
    :try_start_7
    monitor-exit p0

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Le/m/e/z;

    if-eqz p2, :cond_1

    .line 11
    new-instance p2, Lcom/truecaller/log/UnmutedException$d;

    const-string p3, "Couldn\'t parse edges from disk: "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/truecaller/log/UnmutedException$d;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0}, Le/a/f4/b/g/c;->e()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    const-string v1, "edgeLocationsLastRequestTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/f4/b/i/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v1, "domain"

    const-string v3, "edgeName"

    const-string v5, "edgeHost"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f4/b/g/a;

    invoke-direct {v0}, Le/a/f4/b/g/a;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v0}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v1}, Le/a/f4/b/g/a;->c(Ljava/util/Map;)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    :goto_1
    new-instance v2, Le/a/f4/b/g/a$a;

    invoke-direct {v2}, Le/a/f4/b/g/a$a;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v3}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2, p3}, Le/a/f4/b/g/a$a;->b(Ljava/util/List;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 7
    :cond_3
    iput-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    .line 8
    invoke-virtual {p0, v0}, Le/a/f4/b/g/c;->h(Le/a/f4/b/g/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/f4/b/g/c;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/f4/b/g/c;->f:Le/a/b0/e/r/a;

    const-string v1, "profileNumber"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/truecaller/log/UnmutedException$d;

    const-string v2, "Trying to call edge location without phone number"

    invoke-direct {v0, v2}, Lcom/truecaller/log/UnmutedException$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return v1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/f4/b/g/c;->d:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Le/a/f4/b/g/c;->f:Le/a/b0/e/r/a;

    const-string v3, "profileCountryIso"

    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    .line 4
    new-instance v0, Lcom/truecaller/log/UnmutedException$d;

    const-string v2, "Trying to call edge location without profile country code"

    invoke-direct {v0, v2}, Lcom/truecaller/log/UnmutedException$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return v1

    .line 5
    :cond_3
    iget-object v3, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    const-string v4, "edgeLocationsLastRequestTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Le/a/f4/b/i/a;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object v3, p0, Le/a/f4/b/g/c;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 7
    const-class v4, Le/a/f4/b/g/d;

    new-instance v5, Le/a/b0/b/a/b;

    invoke-direct {v5}, Le/a/b0/b/a/b;-><init>()V

    sget-object v6, Lcom/truecaller/common/network/util/KnownEndpoints;->EDGE:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 8
    invoke-static {v5, v6, v4}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v6

    .line 9
    sget-object v7, Lcom/truecaller/common/network/util/AuthRequirement;->OPTIONAL:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 10
    invoke-static {v6, v7, v8, v9, v8}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 11
    invoke-virtual {v6, v1}, Le/a/b0/b/g/b;->e(Z)Le/a/b0/b/g/b;

    .line 12
    invoke-static {v6}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 13
    invoke-virtual {v5, v4}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/f4/b/g/d;

    .line 14
    invoke-interface {v4, v3, v2, v0}, Le/a/f4/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v2, "response"

    .line 16
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 17
    :cond_4
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 18
    check-cast v0, Le/a/f4/b/g/a;

    if-eqz v0, :cond_6

    const-string v1, "response.body() ?: return false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Le/a/f4/b/g/c;->i(Le/a/f4/b/g/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Le/a/f4/b/g/c;->h(Le/a/f4/b/g/a;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 21
    :cond_5
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    return v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/g/a$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Le/a/f4/b/g/c;->h(Le/a/f4/b/g/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/f4/b/g/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    iget-object v0, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    const-string v1, "edgeLocationsExpiration"

    invoke-interface {v0, v1}, Le/a/f4/b/i/a;->remove(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    const-string v1, "edgeLocationsLastRequestTime"

    invoke-interface {v0, v1}, Le/a/f4/b/i/a;->remove(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    invoke-virtual {p0, v0, p1, p2}, Le/a/f4/b/g/c;->g(Le/a/f4/b/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f4/b/g/c;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/b/g/a;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Le/a/f4/b/g/c;->g(Le/a/f4/b/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final g(Le/a/f4/b/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/g/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/f4/b/g/a$a;->a()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p0

    throw p1

    :cond_0
    move-object p1, v0

    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public final h(Le/a/f4/b/g/a;)Z
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/f4/b/g/c;->a:Ljava/io/File;

    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Le/m/e/k;

    invoke-direct {v2}, Le/m/e/k;-><init>()V

    invoke-virtual {v2, p1, v0}, Le/m/e/k;->q(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Le/a/f4/b/g/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Le/a/f4/b/g/a;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Edge location document ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") expires @ "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p1, p0, Le/a/f4/b/g/c;->e:Le/a/f4/b/i/a;

    const-string v2, "edgeLocationsExpiration"

    invoke-interface {p1, v2, v0, v1}, Le/a/f4/b/i/a;->putLong(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i(Le/a/f4/b/g/a;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/f4/b/g/c;->b:Le/a/f4/b/g/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
