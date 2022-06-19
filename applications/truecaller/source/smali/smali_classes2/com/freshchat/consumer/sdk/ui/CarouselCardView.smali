.class public Lcom/freshchat/consumer/sdk/ui/CarouselCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;
    }
.end annotation


# instance fields
.field private lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

.field private nF:Landroid/widget/ImageView;

.field private nH:Landroid/widget/ImageView;

.field private nI:Landroid/widget/TextView;

.field private nJ:Landroid/widget/TextView;

.field private nK:Landroid/widget/LinearLayout;

.field private nL:Landroid/widget/Button;

.field private nM:Landroid/widget/Button;

.field private nN:Landroid/view/View;

.field private nO:Lcom/freshchat/consumer/sdk/k/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->hl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->hl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->hl()V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->hm()V

    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/k/i;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    return-object p0
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    return-object p0
.end method

.method private hm()V
    .locals 6

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/i;->ho()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCarouselCardPlaceholderImage:I

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCarouselCardErrorImage:I

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_carousel_card_default_dimension:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v4, v3}, Lcom/freshchat/consumer/sdk/k/i;->I(I)I

    move-result v4

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v5, v3}, Lcom/freshchat/consumer/sdk/k/i;->J(I)I

    move-result v3

    new-instance v5, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-direct {v5, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->G(I)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->H(I)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/af;->eK()Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nH:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nH:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/i;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nI:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nI:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/i;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/i;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nJ:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nJ:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/i;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/i;->hp()Lcom/freshchat/consumer/sdk/k/i$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/k/i$a;->of:Lcom/freshchat/consumer/sdk/k/i$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nN:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nK:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nK:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nN:Landroid/view/View;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_carousel_card_default_callback_btn_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_carousel_card_default_view_btn_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/freshchat/consumer/sdk/k/i$a;->oh:Lcom/freshchat/consumer/sdk/k/i$a;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nM:Landroid/widget/Button;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nM:Landroid/widget/Button;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v3, v2}, Lcom/freshchat/consumer/sdk/k/i;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/k/i;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nK:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nM:Landroid/widget/Button;

    new-instance v2, Lcom/freshchat/consumer/sdk/ui/b;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/ui/b;-><init>(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nM:Landroid/widget/Button;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :goto_3
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nL:Landroid/widget/Button;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/k/i;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nL:Landroid/widget/Button;

    new-instance v1, Lcom/freshchat/consumer/sdk/ui/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/ui/c;-><init>(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public hl()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_carousel_card_default_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_hero_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nH:Landroid/widget/ImageView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nI:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_description:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nJ:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nK:Landroid/widget/LinearLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_callback_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nL:Landroid/widget/Button;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_view_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nM:Landroid/widget/Button;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_selection_indication_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nN:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card_message_upload_status:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nF:Landroid/widget/ImageView;

    return-void
.end method

.method public setData(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nO:Lcom/freshchat/consumer/sdk/k/i;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/i;->setData(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/ui/a;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/ui/a;-><init>(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    return-void
.end method

.method public setUploadedStateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->nF:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
