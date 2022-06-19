.class public final Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/workers/InsightsReSyncWorker;->r()Landroidx/work/ListenableWorker$a;
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
        "Landroidx/work/ListenableWorker$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.workers.InsightsReSyncWorker$work$1"
    f = "InsightsReSyncWorker.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

.field public final synthetic g:Ls1/z/c/y;

.field public final synthetic h:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/workers/InsightsReSyncWorker;Ls1/z/c/y;Ls1/z/c/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    iput-object p2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->g:Ls1/z/c/y;

    iput-object p3, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->h:Ls1/z/c/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;

    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->g:Ls1/z/c/y;

    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->h:Ls1/z/c/y;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;-><init>(Lcom/truecaller/insights/workers/InsightsReSyncWorker;Ls1/z/c/y;Ls1/z/c/y;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;

    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->g:Ls1/z/c/y;

    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->h:Ls1/z/c/y;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;-><init>(Lcom/truecaller/insights/workers/InsightsReSyncWorker;Ls1/z/c/y;Ls1/z/c/y;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->e:I

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
    iget-object p1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    .line 5
    iget-object p1, p1, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->f:Le/a/c/i/m/c;

    .line 6
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->g:Ls1/z/c/y;

    iget-boolean v1, v1, Ls1/z/c/y;->a:Z

    iget-object v3, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->h:Ls1/z/c/y;

    iget-boolean v3, v3, Ls1/z/c/y;->a:Z

    iput v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/c/i/m/c;->b(ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    .line 7
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 9
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast p1, Le/a/c/c/e/b$a;

    .line 11
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    .line 12
    iget-object v2, v2, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->e:Le/a/c/i/m/f;

    .line 13
    invoke-interface {v2}, Le/a/c/i/m/f;->c()V

    .line 14
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->g:Ls1/z/c/y;

    iget-boolean v2, v2, Ls1/z/c/y;->a:Z

    const-string v3, "builder.build()"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->t()Le/a/h4/n;

    move-result-object v4

    const-string v5, "non_spam_sms_v2"

    invoke-interface {v4, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    new-instance v5, Ln3/k/a/q;

    iget-object v6, v2, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "Finished processing the messages"

    .line 17
    invoke-virtual {v5, v4}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v4, "Please open the threads and check whether you have smart notifications"

    .line 18
    invoke-virtual {v5, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 19
    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_messages_24dp:I

    .line 20
    iget-object v6, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v4, v6, Landroid/app/Notification;->icon:I

    const/4 v4, 0x2

    .line 21
    iput v4, v5, Ln3/k/a/q;->l:I

    const-string v4, "NotificationCompat.Build\u2026ationCompat.PRIORITY_MAX)"

    .line 22
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->t()Le/a/h4/n;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 24
    :cond_3
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;->f:Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget-object v5, p1, Le/a/c/c/e/b$a;->b:Ljava/util/Map;

    .line 28
    sget-object v6, Le/a/c/r/d/a;->b:Le/a/c/r/d/a;

    .line 29
    sget-object v6, Le/a/c/r/d/a;->a:Ljava/util/Map;

    .line 30
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/c/r/h/h;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 31
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 32
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_5
    iget v5, p1, Le/a/c/c/e/b$a;->a:I

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "message_count"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p1, Le/a/c/c/e/b$a;->c:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "rerun_exception_count"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "parsing_time"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->u()Ljava/lang/String;

    move-result-object p1

    const-string v0, "re_run_context"

    .line 40
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v4}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 42
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 43
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0, p1}, Landroidx/work/ListenableWorker$a$c;-><init>(Ln3/m0/f;)V

    const-string p1, "Result.success(createOut\u2026elapsedTime, parseStats))"

    .line 45
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
