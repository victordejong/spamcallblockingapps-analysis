.class public final Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.truecaller.call_alert.receive_notification.CallAlertDismissBroadcastReceiver$onReceive$1"
    f = "CallAlertDismissBroadcastReceiver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->f:Landroid/content/Intent;

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

    new-instance p1, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;

    iget-object v0, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->f:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;-><init>(Landroid/content/Context;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->f:Landroid/content/Intent;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Le/a/n/g0;->s(Landroid/content/Context;)Le/a/e3/h/d;

    move-result-object p2

    invoke-interface {p2}, Le/a/e3/h/d;->s()Le/a/r2/f;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    if-eqz p2, :cond_2

    .line 5
    invoke-static {}, Le/a/l5/a/r;->a()Le/a/l5/a/r$b;

    move-result-object v0

    const-string v2, "user_dismissed"

    .line 6
    invoke-virtual {v0, v2}, Le/a/l5/a/r$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "extraDismissShouldLogCallContext"

    .line 7
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "extraDismissIncomingCallContext"

    .line 10
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/r$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    .line 12
    :cond_1
    invoke-virtual {v0}, Le/a/l5/a/r$b;->a()Le/a/l5/a/r;

    move-result-object v0

    .line 13
    invoke-interface {p2, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_2
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->e:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-static {p1}, Le/a/n/g0;->s(Landroid/content/Context;)Le/a/e3/h/d;

    move-result-object p1

    invoke-interface {p1}, Le/a/e3/h/d;->s()Le/a/r2/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Le/a/l5/a/r;->a()Le/a/l5/a/r$b;

    move-result-object v0

    const-string v1, "user_dismissed"

    .line 4
    invoke-virtual {v0, v1}, Le/a/l5/a/r$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    .line 5
    iget-object v1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->f:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "extraDismissShouldLogCallContext"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a;->f:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v3, "extraDismissIncomingCallContext"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/r$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    .line 10
    :cond_1
    invoke-virtual {v0}, Le/a/l5/a/r$b;->a()Le/a/l5/a/r;

    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 12
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
