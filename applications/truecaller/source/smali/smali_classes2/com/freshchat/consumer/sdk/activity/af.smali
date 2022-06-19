.class public Lcom/freshchat/consumer/sdk/activity/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/af;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/af;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/d/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/af;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fW:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    const-string v0, "source"

    const-string v1, "contact_us"

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method
