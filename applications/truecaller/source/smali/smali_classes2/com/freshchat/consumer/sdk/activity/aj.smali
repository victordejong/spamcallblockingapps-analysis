.class public Lcom/freshchat/consumer/sdk/activity/aj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic ph:Lcom/freshchat/consumer/sdk/activity/ah;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aj;->ph:Lcom/freshchat/consumer/sdk/activity/ah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/aj;->ph:Lcom/freshchat/consumer/sdk/activity/ah;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
