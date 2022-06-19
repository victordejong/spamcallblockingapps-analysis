.class public Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;
.super Lcom/hiya/stingray/ui/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Picasso;

.field identityTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ff
    .end annotation
.end field

.field imageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090220
    .end annotation
.end field

.field infoBottom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090221
    .end annotation
.end field

.field infoTop:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090222
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/c;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->b:Lcom/squareup/picasso/Picasso;

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private j(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/b;->MULTI_CONTACT:Lcom/hiya/stingray/ui/b;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/f1/b;->b(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/b;->UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/f1/b;->a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/f0;->e(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f07005f

    invoke-static {p1, p2, v0}, Lcom/hiya/stingray/util/f0;->g(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->identityTv:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->identityTv:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/hiya/stingray/util/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public k(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->infoBottom:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->j(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->infoTop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/hiya/stingray/ui/c;->h(Landroid/content/res/Resources;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    .line 4
    sget-object v1, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v1, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "#"

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->identityTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->identityTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->imageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->b:Lcom/squareup/picasso/Picasso;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/hiya/stingray/ui/c;->i(Landroid/widget/ImageView;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;ZLcom/squareup/picasso/Picasso;)V

    return-void
.end method

.method public l(Lcom/hiya/stingray/t/k0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->infoTop:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->infoBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->infoBottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->a:Landroid/content/Context;

    const v4, 0x7f110420

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
