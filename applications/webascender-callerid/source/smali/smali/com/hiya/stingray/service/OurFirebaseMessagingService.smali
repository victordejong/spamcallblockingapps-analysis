.class public final Lcom/hiya/stingray/service/OurFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# instance fields
.field private f:Lcom/hiya/stingray/s/d/i;

.field public g:Lcom/hiya/stingray/manager/g4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/service/OurFirebaseMessagingService;->f:Lcom/hiya/stingray/s/d/i;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/s/a;->d(Landroid/content/Context;)Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/service/OurFirebaseMessagingService;->f:Lcom/hiya/stingray/s/d/i;

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/service/OurFirebaseMessagingService;->a()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/service/OurFirebaseMessagingService;->f:Lcom/hiya/stingray/s/d/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->b(Lcom/hiya/stingray/service/OurFirebaseMessagingService;)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/u;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/u;->y1()Ljava/util/Map;

    move-result-object v0

    const-string v1, "subscriptionEventType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SubscriptionInGracePeriod"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/hiya/stingray/notification/NotificationReceiver;->d:Lcom/hiya/stingray/notification/NotificationReceiver$a;

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/hiya/stingray/notification/v;->SUBSCRIPTION_EXPIRE:Lcom/hiya/stingray/notification/v;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/messaging/u;->y1()Ljava/util/Map;

    move-result-object p1

    const-string v4, "msg.data"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2, v3, p1}, Lcom/hiya/stingray/notification/NotificationReceiver$a;->b(Landroid/content/Context;Lcom/hiya/stingray/notification/v;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/service/OurFirebaseMessagingService;->g:Lcom/hiya/stingray/manager/g4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/g4;->j(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "tokenManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
