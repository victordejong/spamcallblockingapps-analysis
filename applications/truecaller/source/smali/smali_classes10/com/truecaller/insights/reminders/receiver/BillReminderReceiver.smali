.class public final Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;
.super Le/a/c/v/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008C\u0010\u001aJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R(\u0010\u001b\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0013\u0010\u0014\u0012\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006D"
    }
    d2 = {
        "Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "",
        "Lcom/truecaller/insights/models/InsightsReminder;",
        "reminders",
        "a",
        "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;",
        "reminder",
        "",
        "c",
        "(Lcom/truecaller/insights/models/InsightsReminder;Ls1/w/d;)Ljava/lang/Object;",
        "Ls1/w/f;",
        "g",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "setCoroutineContext",
        "(Ls1/w/f;)V",
        "getCoroutineContext$annotations",
        "()V",
        "coroutineContext",
        "Le/a/c/v/a;",
        "Le/a/c/v/a;",
        "b",
        "()Le/a/c/v/a;",
        "setReminderManager",
        "(Le/a/c/v/a;)V",
        "reminderManager",
        "Le/a/c/i/l/f/a;",
        "d",
        "Le/a/c/i/l/f/a;",
        "getNotificationManager",
        "()Le/a/c/i/l/f/a;",
        "setNotificationManager",
        "(Le/a/c/i/l/f/a;)V",
        "notificationManager",
        "Le/a/u3/g;",
        "h",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Le/a/c/b/j;",
        "f",
        "Le/a/c/b/j;",
        "getInsightsStatusProvider",
        "()Le/a/c/b/j;",
        "setInsightsStatusProvider",
        "(Le/a/c/b/j;)V",
        "insightsStatusProvider",
        "Le/a/c/a0/e;",
        "e",
        "Le/a/c/a0/e;",
        "getActionDataSource",
        "()Le/a/c/a0/e;",
        "setActionDataSource",
        "(Le/a/c/a0/e;)V",
        "actionDataSource",
        "<init>",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public c:Le/a/c/v/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/c/i/l/f/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/c/a0/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/c/b/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/v/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;

    iget v1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->j:Ljava/lang/Object;

    iget-object v2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->g:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p0

    move-object v2, p1

    move-object v4, p2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/insights/models/InsightsReminder;

    .line 6
    iput-object v5, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->g:Ljava/lang/Object;

    iput-object v4, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->j:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$a;->e:I

    invoke-virtual {v5, p2, v0}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->c(Lcom/truecaller/insights/models/InsightsReminder;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_5
    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method public final b()Le/a/c/v/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->c:Le/a/c/v/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reminderManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Lcom/truecaller/insights/models/InsightsReminder;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;

    iget v1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 5
    iget-object v2, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->e:Le/a/c/a0/e;

    if-eqz v2, :cond_6

    sget-object v5, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    iput v4, v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$b;->e:I

    check-cast v2, Le/a/c/a0/f;

    invoke-virtual {v2, p1, p2, v5, v0}, Le/a/c/a0/f;->c(JLcom/truecaller/insights/models/DomainOrigin;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Le/a/c/r/j/b;

    if-eqz p2, :cond_5

    .line 6
    iget p1, p2, Le/a/c/r/j/b;->d:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    .line 7
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v3

    .line 9
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_6
    const-string p1, "actionDataSource"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_7
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Le/a/c/v/i/c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    instance-of v1, p1, Le/a/b0/g/a;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 3
    check-cast p1, Le/a/b0/g/a;

    invoke-virtual {p1}, Le/a/b0/g/a;->W()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->h:Le/a/u3/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/a/u3/g;->Z()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;

    invoke-direct {p1, p0, p2, v0}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver$c;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Landroid/content/Intent;Ls1/w/d;)V

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v0}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p1, "featuresRegistry"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
