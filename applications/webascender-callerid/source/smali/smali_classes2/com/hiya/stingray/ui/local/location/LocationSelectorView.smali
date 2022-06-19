.class public final Lcom/hiya/stingray/ui/local/location/LocationSelectorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private f:Lcom/hiya/stingray/t/h1/i;

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0c00bc

    .line 2
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->f:Lcom/hiya/stingray/t/h1/i;

    const v1, 0x7f1101ac

    const-string v2, "text"

    const-string v3, "container"

    const-string v4, "context"

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f06002a

    invoke-static {v5, v4}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v4

    .line 3
    sget v5, Lcom/hiya/stingray/o;->f0:I

    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0801b1

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    sget v3, Lcom/hiya/stingray/o;->p4:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    sget v5, Lcom/hiya/stingray/o;->C1:I

    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f080122

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->f()Lcom/hiya/stingray/t/h1/i$a;

    move-result-object v2

    sget-object v4, Lcom/hiya/stingray/t/h1/i$a;->GPS:Lcom/hiya/stingray/t/h1/i$a;

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1101a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->f()Lcom/hiya/stingray/t/h1/i$a;

    move-result-object v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1101a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0600ec

    invoke-static {v0, v4}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v0

    .line 14
    sget v4, Lcom/hiya/stingray/o;->f0:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0801b2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    sget v3, Lcom/hiya/stingray/o;->p4:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    sget v4, Lcom/hiya/stingray/o;->C1:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f080177

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 18
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPlace()Lcom/hiya/stingray/t/h1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->f:Lcom/hiya/stingray/t/h1/i;

    return-object v0
.end method

.method public final setPlace(Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->f:Lcom/hiya/stingray/t/h1/i;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/LocationSelectorView;->b()V

    return-void
.end method
