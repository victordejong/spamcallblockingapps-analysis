.class public Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/hiya/stingray/notification/n;

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
    iget-object v0, p0, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;->b:Lcom/hiya/stingray/s/d/c;

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/c;->d(Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;->a:Lcom/hiya/stingray/notification/n;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/notification/n;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
