.class public final Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Le/a/e3/k/p;",
        "a",
        "Le/a/e3/k/p;",
        "getCallSilenceHelper",
        "()Le/a/e3/k/p;",
        "setCallSilenceHelper",
        "(Le/a/e3/k/p;)V",
        "callSilenceHelper",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "<init>",
        "()V",
        "call-alert_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/e3/k/p;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Le/a/n/g0;->s(Landroid/content/Context;)Le/a/e3/h/d;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/e3/h/d;->a(Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "extraCallSilenceTag"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Le/a/p5/s0/g;->Y(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    sget v1, Lcom/truecaller/call_alert/R$id;->visible_push_caller_id_notification_id:I

    invoke-virtual {p1, p2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;->a:Le/a/e3/k/p;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p1, p2}, Le/a/e3/k/p;->b(Ljava/lang/String;)V

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;->b:Le/a/q2/a;

    if-eqz p1, :cond_4

    .line 7
    new-instance p2, Le/a/e3/j/a;

    const-string v0, "silence"

    invoke-direct {p2, v0}, Le/a/e3/j/a;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, p2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void

    :cond_4
    const-string p1, "analytics"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
