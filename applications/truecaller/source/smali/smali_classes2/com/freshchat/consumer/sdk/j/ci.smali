.class public Lcom/freshchat/consumer/sdk/j/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-direct {v0, p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object p2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/af;->eK()Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/freshchat/consumer/sdk/k/p;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_timeslot_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_day_label:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_agent_avatar:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_avatars_container:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x5a

    div-int/lit8 p3, p3, 0x64

    mul-int/lit8 p3, p3, 0x2

    iput p3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/k/p;->ii()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/k/p;->ij()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/k/p;->ik()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/k/p;->hL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/freshchat/consumer/sdk/j/ci;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberAvatarIcon:I

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
