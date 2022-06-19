.class public final Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;
.super Le/a/f/z/o0/b/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/o0/b/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ#\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Le/a/f/z/o0/b/b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "a",
        "()V",
        "d",
        "Landroid/content/Context;",
        "<init>",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public c:Le/a/f/z/o0/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f/z/o0/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2}, Le/a/f/z/o0/b/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->d:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 3
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "ToggleRecord"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p1, Le/a/f/z/o0/b/c;->d:Lcom/truecaller/callrecording/CallRecordingManager;

    iget-object p1, p1, Le/a/f/z/o0/b/c;->b:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->INCALLUI_NOTIFICATION:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {p2, p1, v2}, Lcom/truecaller/callrecording/CallRecordingManager;->r(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    const-string p2, "ToggleMute"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_5

    .line 9
    iget-object p2, p1, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/f/z/n0/a;

    if-eqz p2, :cond_3

    .line 10
    iget-boolean v3, p2, Le/a/f/z/n0/a;->d:Z

    .line 11
    :cond_3
    iget-object p2, p1, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    xor-int/lit8 v2, v3, 0x1

    invoke-interface {p2, v2}, Le/a/f/y/v;->i0(Z)V

    if-eqz v3, :cond_4

    .line 12
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->UNMUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto/16 :goto_2

    .line 13
    :cond_4
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->MUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto/16 :goto_2

    .line 14
    :cond_5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    const-string p2, "ToggleSpeaker"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_9

    .line 16
    iget-object p2, p1, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/f/z/n0/a;

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, p2, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    goto :goto_0

    :cond_6
    move-object p2, v1

    .line 18
    :goto_0
    sget-object v4, Lcom/truecaller/incallui/utils/audio/AudioRoute;->SPEAKER:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    if-ne p2, v4, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    if-eqz v2, :cond_8

    .line 19
    iget-object p2, p1, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->P1()V

    .line 20
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->SPEAKER_OFF_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 21
    :cond_8
    iget-object p2, p1, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->A0()V

    .line 22
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->SPEAKER_ON_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 23
    :cond_9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :sswitch_3
    const-string p2, "Decline"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_b

    .line 25
    iget-object p2, p1, Le/a/f/z/o0/b/c;->b:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->a()V

    .line 26
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/z/o0/b/b;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Le/a/f/z/o0/b/b;->a()V

    .line 27
    :cond_a
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->DECLINE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 28
    :cond_b
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :sswitch_4
    const-string p2, "HangUp"

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_d

    .line 30
    iget-object p2, p1, Le/a/f/z/o0/b/c;->b:Le/a/f/y/c;

    invoke-static {p2, v3, v2, v1}, Le/a/m0/a1$k;->n0(Le/a/f/y/c;ZILjava/lang/Object;)V

    .line 31
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/z/o0/b/b;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Le/a/f/z/o0/b/b;->a()V

    .line 32
    :cond_c
    iget-object p1, p1, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    sget-object p2, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->HANGUP_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, p2}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 33
    :cond_d
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->c:Le/a/f/z/o0/b/c;

    if-eqz p1, :cond_f

    .line 35
    iput-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;->d:Landroid/content/Context;

    return-void

    .line 37
    :cond_f
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f989d33 -> :sswitch_4
        -0x40d9052a -> :sswitch_3
        0x3ecbc5eb -> :sswitch_2
        0x43ff93ad -> :sswitch_1
        0x4a0898e5 -> :sswitch_0
    .end sparse-switch
.end method
