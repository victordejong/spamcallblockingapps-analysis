.class public Lcom/freshchat/consumer/sdk/j/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;

.field private iA:Landroid/view/ViewGroup;

.field private final iz:Lcom/freshchat/consumer/sdk/j/ae;

.field private final rp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ae;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v0, Lcom/freshchat/consumer/sdk/R$attr;->freshchatPictureMessagePlaceholderImage:I

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->rp:I

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_audio:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_play:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;->getDuration()I

    move-result p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/n;->s(I)Ljava/lang/String;

    move-result-object p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v6, v4, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-eqz v6, :cond_2

    :goto_1
    move v1, v5

    goto :goto_2

    :cond_2
    instance-of v6, v4, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    if-eqz v6, :cond_3

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v4, v4, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ak;->b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;Z)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_image:I

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getHeight()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/freshchat/consumer/sdk/j/ae;->b(II)Landroid/graphics/Point;

    move-result-object p1

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-virtual {p2, v2, p1}, Lcom/freshchat/consumer/sdk/j/ae;->a(Landroid/view/View;Landroid/graphics/Point;)V

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p1

    iget p2, p0, Lcom/freshchat/consumer/sdk/j/ak;->rp:I

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->G(I)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object p1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/af;->eK()Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_2
    new-instance p1, Lcom/freshchat/consumer/sdk/j/ak$2;

    invoke-direct {p1, p0, v0}, Lcom/freshchat/consumer/sdk/j/ak$2;-><init>(Lcom/freshchat/consumer/sdk/j/ak;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/e;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/e;->b(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/e;->hb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ak;->bi(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;ZZ)Landroid/view/View;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/cv;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ak;->bi(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_bot_faq_list_fragment:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_bot_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_bot_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lcom/freshchat/consumer/sdk/j/db;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/j/db;-><init>(Lcom/freshchat/consumer/sdk/j/ak;)V

    new-instance v3, Lcom/freshchat/consumer/sdk/a/w;

    invoke-direct {v3, p1, v1, p2}, Lcom/freshchat/consumer/sdk/a/w;-><init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/w$b;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-object v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_unknown_fragment:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_unknown_fragment_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    move-object v3, p1

    :goto_0
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUnsupportedFragmentConfig()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, v3}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->getErrorMessage(Ljava/lang/Integer;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v4, p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->getDisplayableErrorMessage(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_unknown_message_fragment:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object v0
.end method

.method private bi(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_text:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "LAUNCHED_FROM_CONVERSATION"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/j/ak$1;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/j/ak$1;-><init>(Lcom/freshchat/consumer/sdk/j/ak;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZZLjava/lang/String;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/ak;->a(Landroid/view/ViewGroup;)V

    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    invoke-direct {p0, p2, p5}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-virtual {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    if-eqz p1, :cond_4

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    invoke-direct {p0, p2, p6}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-eqz p1, :cond_5

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_button:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/aj;->b(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/net/Uri;

    move-result-object v2

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->e(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink_faq:I

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink:I

    goto :goto_0

    :goto_1
    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance p1, Lcom/freshchat/consumer/sdk/j/cs;

    invoke-direct {p1, p0, v2}, Lcom/freshchat/consumer/sdk/j/cs;-><init>(Lcom/freshchat/consumer/sdk/j/ak;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    return-void
.end method
