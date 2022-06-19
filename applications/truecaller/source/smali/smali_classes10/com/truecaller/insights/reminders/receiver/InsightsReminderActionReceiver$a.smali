.class public final Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver$onReceive$1"
    f = "InsightsReminderActionReceiver.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

.field public final synthetic g:Landroid/content/Intent;

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iput-object p2, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->g:Landroid/content/Intent;

    iput-object p3, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->h:Landroid/content/Context;

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

    new-instance p1, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;

    iget-object v0, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iget-object v1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->h:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;

    iget-object v0, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iget-object v1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->h:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->g:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x3d884f05

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "com.truecaller.insights.reminders.action.concrete"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->g:Landroid/content/Intent;

    iput v3, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;->e:I

    .line 6
    iget-object v3, p1, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;->d:Ls1/w/f;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    new-instance v6, Le/a/c/v/i/e;

    invoke-direct {v6, p1, v4, v2, v5}, Le/a/c/v/i/e;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v3, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_5
    const-string p1, "coroutineContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :cond_6
    :goto_1
    return-object v0
.end method
