.class public final Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/a/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0007\u0012\u0008\u0008\u0001\u0010&\u001a\u00020#\u0012\u0008\u0008\u0001\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u000f\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;",
        "Landroidx/work/Worker;",
        "Le/a/d/y/a/e;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/d/y/a/b;",
        "blockedCall",
        "Ls1/s;",
        "e",
        "(Le/a/d/y/a/b;)V",
        "",
        "blockedCallsToShow",
        "",
        "totalBlockedCallsCount",
        "h",
        "(Ljava/util/List;I)V",
        "i",
        "()V",
        "onStopped",
        "Ln3/k/a/q;",
        "n",
        "()Ln3/k/a/q;",
        "Le/a/d/y/a/c;",
        "a",
        "Le/a/d/y/a/c;",
        "getPresenter",
        "()Le/a/d/y/a/c;",
        "setPresenter",
        "(Le/a/d/y/a/c;)V",
        "presenter",
        "Le/a/h4/n;",
        "o",
        "()Le/a/h4/n;",
        "notificationManager",
        "Landroid/content/Context;",
        "c",
        "Landroid/content/Context;",
        "context",
        "Le/a/d/c0/j1;",
        "b",
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
.field public a:Le/a/d/y/a/c;
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

    iput-object p1, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

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
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->a:Le/a/d/y/a/c;

    const-string v1, "presenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, v0

    check-cast v3, Le/a/u2/a/b;

    .line 5
    iput-object p0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Le/a/d/y/a/g;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :try_start_0
    new-instance v1, Le/a/d/y/a/f;

    invoke-direct {v1, v0, v2}, Le/a/d/y/a/f;-><init>(Le/a/d/y/a/g;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

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
    const-string v1, "try {\n        runBlockin\u2026   Result.success()\n    }"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public e(Le/a/d/y/a/b;)V
    .locals 8

    const-string v0, "blockedCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    sget v1, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_single_content_v2:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    iget-object v4, p1, Le/a/d/y/a/b;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ent_v2, blockedCall.name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->n()Ln3/k/a/q;

    move-result-object v1

    .line 5
    iget-wide v3, p1, Le/a/d/y/a/b;->b:J

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 6
    iget-object v6, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v3, v6, Landroid/app/Notification;->when:J

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_single_title_v2:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v6, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 8
    invoke-virtual {v1, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/truecaller/voip/R$drawable;->ic_notification_call_blocked_standard:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 10
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->b:Le/a/d/c0/j1;

    const-string v2, "support"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/d/c0/j1;->m()Landroid/app/PendingIntent;

    move-result-object v0

    .line 11
    iput-object v0, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 12
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz v0, :cond_1

    .line 13
    iget-wide v2, p1, Le/a/d/y/a/b;->b:J

    .line 14
    invoke-interface {v0, v2, v3}, Le/a/d/c0/j1;->o(J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 15
    iget-object v0, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 16
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "getNotificationBuilder()\u2026mp))\n            .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->o()Le/a/h4/n;

    move-result-object v0

    .line 18
    sget v1, Lcom/truecaller/voip/R$id;->voip_blocked_call_notification:I

    .line 19
    invoke-interface {v0, v1, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    .line 20
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public h(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/d/y/a/b;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "blockedCallsToShow"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    .line 2
    sget v1, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_grouped_content_v2:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    sget v4, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(\n     \u2026ount.toString()\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_grouped_summary:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const-string v1, "if (totalBlockedCallsCou\u2026w.size)\n        } else \"\""

    .line 8
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ln3/k/a/s;

    invoke-direct {v1}, Ln3/k/a/s;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Ln3/k/a/s;->l(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 11
    invoke-virtual {v1, p2}, Ln3/k/a/s;->m(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/y/a/b;

    .line 13
    iget-wide v7, v3, Le/a/d/y/a/b;->b:J

    .line 14
    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 15
    iget-object v4, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    .line 16
    iget-wide v7, v3, Le/a/d/y/a/b;->b:J

    .line 17
    invoke-static {v4, v7, v8}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    .line 18
    iget-object v4, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    .line 19
    iget-wide v7, v3, Le/a/d/y/a/b;->b:J

    .line 20
    invoke-static {v4, v7, v8}, Le/a/b0/q/m;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v7, "when (DateUtils.isToday(\u2026.timestamp)\n            }"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v7, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    .line 22
    sget v8, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_grouped_caller_v2:I

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v4, v9, v5

    .line 23
    iget-object v3, v3, Le/a/d/y/a/b;->a:Ljava/lang/String;

    aput-object v3, v9, v6

    .line 24
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->n()Ln3/k/a/q;

    move-result-object p2

    .line 28
    iget-object v2, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/voip/R$string;->voip_notification_blocked_calls_grouped_title_v2:I

    new-array v4, v6, [Ljava/lang/Object;

    sget v7, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 29
    invoke-virtual {p2, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 30
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->b:Le/a/d/c0/j1;

    const-string v2, "support"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/d/c0/j1;->m()Landroid/app/PendingIntent;

    move-result-object v0

    .line 31
    iput-object v0, p2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 32
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->b:Le/a/d/c0/j1;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/y/a/b;

    .line 33
    iget-wide v2, p1, Le/a/d/y/a/b;->b:J

    .line 34
    invoke-interface {v0, v2, v3}, Le/a/d/c0/j1;->o(J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 35
    iget-object v0, p2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 36
    iput-boolean v6, p2, Ln3/k/a/q;->m:Z

    .line 37
    invoke-virtual {p2, v1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 38
    invoke-virtual {p2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "getNotificationBuilder()\u2026yle)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->o()Le/a/h4/n;

    move-result-object p2

    .line 40
    sget v0, Lcom/truecaller/voip/R$id;->voip_blocked_call_notification:I

    .line 41
    invoke-interface {p2, v0, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    .line 42
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_5
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->o()Le/a/h4/n;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/voip/R$id;->voip_blocked_call_notification:I

    .line 3
    invoke-interface {v0, v1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public final n()Ln3/k/a/q;
    .locals 4

    .line 1
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->o()Le/a/h4/n;

    move-result-object v2

    const-string v3, "blocked_calls"

    invoke-interface {v2, v3}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 3
    iget-object v1, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

    sget v2, Lcom/truecaller/voip/R$color;->truecaller_blue_all_themes:I

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 6
    iput v1, v0, Ln3/k/a/q;->D:I

    .line 7
    sget v1, Lcom/truecaller/voip/R$drawable;->ic_notification_blocked_call:I

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
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->c:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->a:Le/a/d/y/a/c;

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
