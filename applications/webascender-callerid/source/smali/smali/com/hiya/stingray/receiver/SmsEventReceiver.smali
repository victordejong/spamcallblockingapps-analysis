.class public Lcom/hiya/stingray/receiver/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/s/d/c;

.field b:Lcom/hiya/stingray/manager/q1;

.field c:Landroid/app/job/JobScheduler;

.field d:Landroid/app/job/JobInfo$Builder;

.field e:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/receiver/SmsEventReceiver;->a(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/c;->g(Lcom/hiya/stingray/receiver/SmsEventReceiver;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Exception thrown internally from getMessageFromIntent"

    .line 6
    invoke-static {p2, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    array-length p2, p1

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->b:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v1, p2, p1}, Lcom/hiya/stingray/manager/q1;->o(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    .line 14
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/receiver/SmsEventReceiver$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/receiver/SmsEventReceiver$a;-><init>(Lcom/hiya/stingray/receiver/SmsEventReceiver;)V

    new-instance v1, Lcom/hiya/stingray/receiver/SmsEventReceiver$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/receiver/SmsEventReceiver$b;-><init>(Lcom/hiya/stingray/receiver/SmsEventReceiver;)V

    .line 15
    invoke-virtual {p1, p2, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    goto :goto_2

    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Did not have enough information in text message"

    .line 16
    invoke-static {p2, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->c:Landroid/app/job/JobScheduler;

    iget-object p2, p0, Lcom/hiya/stingray/receiver/SmsEventReceiver;->d:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-nez p1, :cond_3

    .line 18
    new-instance p1, Lcom/hiya/stingray/exception/HiyaGenericException;

    invoke-direct {p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>()V

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Failed to schedule send text event"

    invoke-static {p1, v0, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    :cond_3
    :goto_3
    return-void
.end method
