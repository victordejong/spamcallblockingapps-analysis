.class public final Le/a/f4/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Le/a/b0/e/r/a;

.field public final b:Le/a/q2/a;

.field public final c:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/q2/a;Le/a/b0/e/l;)V
    .locals 1

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/a/i;->a:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/f4/a/i;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/f4/a/i;->c:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 11

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object v1

    .line 3
    iget v2, v1, Lu3/k0;->e:I

    const/16 v3, 0x1c3

    if-ne v2, v3, :cond_c

    const-wide/32 v2, 0xf4240

    .line 4
    iget-object v4, v1, Lu3/k0;->h:Lu3/l0;

    const/4 v8, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lu3/l0;->q()Lv3/h;

    move-result-object v4

    invoke-interface {v4}, Lv3/h;->peek()Lv3/h;

    move-result-object v4

    .line 5
    new-instance v5, Lv3/f;

    invoke-direct {v5}, Lv3/f;-><init>()V

    .line 6
    invoke-interface {v4, v2, v3}, Lv3/h;->U(J)Z

    .line 7
    invoke-interface {v4}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v6

    .line 8
    iget-wide v6, v6, Lv3/f;->b:J

    .line 9
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-string v6, "source"

    .line 10
    invoke-static {v4, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 11
    invoke-interface {v4, v5, v2, v3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-eqz v9, :cond_0

    sub-long/2addr v2, v6

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 13
    :cond_1
    iget-object v2, v1, Lu3/k0;->h:Lu3/l0;

    invoke-virtual {v2}, Lu3/l0;->l()Lu3/c0;

    move-result-object v2

    .line 14
    iget-wide v3, v5, Lv3/f;->b:J

    const-string v6, "$this$asResponseBody"

    .line 15
    invoke-static {v5, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v6, Lu3/m0;

    invoke-direct {v6, v5, v2, v3, v4}, Lu3/m0;-><init>(Lv3/h;Lu3/c0;J)V

    .line 17
    invoke-virtual {v6}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object v2

    .line 18
    :try_start_0
    new-instance v3, Le/m/e/k;

    invoke-direct {v3}, Le/m/e/k;-><init>()V

    const-class v4, Le/m/e/t;

    invoke-virtual {v3, v2, v4}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/e/t;

    if-eqz v3, :cond_2

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_2
    move-object v3, v8

    :goto_1
    invoke-static {v2, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_3

    .line 19
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v8

    .line 20
    :goto_2
    iget-object v10, p0, Le/a/f4/a/i;->b:Le/a/q2/a;

    const-string v2, ""

    if-eqz v3, :cond_4

    move-object v4, v3

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    const-string v5, "Domain"

    .line 21
    invoke-static {v5, v4}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 22
    iget-object v4, v1, Lu3/k0;->b:Lu3/g0;

    .line 23
    iget-object v4, v4, Lu3/g0;->b:Lu3/a0;

    .line 24
    invoke-static {v4}, Le/a/c/p/a;->M0(Lu3/a0;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    const-string v5, "Endpoint"

    .line 25
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v4, p0, Le/a/f4/a/i;->c:Le/a/b0/e/l;

    invoke-interface {v4}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Locale.ENGLISH"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v4, v8

    :goto_5
    if-eqz v4, :cond_7

    move-object v2, v4

    :cond_7
    const-string v4, "ProfileCountry"

    .line 27
    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "UnavailableForLegalReasons"

    const-string v9, "AnalyticsEvent.Builder(U\u2026\n                .build()"

    move-object v6, v8

    .line 28
    invoke-static/range {v5 .. v10}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    if-eqz v3, :cond_9

    .line 29
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_a

    return-object v1

    .line 30
    :cond_a
    iget-object v1, p0, Le/a/f4/a/i;->a:Le/a/b0/e/r/a;

    monitor-enter v1

    .line 31
    :try_start_1
    iget-object v2, p0, Le/a/f4/a/i;->a:Le/a/b0/e/r/a;

    const-string v4, "networkDomain"

    invoke-interface {v2, v4, v3}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 34
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 35
    :cond_b
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v8

    :cond_c
    return-object v1
.end method
