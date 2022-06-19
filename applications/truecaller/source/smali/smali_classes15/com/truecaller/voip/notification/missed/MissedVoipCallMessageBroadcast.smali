.class public final Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;
.super Le/a/d/y/c/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Le/a/d/c0/j1;",
        "c",
        "Le/a/d/c0/j1;",
        "getSupport",
        "()Le/a/d/c0/j1;",
        "setSupport",
        "(Le/a/d/c0/j1;)V",
        "support",
        "<init>",
        "()V",
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
.field public c:Le/a/d/c0/j1;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d/y/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2}, Le/a/d/y/c/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Le/a/p5/s0/g;->Y(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2
    invoke-static {p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x516e237c

    const-string v2, "com.truecaller.voip.extra.EXTRA_NUMBER"

    const-string v3, "support"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_6

    const v1, -0xa228d1f

    if-eq v0, v1, :cond_4

    const v1, 0x3f042424

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "com.truecaller.voip.ACTION_MESSAGE"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 6
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;->c:Le/a/d/c0/j1;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1, v4}, Le/a/d/c0/j1;->e(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string v0, "com.truecaller.voip.ACTION_GROUP_CALL"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "com.truecaller.voip.extra.EXTRA_GROUP_NUMBERS"

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 9
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;->c:Le/a/d/c0/j1;

    if-eqz p2, :cond_5

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsContext;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Le/a/d/c0/j1;->w(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string v0, "com.truecaller.voip.ACTION_ACTION_CALL"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 12
    iget-object p2, p0, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;->c:Le/a/d/c0/j1;

    if-eqz p2, :cond_7

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsContext;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Le/a/d/c0/j1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_0
    return-void
.end method
