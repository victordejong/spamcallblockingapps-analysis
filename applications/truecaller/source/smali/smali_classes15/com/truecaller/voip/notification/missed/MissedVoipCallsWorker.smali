.class public final Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/c/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0019\u0012\u0008\u0008\u0001\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010/\u001a\u00020)8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00064"
    }
    d2 = {
        "Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;",
        "Landroidx/work/Worker;",
        "Le/a/d/y/c/h;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Ls1/s;",
        "onStopped",
        "()V",
        "Le/a/d/y/c/e;",
        "missedCall",
        "Landroid/graphics/Bitmap;",
        "notificationIcon",
        "g",
        "(Le/a/d/y/c/e;Landroid/graphics/Bitmap;)V",
        "",
        "missedCallsToShow",
        "",
        "count",
        "b",
        "(Ljava/util/List;I)V",
        "d",
        "Ln3/k/a/q;",
        "n",
        "()Ln3/k/a/q;",
        "Landroid/content/Context;",
        "c",
        "Landroid/content/Context;",
        "context",
        "Le/a/h4/n;",
        "o",
        "()Le/a/h4/n;",
        "notificationManager",
        "Le/a/d/y/c/g;",
        "a",
        "Le/a/d/y/c/g;",
        "getPresenter",
        "()Le/a/d/y/c/g;",
        "setPresenter",
        "(Le/a/d/y/c/g;)V",
        "presenter",
        "Le/a/d/c0/j1;",
        "Le/a/d/c0/j1;",
        "getSupport",
        "()Le/a/d/c0/j1;",
        "setSupport",
        "(Le/a/d/c0/j1;)V",
        "support",
        "Landroidx/work/WorkerParameters;",
        "workerParameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/d/y/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/d/c0/j1;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/d/y/c/e;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "missedCallsToShow"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/voip/R$plurals;->voip_notification_missed_grouped_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v5, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 4
    invoke-virtual {v0, v1, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getQua\u2026ring.voip_text)\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 6
    sget v3, Lcom/truecaller/voip/R$string;->voip_notification_missed_grouped_message:I

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/16 v8, 0x63

    if-le p2, v8, :cond_0

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_0
    aput-object v8, v7, v6

    .line 8
    iget-object v8, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    .line 9
    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(\n     \u2026ring.voip_text)\n        )"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ln3/k/a/s;

    invoke-direct {v3}, Ln3/k/a/s;-><init>()V

    .line 11
    invoke-virtual {v3, v1}, Ln3/k/a/s;->l(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/d/y/c/e;

    .line 13
    iget-wide v8, v7, Le/a/d/y/c/e;->f:J

    .line 14
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-ne v8, v2, :cond_1

    .line 15
    iget-object v8, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 16
    iget-wide v9, v7, Le/a/d/y/c/e;->f:J

    .line 17
    invoke-static {v8, v9, v10}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    if-nez v8, :cond_2

    .line 18
    iget-object v8, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 19
    iget-wide v9, v7, Le/a/d/y/c/e;->f:J

    .line 20
    invoke-static {v8, v9, v10}, Le/a/b0/q/m;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    :goto_2
    const-string v9, "when (DateUtils.isToday(\u2026.timestamp)\n            }"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v9, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 22
    sget v10, Lcom/truecaller/voip/R$string;->voip_notification_missed_grouped_time_and_caller:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v8, v11, v6

    .line 23
    iget-object v7, v7, Le/a/d/y/c/e;->a:Ljava/lang/String;

    aput-object v7, v11, v2

    .line 24
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v3, v7}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 27
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le p2, v4, :cond_4

    .line 28
    iget-object v4, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v5, Lcom/truecaller/voip/R$string;->voip_notification_missed_grouped_more:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 29
    :cond_4
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/y/c/e;

    .line 30
    iget-wide p1, p1, Le/a/d/y/c/e;->f:J

    .line 31
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->n()Ln3/k/a/q;

    move-result-object v4

    .line 32
    invoke-virtual {v4, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 33
    invoke-virtual {v4, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 34
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    const/4 v1, 0x0

    const-string v5, "support"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/d/c0/j1;->m()Landroid/app/PendingIntent;

    move-result-object v0

    .line 35
    iput-object v0, v4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 36
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Le/a/d/c0/j1;->o(J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 37
    iget-object p2, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 38
    iput-boolean v2, v4, Ln3/k/a/q;->m:Z

    .line 39
    invoke-virtual {v4, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 40
    invoke-virtual {v4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "createNotificationBuilde\u2026yle)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->o()Le/a/h4/n;

    move-result-object p2

    sget v0, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-interface {p2, v0, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    .line 42
    :cond_5
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_6
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->o()Le/a/h4/n;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-interface {v0, v1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->a:Le/a/d/y/c/g;

    const-string v1, "presenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v3, v0

    check-cast v3, Le/a/u2/a/b;

    .line 5
    iput-object p0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Le/a/d/y/c/j;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :try_start_0
    invoke-virtual {v0}, Le/a/u2/a/a;->getCoroutineContext()Ls1/w/f;

    move-result-object v3

    new-instance v4, Le/a/d/y/c/i;

    invoke-direct {v4, v0, v2}, Le/a/d/y/c/i;-><init>(Le/a/d/y/c/j;Ls1/w/d;)V

    invoke-static {v3, v4}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ListenableWorker$a;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    :goto_0
    const-string v3, "try {\n        TLog.d(\"Ch\u2026   Result.success()\n    }"

    .line 10
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->a:Le/a/d/y/c/g;

    if-eqz v3, :cond_1

    check-cast v3, Le/a/u2/a/a;

    invoke-virtual {v3}, Le/a/u2/a/a;->c()V

    return-object v0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public g(Le/a/d/y/c/e;Landroid/graphics/Bitmap;)V
    .locals 11

    const-string v0, "missedCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const-string v3, "support"

    const/high16 v4, 0xc000000

    const/4 v5, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v6, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 3
    sget v7, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back_legacy:I

    .line 4
    iget-object v8, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz v8, :cond_0

    .line 5
    iget-object v9, p1, Le/a/d/y/c/e;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v8, v6, v9}, Le/a/d/c0/j1;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 7
    invoke-static {v6, v7, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    iget-object v6, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 10
    iget-object v7, p1, Le/a/d/y/c/e;->b:Ljava/lang/String;

    .line 11
    invoke-static {v6, v7}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.truecaller.voip.incoming.EXTRA_FROM_MISSED_CALL"

    .line 12
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    iget-object v7, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 14
    sget v8, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back:I

    const-string v9, "$this$getForegroundServicePendingIntent"

    .line 15
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "intent"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1a

    if-lt v0, v9, :cond_2

    .line 16
    invoke-static {v7, v8, v6, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "PendingIntent.getForegro\u2026questCode, intent, flags)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v7, v8, v6, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "PendingIntent.getService\u2026questCode, intent, flags)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-lt v0, v1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 19
    sget v1, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_message:I

    .line 20
    iget-object v7, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz v7, :cond_3

    .line 21
    iget-object v8, p1, Le/a/d/y/c/e;->b:Ljava/lang/String;

    .line 22
    invoke-interface {v7, v0, v8}, Le/a/d/c0/j1;->v(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 23
    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 26
    sget v1, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_message:I

    .line 27
    iget-object v7, p1, Le/a/d/y/c/e;->b:Ljava/lang/String;

    const-string v8, "context"

    .line 28
    invoke-static {v0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "number"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.truecaller.voip.ACTION_MESSAGE"

    .line 30
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.truecaller.voip.extra.EXTRA_NUMBER"

    .line 31
    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "Intent(context, MissedVo\u2026tra(EXTRA_NUMBER, number)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->n()Ln3/k/a/q;

    move-result-object v1

    .line 34
    iget-wide v7, p1, Le/a/d/y/c/e;->f:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_5

    .line 35
    iget-object v4, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v7, v4, Landroid/app/Notification;->when:J

    .line 36
    :cond_5
    sget v4, Lcom/truecaller/voip/R$drawable;->ic_notification_call:I

    .line 37
    iget-object v7, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v8, Lcom/truecaller/voip/R$string;->voip_button_notification_call_back:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-virtual {v1, v4, v7, v6}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 39
    sget v4, Lcom/truecaller/voip/R$drawable;->ic_sms:I

    .line 40
    iget-object v6, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v7, Lcom/truecaller/voip/R$string;->voip_button_notification_message:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-virtual {v1, v4, v6, v0}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    if-eqz p2, :cond_6

    .line 42
    invoke-virtual {v1, p2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 43
    :cond_6
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 44
    sget v0, Lcom/truecaller/voip/R$plurals;->voip_notification_missed_grouped_title:I

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 45
    iget-object v7, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v8, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 46
    invoke-virtual {p2, v0, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-virtual {v1, p2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 48
    iget-object p2, p1, Le/a/d/y/c/e;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 50
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Le/a/d/c0/j1;->m()Landroid/app/PendingIntent;

    move-result-object p2

    .line 51
    iput-object p2, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 52
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz p2, :cond_7

    .line 53
    iget-wide v2, p1, Le/a/d/y/c/e;->f:J

    .line 54
    invoke-interface {p2, v2, v3}, Le/a/d/c0/j1;->o(J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 55
    iget-object p2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 56
    invoke-virtual {v1, p1, v5}, Ln3/k/a/q;->p(IZ)V

    .line 57
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->o()Le/a/h4/n;

    move-result-object p2

    sget v0, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-interface {p2, v0, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    .line 59
    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_8
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final n()Ln3/k/a/q;
    .locals 4

    .line 1
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->o()Le/a/h4/n;

    move-result-object v2

    const-string v3, "missed_calls"

    invoke-interface {v2, v3}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 3
    iget-object v1, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    sget v2, Lcom/truecaller/voip/R$color;->truecaller_blue_all_themes:I

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 6
    iput v1, v0, Ln3/k/a/q;->D:I

    .line 7
    sget v1, Lcom/truecaller/voip/R$drawable;->ic_notification_call_missed:I

    .line 8
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    .line 9
    invoke-virtual {v0, v2, v1}, Ln3/k/a/q;->p(IZ)V

    const-string v1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()Le/a/h4/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStopped()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->a:Le/a/d/y/c/g;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
