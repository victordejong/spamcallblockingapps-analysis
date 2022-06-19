.class public Lcom/truecaller/callerid/callstate/CallStateService$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/callerid/callstate/CallStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callerid/callstate/CallStateService;


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/callstate/CallStateService;Lcom/truecaller/callerid/callstate/CallStateService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callerid/callstate/CallStateService$b;->a:Lcom/truecaller/callerid/callstate/CallStateService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 2
    invoke-static {p2}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/callerid/callstate/CallStateService$b;->a:Lcom/truecaller/callerid/callstate/CallStateService;

    .line 4
    iget-boolean v1, v0, Lcom/truecaller/callerid/callstate/CallStateService;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/truecaller/callerid/callstate/CallStateService;->b:Le/a/p5/a0;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_CALL_LOG"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/truecaller/callerid/callstate/CallStateService$b;->a:Lcom/truecaller/callerid/callstate/CallStateService;

    .line 7
    iput-boolean v2, v0, Lcom/truecaller/callerid/callstate/CallStateService;->d:Z

    const/4 v1, 0x0

    const-string v3, "phone"

    .line 8
    invoke-virtual {v0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 9
    iget-object v0, v0, Lcom/truecaller/callerid/callstate/CallStateService;->a:Lcom/truecaller/callerid/callstate/CallStateService$b;

    invoke-virtual {v4, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/callerid/callstate/CallStateService$b;->a:Lcom/truecaller/callerid/callstate/CallStateService;

    const/16 v1, 0x20

    .line 11
    invoke-virtual {v0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 12
    iget-object v0, v0, Lcom/truecaller/callerid/callstate/CallStateService;->a:Lcom/truecaller/callerid/callstate/CallStateService$b;

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 13
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown phone state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_3
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_4
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    :goto_0
    const-string v1, "state"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "incoming_number"

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/CallStateService$b;->a:Lcom/truecaller/callerid/callstate/CallStateService;

    iget-object p2, p1, Lcom/truecaller/callerid/callstate/CallStateService;->c:Le/a/d0/b/j;

    invoke-interface {p2, p1, v0}, Le/a/d0/b/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
