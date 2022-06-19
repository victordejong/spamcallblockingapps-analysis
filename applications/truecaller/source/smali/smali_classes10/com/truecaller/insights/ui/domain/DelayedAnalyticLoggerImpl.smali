.class public final Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/i/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0008\u0008\u0001\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004R(\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u000f0\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;",
        "Le/a/c/a/i/a;",
        "Ls1/s;",
        "onResume",
        "()V",
        "onPause",
        "onDestroy",
        "Le/a/c/r/d/b;",
        "event",
        "",
        "delayInMillis",
        "Nz",
        "(Le/a/c/r/d/b;J)V",
        "a",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ls1/k;",
        "c",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "analyticsCache",
        "Le/a/c/e/c;",
        "e",
        "Le/a/c/e/c;",
        "insightsAnalyticsManager",
        "",
        "d",
        "Z",
        "isResumed",
        "Lq3/a/i0;",
        "b",
        "Lq3/a/i0;",
        "coroutineScope",
        "Lq3/a/y;",
        "Lq3/a/y;",
        "job",
        "Ls1/w/f;",
        "f",
        "Ls1/w/f;",
        "ioContext",
        "<init>",
        "(Le/a/c/e/c;Ls1/w/f;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ls1/k<",
            "Le/a/c/r/d/b;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Le/a/c/e/c;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/e/c;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->e:Le/a/c/e/c;

    iput-object p2, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->f:Ls1/w/f;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->a:Lq3/a/y;

    .line 3
    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->b:Lq3/a/i0;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public Nz(Le/a/c/r/d/b;J)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ls1/k;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->a()V

    return-void
.end method

.method public final a()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    move-object v3, v2

    check-cast v3, Ls1/k;

    .line 7
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 9
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 13
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 17
    iget-object v1, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->b:Lq3/a/i0;

    new-instance v11, Le/a/c/a/i/b;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Le/a/c/a/i/b;-><init>(Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;JLjava/util/List;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 3
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->b:Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->S(Lq3/a/i0;Ljava/util/concurrent/CancellationException;I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final onPause()V
    .locals 3
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->d:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->d:Z

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->a()V

    return-void
.end method
