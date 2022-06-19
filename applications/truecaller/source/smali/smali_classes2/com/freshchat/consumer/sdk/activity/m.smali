.class public Lcom/freshchat/consumer/sdk/activity/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic bm:Z

.field public final synthetic hF:Lcom/freshchat/consumer/sdk/beans/Csat;

.field public final synthetic jx:Landroid/widget/RatingBar;

.field public final synthetic jy:Landroid/widget/EditText;

.field public final synthetic kJ:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;ZLandroid/widget/RatingBar;Landroid/widget/EditText;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/m;->bm:Z

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/activity/m;->jx:Landroid/widget/RatingBar;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/activity/m;->jy:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/activity/m;->hF:Lcom/freshchat/consumer/sdk/beans/Csat;

    iput-boolean p6, p0, Lcom/freshchat/consumer/sdk/activity/m;->kJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->bm:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->jx:Landroid/widget/RatingBar;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->f(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->jx:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgress()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/m;->jy:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/b/i;->f(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->jy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/m;->jy:Landroid/widget/EditText;

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/m;->hF:Lcom/freshchat/consumer/sdk/beans/Csat;

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/m;->kJ:Z

    invoke-static {p1, p2, v0, v4, v5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/freshchat/consumer/sdk/activity/m;->kJ:Z

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;JZILjava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/m;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->K(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    return-void
.end method
