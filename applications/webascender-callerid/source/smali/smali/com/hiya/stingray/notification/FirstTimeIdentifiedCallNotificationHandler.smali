.class public Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/hiya/stingray/notification/r;

.field private b:Lcom/hiya/stingray/s/d/c;


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
    iget-object v0, p0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/c;->a(Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;)V

    const-string v0, "notification"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x1b5a

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;->a:Lcom/hiya/stingray/notification/r;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/notification/r;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
