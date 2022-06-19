.class public final Le/a/c/e/d$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/e/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.insights.analytics.InsightsAnalyticsManagerImpl$logAggregationEvent$1"
    f = "InsightsAnalyticsManager.kt"
    l = {
        0x3b,
        0x3d,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/e/d;


# direct methods
.method public constructor <init>(Le/a/c/e/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/c/e/d$b;

    iget-object v0, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    invoke-direct {p1, v0, p2}, Le/a/c/e/d$b;-><init>(Le/a/c/e/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/e/d$b;

    iget-object v0, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    invoke-direct {p1, v0, p2}, Le/a/c/e/d$b;-><init>(Le/a/c/e/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/e/d$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/e/d$b;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/c/e/d$b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    .line 5
    iget-object p1, p1, Le/a/c/e/d;->c:Le/a/c/c/f/d;

    .line 6
    iput v4, p0, Le/a/c/e/d$b;->f:I

    check-cast p1, Le/a/c/c/f/e;

    invoke-virtual {p1, p0}, Le/a/c/c/f/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    iget-object p1, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    .line 10
    iget-object p1, p1, Le/a/c/e/d;->c:Le/a/c/c/f/d;

    .line 11
    iput-object v1, p0, Le/a/c/e/d$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/c/e/d$b;->f:I

    check-cast p1, Le/a/c/c/f/e;

    .line 12
    iget-object p1, p1, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    invoke-virtual {p1, v1, p0}, Le/a/c/c/d/i;->d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 13
    :cond_5
    :goto_1
    check-cast p1, [Ljava/lang/Long;

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    .line 15
    iget-object v4, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    .line 16
    iget-object v4, v4, Le/a/c/e/d;->d:Le/a/q2/a;

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->mapToAppSmsInsightsEvent()Le/a/l5/a/e2;

    move-result-object v3

    const-string v5, "it.mapToAppSmsInsightsEvent()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_2

    .line 18
    :cond_6
    iget-object v1, p0, Le/a/c/e/d$b;->g:Le/a/c/e/d;

    .line 19
    iget-object v1, v1, Le/a/c/e/d;->c:Le/a/c/c/f/d;

    .line 20
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/c/e/d$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/c/e/d$b;->f:I

    check-cast v1, Le/a/c/c/f/e;

    .line 21
    iget-object v1, v1, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    invoke-virtual {v1, p1, p0}, Le/a/c/c/d/i;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 22
    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
