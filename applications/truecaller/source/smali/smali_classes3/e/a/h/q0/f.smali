.class public final Le/a/h/q0/f;
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
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$handleIntent$2"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {
        0x81,
        0x86,
        0x88,
        0x89,
        0x8c,
        0x8d,
        0x8f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

.field public final synthetic i:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iput-object p2, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

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

    new-instance p1, Le/a/h/q0/f;

    iget-object v0, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/f;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/q0/f;

    iget-object v0, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/f;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/q0/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/h/q0/f;->g:I

    const/4 v3, 0x0

    const-string v4, "uiContext"

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget-object v2, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v5, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v2, "it"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_13

    const-string p1, "intent.action?.takeUnles\u2026) } ?: return@withContext"

    invoke-static {v5, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    iget-object p1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    const-string v6, "reminderBundle"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v7, "reminder"

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    goto :goto_1

    :cond_1
    move-object p1, v3

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/h/q0/f;->i:Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    .line 10
    :goto_1
    iput-object p1, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 11
    iget-object v6, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_12

    iget-wide v6, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_4

    goto/16 :goto_b

    .line 12
    :cond_4
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 13
    iget-object p1, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    if-eqz p1, :cond_11

    .line 14
    new-instance v6, Le/a/h/q0/f$a;

    invoke-direct {v6, p0, v2, v3}, Le/a/h/q0/f$a;-><init>(Le/a/h/q0/f;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p0, Le/a/h/q0/f;->g:I

    invoke-static {p1, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 15
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result p1

    const-string v6, "asyncContext"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    const-string p1, "com.truecaller.intent.action.MISSED_CALL_REMINDER_DISMISSED"

    .line 16
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iput-object v3, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, p0, Le/a/h/q0/f;->g:I

    .line 17
    iget-object v4, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b:Ls1/w/f;

    if-eqz v4, :cond_7

    new-instance v5, Le/a/h/q0/e;

    invoke-direct {v5, p1, v2, v3}, Le/a/h/q0/e;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-ne p1, v1, :cond_10

    return-object v1

    :cond_7
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :sswitch_1
    const-string p1, "com.truecaller.intent.action.MISSED_CALL_REMINDER_CALLED"

    .line 18
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 19
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iput-object v3, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Le/a/h/q0/f;->g:I

    .line 20
    iget-object v5, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    if-eqz v5, :cond_a

    new-instance v4, Le/a/h/q0/d;

    invoke-direct {v4, p1, v2, v3}, Le/a/h/q0/d;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    invoke-static {v5, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, v0

    :goto_5
    if-ne p1, v1, :cond_9

    return-object v1

    .line 21
    :cond_9
    :goto_6
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    const/4 v2, 0x6

    iput v2, p0, Le/a/h/q0/f;->g:I

    invoke-virtual {p1, p0}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    .line 22
    :cond_a
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :sswitch_2
    const-string p1, "com.truecaller.intent.action.MISSED_CALL_REMINDER_SNOOZED"

    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 24
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iput-object v3, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p0, Le/a/h/q0/f;->g:I

    .line 25
    iget-object v2, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    if-eqz v2, :cond_d

    new-instance v4, Le/a/h/q0/h;

    invoke-direct {v4, p1, v3}, Le/a/h/q0/h;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Ls1/w/d;)V

    invoke-static {v2, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_7

    :cond_b
    move-object p1, v0

    :goto_7
    if-ne p1, v1, :cond_c

    return-object v1

    .line 26
    :cond_c
    :goto_8
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    const/4 v2, 0x4

    iput v2, p0, Le/a/h/q0/f;->g:I

    invoke-virtual {p1, p0}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    .line 27
    :cond_d
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :sswitch_3
    const-string p1, "com.truecaller.intent.action.MISSED_CALL_POST_REMINDER"

    .line 28
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iput-object v3, p0, Le/a/h/q0/f;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/q0/f;->f:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Le/a/h/q0/f;->g:I

    .line 29
    iget-object v4, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b:Ls1/w/f;

    if-eqz v4, :cond_f

    new-instance v5, Le/a/h/q0/g;

    invoke-direct {v5, p1, v2, v3}, Le/a/h/q0/g;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    goto :goto_9

    :cond_e
    move-object p1, v0

    :goto_9
    if-ne p1, v1, :cond_10

    return-object v1

    :cond_f
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_10
    :goto_a
    return-object v0

    .line 30
    :cond_11
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_12
    :goto_b
    iget-object p1, p0, Le/a/h/q0/f;->h:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->d()Lo3/a;

    move-result-object p1

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/q0/a;

    invoke-interface {p1}, Le/a/h/q0/a;->d()V

    :cond_13
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4d90743a -> :sswitch_3
        -0x42090a64 -> :sswitch_2
        0xb22d93f -> :sswitch_1
        0x33ede787 -> :sswitch_0
    .end sparse-switch
.end method
