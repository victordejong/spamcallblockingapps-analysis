.class public Lcom/truecaller/presence/PresenceSchedulerReceiver;
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
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.truecaller.action.ACTION_SET_LAST_SEEN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "com.truecaller.action.ACTION_UPDATE_PRESENCE_FOR_CURRENT_USER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-interface {p1}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    sget-object p2, Lcom/truecaller/presence/AvailabilityTrigger;->RECURRING_TASK:Lcom/truecaller/presence/AvailabilityTrigger;

    invoke-interface {p1, p2, v2}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-interface {p1}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    invoke-interface {p1}, Le/a/l4/h;->c()V

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-interface {p1}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    sget-object p2, Lcom/truecaller/presence/AvailabilityTrigger;->RECURRING_TASK:Lcom/truecaller/presence/AvailabilityTrigger;

    invoke-interface {p1, p2, v3}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x8174f72 -> :sswitch_2
        0xb58686e -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
