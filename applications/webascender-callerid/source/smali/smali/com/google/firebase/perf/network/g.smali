.class public Lcom/google/firebase/perf/network/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/g;


# instance fields
.field private final a:Lm/g;

.field private final b:Lcom/google/firebase/perf/f/a;

.field private final c:J

.field private final d:Lcom/google/firebase/perf/i/g;


# direct methods
.method public constructor <init>(Lm/g;Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/i/g;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->a:Lm/g;

    .line 3
    invoke-static {p2}, Lcom/google/firebase/perf/f/a;->c(Lcom/google/firebase/perf/h/k;)Lcom/google/firebase/perf/f/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    .line 4
    iput-wide p4, p0, Lcom/google/firebase/perf/network/g;->c:J

    .line 5
    iput-object p3, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/i/g;

    return-void
.end method


# virtual methods
.method public onFailure(Lm/f;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lm/f;->request()Lm/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    invoke-virtual {v1}, Lm/y;->v()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/perf/f/a;->t(Ljava/lang/String;)Lcom/google/firebase/perf/f/a;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/f/a;->j(Ljava/lang/String;)Lcom/google/firebase/perf/f/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/g;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/f/a;->n(J)Lcom/google/firebase/perf/f/a;

    .line 7
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/i/g;

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/g;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/f/a;->r(J)Lcom/google/firebase/perf/f/a;

    .line 8
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/f/a;)V

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->a:Lm/g;

    invoke-interface {v0, p1, p2}, Lm/g;->onFailure(Lm/f;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lm/f;Lm/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/i/g;

    invoke-virtual {v0}, Lcom/google/firebase/perf/i/g;->b()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/f/a;

    iget-wide v3, p0, Lcom/google/firebase/perf/network/g;->c:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lm/g0;Lcom/google/firebase/perf/f/a;JJ)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->a:Lm/g;

    invoke-interface {v0, p1, p2}, Lm/g;->onResponse(Lm/f;Lm/g0;)V

    return-void
.end method
