.class public final Le/a/c/v/i/e;
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
    c = "com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver$handleConcreteAction$2"
    f = "InsightsReminderActionReceiver.kt"
    l = {
        0x4a,
        0x4b
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

    iput-object p1, p0, Le/a/c/v/i/e;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iput-object p2, p0, Le/a/c/v/i/e;->g:Landroid/content/Intent;

    iput-object p3, p0, Le/a/c/v/i/e;->h:Landroid/content/Context;

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

    new-instance p1, Le/a/c/v/i/e;

    iget-object v0, p0, Le/a/c/v/i/e;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iget-object v1, p0, Le/a/c/v/i/e;->g:Landroid/content/Intent;

    iget-object v2, p0, Le/a/c/v/i/e;->h:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/v/i/e;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/v/i/e;

    iget-object v0, p0, Le/a/c/v/i/e;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    iget-object v1, p0, Le/a/c/v/i/e;->g:Landroid/content/Intent;

    iget-object v2, p0, Le/a/c/v/i/e;->h:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/v/i/e;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/v/i/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Le/a/c/v/h/a$b;->a:Le/a/c/v/h/a$b;

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, p0, Le/a/c/v/i/e;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/v/i/e;->g:Landroid/content/Intent;

    invoke-static {p1}, Le/a/c/p/a;->c0(Landroid/content/Intent;)Le/a/c/v/i/g;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5
    iget-object v3, p0, Le/a/c/v/i/e;->h:Landroid/content/Context;

    invoke-static {v3}, Le/a/p5/s0/g;->Y(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 6
    iget v6, p1, Le/a/c/v/i/g;->d:I

    .line 7
    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 8
    iget-object v3, p0, Le/a/c/v/i/e;->g:Landroid/content/Intent;

    const-string v6, "com.truecaller.insights.reminders.notifications.EXTRAS.CONCRETE_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    sget-object v6, Le/a/c/v/h/a$a;->a:Le/a/c/v/h/a$a;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x714ce2af

    if-eq v7, v8, :cond_5

    const v8, 0x33f9312c

    if-eq v7, v8, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "com.truecaller.insights.reminders.notifications.DISMISS"

    .line 10
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_5
    const-string v7, "com.truecaller.insights.reminders.notifications.STOP_REMINDER"

    .line 11
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v0

    goto :goto_3

    .line 12
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Concrete Action Type"

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_2
    move-object v3, v6

    .line 13
    :goto_3
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "reminderManager"

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    iget-object v0, p0, Le/a/c/v/i/e;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    .line 14
    iget-object v0, v0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;->c:Le/a/c/v/a;

    if-eqz v0, :cond_7

    .line 15
    iget-object v3, p1, Le/a/c/v/i/g;->b:Ljava/lang/String;

    .line 16
    iput v5, p0, Le/a/c/v/i/e;->e:I

    invoke-interface {v0, v3, p1, p0}, Le/a/c/v/a;->f(Ljava/lang/String;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    .line 17
    :cond_7
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 18
    :cond_8
    invoke-static {v3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Le/a/c/v/i/e;->f:Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    .line 19
    iget-object v0, v0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;->c:Le/a/c/v/a;

    if-eqz v0, :cond_a

    .line 20
    iget-object v3, p1, Le/a/c/v/i/g;->b:Ljava/lang/String;

    .line 21
    iput v4, p0, Le/a/c/v/i/e;->e:I

    invoke-interface {v0, v3, p1, p0}, Le/a/c/v/a;->d(Ljava/lang/String;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    :cond_9
    :goto_4
    return-object v1

    .line 22
    :cond_a
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 23
    :cond_b
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_c
    return-object v1
.end method
