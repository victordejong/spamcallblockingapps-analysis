.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lu3/k0;Le/m/d/z/j/b;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/k0;->b:Lu3/g0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lu3/g0;->b:Lu3/a0;

    .line 3
    invoke-virtual {v1}, Lu3/a0;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 4
    iget-object v1, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 6
    iget-object v0, v0, Lu3/g0;->e:Lu3/j0;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lu3/j0;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1, v3, v4}, Le/m/d/z/j/b;->e(J)Le/m/d/z/j/b;

    .line 9
    :cond_1
    iget-object v0, p0, Lu3/k0;->h:Lu3/l0;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lu3/l0;->k()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v3, v4}, Le/m/d/z/j/b;->h(J)Le/m/d/z/j/b;

    .line 12
    :cond_2
    invoke-virtual {v0}, Lu3/l0;->l()Lu3/c0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, v0, Lu3/c0;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 15
    :cond_3
    iget p0, p0, Lu3/k0;->e:I

    .line 16
    invoke-virtual {p1, p0}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;

    .line 17
    invoke-virtual {p1, p2, p3}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 18
    invoke-virtual {p1, p4, p5}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 19
    invoke-virtual {p1}, Le/m/d/z/j/b;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-void
.end method

.method public static enqueue(Lu3/f;Lu3/g;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v3, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 2
    iget-wide v4, v3, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 3
    new-instance v6, Le/m/d/z/k/g;

    .line 4
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    move-object v0, v6

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Le/m/d/z/k/g;-><init>(Lu3/g;Le/m/d/z/m/k;Lcom/google/firebase/perf/util/Timer;J)V

    .line 6
    invoke-interface {p0, v6}, Lu3/f;->M1(Lu3/g;)V

    return-void
.end method

.method public static execute(Lu3/f;)Lu3/k0;
    .locals 12
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 2
    new-instance v7, Le/m/d/z/j/b;

    invoke-direct {v7, v0}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 5
    :try_start_0
    invoke-interface {p0}, Lu3/f;->execute()Lu3/k0;

    move-result-object v0

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    move-object v1, v0

    move-object v2, v7

    move-wide v3, v8

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lu3/k0;Le/m/d/z/j/b;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-interface {p0}, Lu3/f;->request()Lu3/g0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    iget-object v1, p0, Lu3/g0;->b:Lu3/a0;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lu3/a0;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 11
    :cond_0
    iget-object p0, p0, Lu3/g0;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {v7, p0}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 13
    :cond_1
    invoke-virtual {v7, v8, v9}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 14
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v10

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    .line 15
    invoke-virtual {v7, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 16
    invoke-static {v7}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 17
    throw v0
.end method
