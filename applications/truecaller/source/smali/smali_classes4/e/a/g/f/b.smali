.class public final Le/a/g/f/b;
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
    c = "com.truecaller.acs.analytics.AcsAnalyticsImpl$listenToButtonClick$1"
    f = "AcsAnalyticsImpl.kt"
    l = {
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/g/f/d;

.field public final synthetic i:Lq3/a/w2/z;


# direct methods
.method public constructor <init>(Le/a/g/f/d;Lq3/a/w2/z;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/f/b;->h:Le/a/g/f/d;

    iput-object p2, p0, Le/a/g/f/b;->i:Lq3/a/w2/z;

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

    new-instance p1, Le/a/g/f/b;

    iget-object v0, p0, Le/a/g/f/b;->h:Le/a/g/f/d;

    iget-object v1, p0, Le/a/g/f/b;->i:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/f/b;-><init>(Le/a/g/f/d;Lq3/a/w2/z;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/f/b;

    iget-object v0, p0, Le/a/g/f/b;->h:Le/a/g/f/d;

    iget-object v1, p0, Le/a/g/f/b;->i:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/f/b;-><init>(Le/a/g/f/d;Lq3/a/w2/z;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/f/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/f/b;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/g/f/b;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v3, p0, Le/a/g/f/b;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/w2/z;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

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
    iget-object v3, p0, Le/a/g/f/b;->i:Lq3/a/w2/z;

    .line 5
    :try_start_1
    invoke-interface {v3}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v3, p1, Le/a/g/f/b;->e:Ljava/lang/Object;

    iput-object v1, p1, Le/a/g/f/b;->f:Ljava/lang/Object;

    iput v2, p1, Le/a/g/f/b;->g:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v0, :cond_2

    return-object v0

    :cond_2
    move-object v8, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    invoke-interface {v3}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/acs/analytics/ClickEvent;

    .line 6
    iget-object v6, v0, Le/a/g/f/b;->h:Le/a/g/f/d;

    .line 7
    iget-object v7, v6, Le/a/g/f/d;->a:Lcom/truecaller/acs/analytics/AnalyticsContext;

    if-eqz v7, :cond_4

    .line 8
    invoke-virtual {v7}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, p1}, Le/a/g/f/d;->a(Le/a/g/f/d;Ljava/lang/String;Lcom/truecaller/acs/analytics/ClickEvent;)Ljava/util/Set;

    move-result-object p1

    iget-object v5, v0, Le/a/g/f/b;->h:Le/a/g/f/d;

    .line 9
    iget-object v5, v5, Le/a/g/f/d;->d:Le/a/q2/a;

    const-string v6, "$this$logAllWith"

    .line 10
    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "analytics"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/q2/v;

    .line 12
    invoke-interface {v5, v6}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_2

    :cond_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_0

    :cond_4
    const-string p1, "analyticsContext"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 14
    :cond_5
    :try_start_3
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-static {v4, v5}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 16
    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 17
    invoke-static {v3, p1}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    throw v0
.end method
