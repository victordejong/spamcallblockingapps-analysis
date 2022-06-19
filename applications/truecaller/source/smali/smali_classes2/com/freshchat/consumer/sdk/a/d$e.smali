.class public Lcom/freshchat/consumer/sdk/a/d$e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final nA:Landroid/widget/RelativeLayout;

.field private final nB:Landroid/widget/LinearLayout;

.field private final nC:Landroid/widget/ImageView;

.field private final nD:Landroid/widget/TextView;

.field private final nE:Landroid/widget/TextView;

.field private final nF:Landroid/widget/ImageView;

.field private final nz:Landroid/widget/RelativeLayout;

.field private final qB:Landroid/widget/LinearLayout;

.field private final qC:Landroid/view/View;

.field private final qD:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nz:Landroid/widget/RelativeLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_content_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nA:Landroid/widget/RelativeLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_fragment_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nB:Landroid/widget/LinearLayout;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_avatar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nC:Landroid/widget/ImageView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_user_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nD:Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nE:Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_upload_status:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nF:Landroid/widget/ImageView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_show_original_content_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qC:Landroid/view/View;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_original_message_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qD:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qB:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public bc()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nz:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bd()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nA:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hg()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nB:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hh()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nC:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hi()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nD:Landroid/widget/TextView;

    return-object v0
.end method

.method public hj()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nE:Landroid/widget/TextView;

    return-object v0
.end method

.method public hk()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->nF:Landroid/widget/ImageView;

    return-object v0
.end method

.method public ip()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qB:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public iq()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qC:Landroid/view/View;

    return-object v0
.end method

.method public ir()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$e;->qD:Landroid/view/View;

    return-object v0
.end method
