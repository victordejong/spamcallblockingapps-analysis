.class public final Le/a/f/z/m0/c;
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
    c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$logNotificationViewVisitAsync$1"
    f = "InCallUIAnalyticsImpl.kt"
    l = {
        0xbf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/z/m0/b;

.field public final synthetic g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;


# direct methods
.method public constructor <init>(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    iput-object p2, p0, Le/a/f/z/m0/c;->g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/f/z/m0/c;

    iget-object v0, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    iget-object v1, p0, Le/a/f/z/m0/c;->g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/z/m0/c;-><init>(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/z/m0/c;

    iget-object v0, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    iget-object v1, p0, Le/a/f/z/m0/c;->g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/z/m0/c;-><init>(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/z/m0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/z/m0/c;->e:I

    const-string v2, "Type"

    const-string v3, "viewId"

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

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
    :try_start_1
    iget-object p1, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    iput v5, p0, Le/a/f/z/m0/c;->e:I

    invoke-virtual {p1, p0}, Le/a/f/z/m0/b;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    iget-object v0, p0, Le/a/f/z/m0/c;->g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->getValue()Ljava/lang/String;

    move-result-object p1

    and-int/lit8 v1, v4, 0x2

    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_3

    move-object p1, v6

    :cond_3
    and-int/lit8 v1, v4, 0x8

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    :cond_4
    new-instance p1, Le/a/q2/y0/a/a;

    invoke-direct {p1, v0, v6, v1}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    .line 11
    iget-object v0, v0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    .line 12
    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 14
    :goto_1
    iget-object v0, p0, Le/a/f/z/m0/c;->g:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->SEARCHING:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->getValue()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v5, v4, 0x2

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_5

    move-object v1, v6

    :cond_5
    and-int/lit8 v4, v4, 0x8

    .line 15
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v1, :cond_6

    .line 17
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    :cond_6
    new-instance v1, Le/a/q2/y0/a/a;

    invoke-direct {v1, v0, v6, v3}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    iget-object v0, p0, Le/a/f/z/m0/c;->f:Le/a/f/z/m0/b;

    .line 20
    iget-object v0, v0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    .line 21
    invoke-static {v1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 22
    throw p1
.end method
