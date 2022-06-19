.class public Lcom/hiya/stingray/ui/customblock/BlockListItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/t/c0;

.field private b:Ljava/lang/Boolean;

.field iconIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901fb
    .end annotation
.end field

.field removeButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090329
    .end annotation
.end field

.field subtitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040f
    .end annotation
.end field

.field titleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    const v1, 0x7f0701f9

    invoke-static {p2, v0, v1}, Lcom/hiya/stingray/util/f0;->g(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    const v0, 0x7f080120

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private b(Lcom/hiya/stingray/t/j0;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/j0;->h()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/j0;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/hiya/stingray/ui/customblock/BlockListItemView$a;->a:[I

    invoke-virtual {v0}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 4
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/j0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/j0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080176

    const/16 v0, 0x8

    const-string v1, ""

    .line 6
    invoke-direct {p0, p1, v1, v0}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f080153

    if-nez v0, :cond_3

    .line 9
    invoke-direct {p0, v2, v1, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11010f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, v2, p1, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110111

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f080168

    if-nez p1, :cond_6

    .line 16
    invoke-direct {p0, v0, v1, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110110

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, v0, p1, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private d(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    const v3, 0x7f08013d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1103df

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    invoke-virtual {v5}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    invoke-virtual {v3}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/c0;->h()Lcom/google/common/collect/z;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    invoke-virtual {v3}, Lcom/hiya/stingray/t/c0;->j()Lcom/hiya/stingray/t/j0;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/hiya/stingray/t/j0;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    const v2, 0x7f080136

    const-string v3, ", "

    .line 10
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->d(ILjava/lang/String;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/hiya/stingray/t/j0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v3}, Lcom/hiya/stingray/t/j0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, v3}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->b(Lcom/hiya/stingray/t/j0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/hiya/stingray/t/c0;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->a:Lcom/hiya/stingray/t/c0;

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->b:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->e()V

    return-void
.end method
