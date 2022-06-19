.class public Lcom/freshchat/consumer/sdk/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic bm:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/o;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/o;->bm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/o;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->L(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ln3/b/a/g;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/freshchat/consumer/sdk/activity/o;->bm:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
