.class public final Le/a/f/z/m0/b$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/m0/b;->d(Lq3/a/w2/h;)V
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
    c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenServiceUIEvents$1"
    f = "InCallUIAnalyticsImpl.kt"
    l = {
        0x106
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/f/z/m0/b;

.field public final synthetic k:Lq3/a/w2/h;


# direct methods
.method public constructor <init>(Le/a/f/z/m0/b;Lq3/a/w2/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/m0/b$f;->j:Le/a/f/z/m0/b;

    iput-object p2, p0, Le/a/f/z/m0/b$f;->k:Lq3/a/w2/h;

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

    new-instance p1, Le/a/f/z/m0/b$f;

    iget-object v0, p0, Le/a/f/z/m0/b$f;->j:Le/a/f/z/m0/b;

    iget-object v1, p0, Le/a/f/z/m0/b$f;->k:Lq3/a/w2/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/z/m0/b$f;-><init>(Le/a/f/z/m0/b;Lq3/a/w2/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/z/m0/b$f;

    iget-object v0, p0, Le/a/f/z/m0/b$f;->j:Le/a/f/z/m0/b;

    iget-object v1, p0, Le/a/f/z/m0/b$f;->k:Lq3/a/w2/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/z/m0/b$f;-><init>(Le/a/f/z/m0/b;Lq3/a/w2/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/z/m0/b$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/z/m0/b$f;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/f/z/m0/b$f;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v4, p0, Le/a/f/z/m0/b$f;->g:Ljava/lang/Object;

    check-cast v4, Lq3/a/w2/z;

    iget-object v5, p0, Le/a/f/z/m0/b$f;->f:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, p0, Le/a/f/z/m0/b$f;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

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
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    iput-object v3, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iput-object v3, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    iget-object v4, p0, Le/a/f/z/m0/b$f;->k:Lq3/a/w2/h;

    .line 7
    invoke-interface {v4}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v4

    .line 8
    :try_start_1
    invoke-interface {v4}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object v5

    move-object v6, p1

    move-object p1, p0

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    :goto_0
    iput-object v6, p1, Le/a/f/z/m0/b$f;->e:Ljava/lang/Object;

    iput-object v5, p1, Le/a/f/z/m0/b$f;->f:Ljava/lang/Object;

    iput-object v4, p1, Le/a/f/z/m0/b$f;->g:Ljava/lang/Object;

    iput-object v1, p1, Le/a/f/z/m0/b$f;->h:Ljava/lang/Object;

    iput v2, p1, Le/a/f/z/m0/b$f;->i:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v7, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v2}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/incallui/service/ServiceUIEvent;

    .line 9
    iget-object v8, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/incallui/service/ServiceUIEvent;

    if-ne p1, v8, :cond_3

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate service UI event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_3
    iput-object p1, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New service UI event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    iget-object v8, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Lq3/a/n0;

    if-eqz v8, :cond_4

    invoke-static {v8, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 14
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v8, 0x2

    if-ne p1, v8, :cond_5

    move-object p1, v4

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 16
    :cond_6
    iget-object p1, v0, Le/a/f/z/m0/b$f;->j:Le/a/f/z/m0/b;

    sget-object v8, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->ONGOING_NOTIFICATION:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-static {p1, v8}, Le/a/f/z/m0/b;->k(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;)Lq3/a/n0;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_7
    iget-object p1, v0, Le/a/f/z/m0/b$f;->j:Le/a/f/z/m0/b;

    sget-object v8, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCOMING_NOTIFICATION:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-static {p1, v8}, Le/a/f/z/m0/b;->k(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;)Lq3/a/n0;

    move-result-object p1

    .line 18
    :goto_2
    iput-object p1, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    :goto_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_0

    .line 19
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    invoke-static {v5, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 21
    iget-object v0, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lq3/a/n0;

    if-eqz v0, :cond_9

    invoke-static {v0, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .line 22
    :goto_4
    invoke-static {v5, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw p1
.end method
