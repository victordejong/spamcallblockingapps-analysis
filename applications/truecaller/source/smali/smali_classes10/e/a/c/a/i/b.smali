.class public final Le/a/c/a/i/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.domain.DelayedAnalyticLoggerImpl$logCachedEvents$1"
    f = "DelayedAnalyticLogger.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

.field public final synthetic g:J

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;JLjava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/i/b;->f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iput-wide p2, p0, Le/a/c/a/i/b;->g:J

    iput-object p4, p0, Le/a/c/a/i/b;->h:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/i/b;

    iget-object v1, p0, Le/a/c/a/i/b;->f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iget-wide v2, p0, Le/a/c/a/i/b;->g:J

    iget-object v4, p0, Le/a/c/a/i/b;->h:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/i/b;-><init>(Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;JLjava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/i/b;

    iget-object v1, p0, Le/a/c/a/i/b;->f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iget-wide v2, p0, Le/a/c/a/i/b;->g:J

    iget-object v4, p0, Le/a/c/a/i/b;->h:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/i/b;-><init>(Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;JLjava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/i/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/i/b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-wide v3, p0, Le/a/c/a/i/b;->g:J

    iput v2, p0, Le/a/c/a/i/b;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/c/a/i/b;->f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    .line 6
    iget-object p1, p1, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->e:Le/a/c/e/c;

    .line 7
    iget-object v0, p0, Le/a/c/a/i/b;->h:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ls1/k;

    .line 11
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v2, Le/a/c/r/d/b;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Le/a/c/e/c;->b(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Le/a/c/a/i/b;->f:Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    .line 14
    iget-object p1, p1, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
