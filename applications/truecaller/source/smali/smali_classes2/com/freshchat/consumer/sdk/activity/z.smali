.class public Lcom/freshchat/consumer/sdk/activity/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic I:Lcom/freshchat/consumer/sdk/activity/y;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/y;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/z;->I:Lcom/freshchat/consumer/sdk/activity/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/z;->I:Lcom/freshchat/consumer/sdk/activity/y;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/y;->H:Lcom/freshchat/consumer/sdk/activity/x;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/x;->F:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_vote_successful:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
