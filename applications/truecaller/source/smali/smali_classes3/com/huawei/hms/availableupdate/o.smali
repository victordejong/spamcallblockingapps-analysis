.class public Lcom/huawei/hms/availableupdate/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Lcom/huawei/hms/ui/SafeIntent;

    invoke-direct {p1, p2}, Lcom/huawei/hms/ui/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/ui/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.huawei.appmarket.service.downloadservice.Receiver"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/ui/SafeIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x65

    .line 6
    iput v0, p2, Landroid/os/Message;->what:I

    .line 7
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v0, "com.huawei.appmarket.service.downloadservice.progress.Receiver"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hms/ui/SafeIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 11
    :cond_3
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x66

    .line 12
    iput v0, p2, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v0, "com.huawei.appmarket.service.installerservice.Receiver"

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p1}, Lcom/huawei/hms/ui/SafeIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_5
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x67

    .line 18
    iput v0, p2, Landroid/os/Message;->what:I

    .line 19
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/o;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_0
    return-void
.end method
