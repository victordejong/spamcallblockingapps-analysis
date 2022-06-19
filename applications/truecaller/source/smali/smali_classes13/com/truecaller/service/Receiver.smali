.class public Lcom/truecaller/service/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    :sswitch_3
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "Receiver.handleNewOutgoingCall"

    aput-object v2, v0, v5

    .line 4
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->RCVR_PHONESTATEHANDLER_OUTGOING:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->c0()Le/a/d0/b/h;

    move-result-object v1

    invoke-interface {v1}, Le/a/d0/b/h;->b()Le/a/d0/b/j;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Le/a/d0/b/j;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    goto :goto_1

    .line 9
    :pswitch_1
    invoke-static {p1}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object p1

    .line 11
    invoke-interface {p1, v6}, Le/a/h4/n;->k(Z)Z

    .line 12
    invoke-interface {p1}, Le/a/h4/n;->i()V

    .line 13
    new-instance p1, Le/a/j4/b/a/c$a;

    invoke-direct {p1, v1}, Le/a/j4/b/a/c$a;-><init>(Le/a/b0/g/a;)V

    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2, v6}, Le/a/e/a2;->q(Ljava/lang/Runnable;Lq3/a/g0;I)Lq3/a/p1;

    goto :goto_1

    :pswitch_2
    const-string v0, "notificationType"

    .line 15
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_4

    .line 16
    new-instance p2, Le/a/j4/b/a/g;

    invoke-direct {p2, p1}, Le/a/j4/b/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Le/a/j4/b/a/g;->c()V

    goto :goto_1

    .line 17
    :cond_4
    new-instance v0, Le/a/j4/b/a/g;

    invoke-direct {v0, p1}, Le/a/j4/b/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Le/a/j4/b/a/g;->f(I)V

    goto :goto_1

    :pswitch_3
    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "Receiver.handlePhoneStateChanged"

    aput-object v2, v0, v5

    .line 18
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v0

    .line 20
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->RCVR_PHONESTATEHANDLER_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->c0()Le/a/d0/b/h;

    move-result-object v1

    invoke-interface {v1}, Le/a/d0/b/h;->b()Le/a/d0/b/j;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Le/a/d0/b/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f0a83a5 -> :sswitch_3
        -0x4dc4e6e4 -> :sswitch_2
        -0x122164c -> :sswitch_1
        0x714f24ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
