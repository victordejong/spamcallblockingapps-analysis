.class public Lcom/freshchat/consumer/sdk/activity/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field public final synthetic H:Lcom/freshchat/consumer/sdk/activity/x;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/x;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/y;->H:Lcom/freshchat/consumer/sdk/activity/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/y;->H:Lcom/freshchat/consumer/sdk/activity/x;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/x;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Z)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/y;->H:Lcom/freshchat/consumer/sdk/activity/x;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/x;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/z;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/z;-><init>(Lcom/freshchat/consumer/sdk/activity/y;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
