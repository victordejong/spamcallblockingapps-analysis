.class public Lcom/freshchat/consumer/sdk/activity/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bk;->jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bk;->jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->a(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;)Lcom/freshchat/consumer/sdk/activity/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    return-void
.end method
