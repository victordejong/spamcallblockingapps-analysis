.class public final Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.truecaller.insights.reminders.receiver.BillReminderReceiver$onReceive$1"
    f = "BillReminderReceiver.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

.field public final synthetic g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iput-object p2, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->g:Landroid/content/Intent;

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

    new-instance p1, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;

    iget-object v0, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iget-object v1, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->g:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;

    iget-object v0, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iget-object v1, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->g:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

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
    iget-object p1, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->g:Landroid/content/Intent;

    const-string v2, "extras_bill_ids"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "intent.getStringExtra(EX\u2026DS) ?: return@runBlocking"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    .line 6
    iget-object v2, v2, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->f:Le/a/c/b/j;

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v2}, Le/a/c/b/j;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->f:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iput v3, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;->e:I

    .line 9
    iget-object v3, v2, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->g:Ls1/w/f;

    if-eqz v3, :cond_3

    new-instance v5, Le/a/c/v/i/a;

    invoke-direct {v5, v2, p1, v4}, Le/a/c/v/i/a;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v3, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_3
    const-string p1, "coroutineContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v4

    :cond_4
    :try_start_2
    const-string p1, "insightsStatusProvider"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v4

    .line 11
    :goto_1
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 12
    invoke-virtual {v1, p1, v4}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v0
.end method
