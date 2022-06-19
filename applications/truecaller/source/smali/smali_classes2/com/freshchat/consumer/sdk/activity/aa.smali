.class public Lcom/freshchat/consumer/sdk/activity/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aa;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aa;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aa;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aa;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    :goto_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aa;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    return-void
.end method
