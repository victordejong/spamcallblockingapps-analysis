.class public Lcom/freshchat/consumer/sdk/j/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/cj$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/j/cj$a;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_invite_options:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/freshchat/consumer/sdk/j/cj;->a(Landroid/view/View;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/j/cj$a;)V

    return-object p0
.end method

.method private static a(Landroid/view/View;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/j/cj$a;)V
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_find_slot_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_not_interested_textview:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ck;

    invoke-direct {v1, p2, p1}, Lcom/freshchat/consumer/sdk/j/ck;-><init>(Lcom/freshchat/consumer/sdk/j/cj$a;Lcom/freshchat/consumer/sdk/beans/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/j/cl;

    invoke-direct {v0, p2, p1}, Lcom/freshchat/consumer/sdk/j/cl;-><init>(Lcom/freshchat/consumer/sdk/j/cj$a;Lcom/freshchat/consumer/sdk/beans/Message;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
