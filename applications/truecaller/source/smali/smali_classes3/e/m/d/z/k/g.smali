.class public Le/m/d/z/k/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# instance fields
.field public final a:Lu3/g;

.field public final b:Le/m/d/z/j/b;

.field public final c:Lcom/google/firebase/perf/util/Timer;

.field public final d:J


# direct methods
.method public constructor <init>(Lu3/g;Le/m/d/z/m/k;Lcom/google/firebase/perf/util/Timer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/k/g;->a:Lu3/g;

    .line 3
    new-instance p1, Le/m/d/z/j/b;

    invoke-direct {p1, p2}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 4
    iput-object p1, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    .line 5
    iput-wide p4, p0, Le/m/d/z/k/g;->d:J

    .line 6
    iput-object p3, p0, Le/m/d/z/k/g;->c:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method


# virtual methods
.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lu3/f;->request()Lu3/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lu3/g0;->b:Lu3/a0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    invoke-virtual {v1}, Lu3/a0;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 4
    :cond_0
    iget-object v0, v0, Lu3/g0;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    invoke-virtual {v1, v0}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 6
    :cond_1
    iget-object v0, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    iget-wide v1, p0, Le/m/d/z/k/g;->d:J

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 7
    iget-object v0, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/g;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 8
    iget-object v0, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    invoke-static {v0}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 9
    iget-object v0, p0, Le/m/d/z/k/g;->a:Lu3/g;

    invoke-interface {v0, p1, p2}, Lu3/g;->onFailure(Lu3/f;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/k/g;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Le/m/d/z/k/g;->b:Le/m/d/z/j/b;

    iget-wide v3, p0, Le/m/d/z/k/g;->d:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lu3/k0;Le/m/d/z/j/b;JJ)V

    .line 3
    iget-object v0, p0, Le/m/d/z/k/g;->a:Lu3/g;

    invoke-interface {v0, p1, p2}, Lu3/g;->onResponse(Lu3/f;Lu3/k0;)V

    return-void
.end method
