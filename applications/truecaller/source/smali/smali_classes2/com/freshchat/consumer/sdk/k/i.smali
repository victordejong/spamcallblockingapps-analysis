.class public Lcom/freshchat/consumer/sdk/k/i;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/k/i$a;
    }
.end annotation


# instance fields
.field private oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    return-void
.end method

.method private hr()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_HERO_IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public I(I)I
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/i;->hr()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getWidth()I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public J(I)I
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/i;->hr()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getHeight()I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public bl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_CALLBACK:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_VIEW:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_DESCRIPTION:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_TITLE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hn()Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    return-object v0
.end method

.method public ho()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_HERO_IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hp()Lcom/freshchat/consumer/sdk/k/i$a;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/k/i$a;->of:Lcom/freshchat/consumer/sdk/k/i$a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_VIEW:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/i$a;->oh:Lcom/freshchat/consumer/sdk/k/i$a;

    return-object v0

    :cond_1
    sget-object v0, Lcom/freshchat/consumer/sdk/k/i$a;->oi:Lcom/freshchat/consumer/sdk/k/i$a;

    return-object v0
.end method

.method public hq()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_VIEW:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/cg;->b(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aj;->b(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hs()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/i;->oe:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/i;->hp()Lcom/freshchat/consumer/sdk/k/i$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/k/i$a;->oh:Lcom/freshchat/consumer/sdk/k/i$a;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/i;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/CharSequence;)J

    move-result-wide v0

    const-wide/16 v3, 0x7

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/freshchat/consumer/sdk/k/i;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/CharSequence;)J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
