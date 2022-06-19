.class public Lcom/freshchat/consumer/sdk/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/d$h;,
        Lcom/freshchat/consumer/sdk/a/d$c;,
        Lcom/freshchat/consumer/sdk/a/d$a;,
        Lcom/freshchat/consumer/sdk/a/d$b;,
        Lcom/freshchat/consumer/sdk/a/d$d;,
        Lcom/freshchat/consumer/sdk/a/d$e;,
        Lcom/freshchat/consumer/sdk/a/d$g;,
        Lcom/freshchat/consumer/sdk/a/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.freshchat.consumer.sdk.a.d"


# instance fields
.field private final aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final aN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private bn:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

.field private bo:Lcom/freshchat/consumer/sdk/a/d$f;

.field private final cA:Landroid/graphics/drawable/Drawable;

.field private final cB:Landroid/graphics/drawable/Drawable;

.field private final cC:I

.field private final cD:Ljava/lang/String;

.field private final cE:Ljava/lang/String;

.field private final cF:Ljava/lang/String;

.field private final cK:I

.field private final cL:Lcom/freshchat/consumer/sdk/b/e;

.field private final cM:I

.field private final cN:I

.field private final cO:Z

.field private final cP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private final cX:Lcom/freshchat/consumer/sdk/j/cj$a;

.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;

.field private final cy:Lcom/freshchat/consumer/sdk/j/ak;

.field private final cz:Landroid/graphics/drawable/Drawable;

.field private fM:Ljava/lang/Boolean;

.field private final lZ:Lcom/freshchat/consumer/sdk/a/d$c;

.field private ma:Z

.field private final mb:I

.field private final mc:I

.field private final oq:Lcom/freshchat/consumer/sdk/a/d$g;

.field private final or:I

.field private pU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pV:I

.field private final qy:F

.field private final qz:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Lcom/freshchat/consumer/sdk/a/d$g;Lcom/freshchat/consumer/sdk/j/cj$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/d$g;",
            "Lcom/freshchat/consumer/sdk/j/cj$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->cP:Ljava/util/HashMap;

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->nZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/cf$a;->asInt()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/a/d;->mb:I

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->oa:Lcom/freshchat/consumer/sdk/j/cf$a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/cf$a;->asInt()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/a/d;->mc:I

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->pZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/cf$a;->asInt()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/a/d;->or:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->pU:Ljava/util/Set;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cr:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cL:Lcom/freshchat/consumer/sdk/b/e;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ak;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->cy:Lcom/freshchat/consumer/sdk/j/ak;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/b/e;->isTeamMemberInfoVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberAvatarIcon:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cC:I

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/g;->Q(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cB:Landroid/graphics/drawable/Drawable;

    new-instance p2, Lcom/freshchat/consumer/sdk/a/d$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_category_icon_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-direct {p2, p3}, Lcom/freshchat/consumer/sdk/a/d$c;-><init>(I)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->lZ:Lcom/freshchat/consumer/sdk/a/d$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_translation_toggle_btn_dimension:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->pV:I

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatChatBubbleLeft:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cM:I

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatChatBubbleRight:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cN:I

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/p;->ar(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/freshchat/consumer/sdk/R$drawable;->freshchat_ic_message_status_sent:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cA:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/freshchat/consumer/sdk/R$drawable;->freshchat_ic_message_status_pending:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cz:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cD:Ljava/lang/String;

    sget p3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cF:Ljava/lang/String;

    sget p3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink_faq:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cE:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/a/d;->oq:Lcom/freshchat/consumer/sdk/a/d$g;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/a/d;->cX:Lcom/freshchat/consumer/sdk/j/cj$a;

    sget p3, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_message_view_line_spacing_extra:I

    invoke-static {p1, p3}, Lcom/freshchat/consumer/sdk/j/aq;->o(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/d;->qy:F

    sget p1, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_message_view_line_spacing_multiplier:I

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/res/Resources;I)Landroid/util/TypedValue;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/d;->qz:F

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/d;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/d;->pV:I

    return p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Message;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/a/d;->n(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Participant;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Participant;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v1

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v1

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p3, v0

    :cond_3
    return-object p3

    :cond_4
    :goto_0
    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    return-object p3

    :cond_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p3, v0

    :cond_7
    :goto_1
    return-object p3
.end method

.method private a(Landroid/content/Context;Landroid/widget/TextView;J)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    invoke-static {p1, p3, p4}, Lcom/freshchat/consumer/sdk/j/n;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_content_description_hide_original_content:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_content_description_show_original_content:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/freshchat/consumer/sdk/beans/Message;ZZZ)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/d;->cy:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v4, v1

    move v5, p3

    move v6, p5

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/freshchat/consumer/sdk/j/ak;->a(Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZZLjava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p4, v1, v2}, Lcom/freshchat/consumer/sdk/a/d;->a(ZLcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/a/d$e;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hh()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 9

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v4

    const/4 v6, 0x1

    const/16 v0, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget v2, p0, Lcom/freshchat/consumer/sdk/a/d;->cN:I

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bd()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hh()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hi()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hk()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hk()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/a/d;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->iq()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget v2, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-static {v0, v1, v2, v7}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hj()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTimeTextStyle:I

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    move v8, v7

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/freshchat/consumer/sdk/j/cv;->h(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget v3, p0, Lcom/freshchat/consumer/sdk/a/d;->cM:I

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/aq;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bd()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/d;->c(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V

    iget-boolean v2, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/d;->cD:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/beans/Message;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hi()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hi()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hi()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hk()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget v3, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-static {v0, v2, v7, v3}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hj()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTimeTextStyle:I

    invoke-static {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->iq()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ir()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/view/View;Z)V

    move v8, v1

    :goto_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ir()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hj()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hg()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/widget/LinearLayout;Lcom/freshchat/consumer/sdk/beans/Message;ZZZ)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->pU:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, v8}, Lcom/freshchat/consumer/sdk/a/d;->b(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V

    :cond_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->iq()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ir()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    invoke-direct {p0, v0, v6}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hg()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/beans/Message;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hj()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/content/Context;Landroid/widget/TextView;J)V

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/d;->b(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V
    .locals 8

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->iq()Landroid/view/View;

    move-result-object v6

    if-nez p3, :cond_0

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v6}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget v0, p0, Lcom/freshchat/consumer/sdk/a/d;->pV:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/h;

    invoke-direct {v0, p0, v6, p1}, Lcom/freshchat/consumer/sdk/a/h;-><init>(Lcom/freshchat/consumer/sdk/a/d;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/d$e;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    iget v4, p0, Lcom/freshchat/consumer/sdk/a/d;->pV:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    :goto_0
    new-instance v7, Lcom/freshchat/consumer/sdk/a/p;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/a/p;-><init>(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;ZLandroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/d;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/a/d;->b(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Message;Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getMessageTypeFromIntValue(I)Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/cm;->u(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/d;->cX:Lcom/freshchat/consumer/sdk/j/cj$a;

    invoke-static {v0, p2, p1, v1}, Lcom/freshchat/consumer/sdk/j/cj;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/j/cj$a;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    if-ne v0, p1, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_text:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    sget v0, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCalendarCancelInviteIcon:I

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    sget v0, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_calendar_cancel_invite_icon_padding:I

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/j/aq;->o(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ZLcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v0

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v0

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p2, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    if-eqz p2, :cond_2

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_unknown_fragment_text:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedUserMessageTextStyle:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedTeamMemberMessageTextStyle:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_text:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTextStyle:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTextStyle:I

    :goto_1
    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    return p0
.end method

.method private b(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/a/d$h;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/d;->oq:Lcom/freshchat/consumer/sdk/a/d$g;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/freshchat/consumer/sdk/a/d$h;-><init>(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/a/d$g;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hg()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private b(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ip()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/widget/LinearLayout;Lcom/freshchat/consumer/sdk/beans/Message;ZZZ)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ir()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/a/d;->pV:I

    return p0
.end method

.method private c(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->hh()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/a/d;->n(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Participant;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Participant;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserProfilePic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserProfilePic()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    if-eqz p2, :cond_3

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p2

    sget-object v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    invoke-virtual {p2, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object p2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/af;->eK()Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p2, p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_4
    return-void

    :cond_5
    iget p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cC:I

    if-lez p2, :cond_6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cB:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static synthetic d(Lcom/freshchat/consumer/sdk/a/d;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/d;->pU:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic e(Lcom/freshchat/consumer/sdk/a/d;)Lcom/freshchat/consumer/sdk/a/d$g;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/d;->oq:Lcom/freshchat/consumer/sdk/a/d$g;

    return-object p0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_default_agent_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(I)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cA:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cz:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private n(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Participant;
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Participant;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/a/d$f;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->bo:Lcom/freshchat/consumer/sdk/a/d$f;

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->bn:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/d;->f(I)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/a/d;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/a/d;->ma:Z

    invoke-static {v0, v2, p1}, Lcom/freshchat/consumer/sdk/j/cf;->a(Lcom/freshchat/consumer/sdk/beans/Message;ZZ)Lcom/freshchat/consumer/sdk/j/cf$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/cf$a;->asInt()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Message;

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/d$d;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/freshchat/consumer/sdk/a/d$d;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/cf;->k(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/freshchat/consumer/sdk/a/g;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/a/d;->bn:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    invoke-direct {v2, v3, v1, v4}, Lcom/freshchat/consumer/sdk/a/g;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/d$d;->ay()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->bo:Lcom/freshchat/consumer/sdk/a/d$f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/freshchat/consumer/sdk/a/d$f;->f(Lcom/freshchat/consumer/sdk/beans/Message;)V

    :cond_1
    check-cast p1, Lcom/freshchat/consumer/sdk/a/d$e;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;)V

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/d$e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/freshchat/consumer/sdk/a/d$e;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/d$b;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/freshchat/consumer/sdk/a/d$b;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/cf;->m(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$b;->aZ()Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->setData(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$b;->aZ()Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/a/d;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->setUploadedStateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$b;->ba()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v1

    :goto_1
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/a/d;->a(Landroid/content/Context;Landroid/widget/TextView;J)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/d$a;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/freshchat/consumer/sdk/a/d$a;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/cm;->s(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/freshchat/consumer/sdk/k/l;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/k/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/k/l;->b(Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->isUploaded()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/k/l;->y(Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/cm;->a(Ljava/util/Map;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/k/p;->br(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/a/d$a;->a(Lcom/freshchat/consumer/sdk/k/l;)V

    :cond_6
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$a;->hk()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/a/d;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$a;->hv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/a/d;->mb:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_carousel:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/d$d;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/d$d;-><init>(Landroid/view/View;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/a/d$d;->ay()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/a/d$d;->ay()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->lZ:Lcom/freshchat/consumer/sdk/a/d$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d$e;)V

    return-object p2

    :cond_0
    iget v0, p0, Lcom/freshchat/consumer/sdk/a/d;->mc:I

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cr:Landroid/view/LayoutInflater;

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_carousel_card:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/d$b;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/d$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    iget v0, p0, Lcom/freshchat/consumer/sdk/a/d;->or:I

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cr:Landroid/view/LayoutInflater;

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_list_item_calendar_event:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/d$a;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/d$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_message:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/d$e;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/d$e;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d$e;)V

    return-object p2
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/a/d;->ma:Z

    return-void
.end method
