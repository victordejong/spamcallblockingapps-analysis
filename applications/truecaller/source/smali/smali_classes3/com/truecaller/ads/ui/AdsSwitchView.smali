.class public final Lcom/truecaller/ads/ui/AdsSwitchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000cH\u0082\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0017\u001a\u00020\u000c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001a\u001a\u00020\u000c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/ads/ui/AdsSwitchView;",
        "Landroid/widget/FrameLayout;",
        "Le/a/i/f0/m/d;",
        "ad",
        "Le/a/i/g;",
        "layout",
        "Ls1/s;",
        "d",
        "(Le/a/i/f0/m/d;Le/a/i/g;)V",
        "Le/a/i/c/a/c;",
        "c",
        "(Le/a/i/c/a/c;Le/a/i/g;)V",
        "",
        "childIndex",
        "e",
        "(I)V",
        "position",
        "Landroid/view/View;",
        "b",
        "(I)Landroid/view/View;",
        "Ls1/g;",
        "getNativePosition",
        "()I",
        "nativePosition",
        "a",
        "getBannerPosition",
        "bannerPosition",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lk2;

    invoke-direct {p1, v0, p0}, Lk2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/ui/AdsSwitchView;->a:Ls1/g;

    .line 4
    new-instance p1, Lk2;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lk2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/ui/AdsSwitchView;->b:Ls1/g;

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    return-void
.end method

.method public static final a(Lcom/truecaller/ads/ui/AdsSwitchView;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v2, v0

    check-cast v2, Ls1/d0/h;

    invoke-virtual {v2}, Ls1/d0/h;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3
    invoke-virtual {p0, v3}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_1
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No child with required ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getBannerPosition()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/ui/AdsSwitchView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getNativePosition()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/ui/AdsSwitchView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getChildAt(position)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Le/a/i/c/a/c;Le/a/i/g;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/i/c/a/k;

    const-string v1, "context"

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/c/a/k;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, p2}, Le/m/d/y/n;->i0(Le/a/i/c/a/j;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Le/a/i/c/a/m;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/i/c/a/m;

    .line 7
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, p2}, Le/m/d/y/n;->i0(Le/a/i/c/a/j;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    goto :goto_0

    .line 11
    :cond_1
    instance-of p2, p1, Le/a/i/c/a/h;

    if-eqz p2, :cond_2

    check-cast p1, Le/a/i/c/a/h;

    .line 12
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/m/d/y/n;->m0(Le/a/i/c/a/h;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of p2, p1, Le/a/i/c/a/t;

    if-eqz p2, :cond_3

    check-cast p1, Le/a/i/c/a/t;

    .line 17
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/m/d/y/n;->n0(Le/a/i/c/a/t;Landroid/content/Context;)Le/a/i/c/a/q;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d(Le/a/i/f0/m/d;Le/a/i/g;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/i/f0/m/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/f0/m/a;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v0, v1}, Le/m/d/y/n;->l0(Le/a/i/f0/m/a;Le/a/i/g;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getBannerPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Le/a/i/f0/m/h;

    const-string v1, "context"

    if-eqz v0, :cond_1

    check-cast p1, Le/a/i/f0/m/h;

    .line 7
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, p2}, Le/m/d/y/n;->k0(Le/a/i/f0/m/h;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Le/a/i/f0/m/c;

    if-eqz v0, :cond_3

    check-cast p1, Le/a/i/f0/m/c;

    .line 12
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/truecaller/ads/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/m0/a1$k;->i(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-static {p1, v1, p2}, Le/m/d/y/n;->j0(Le/a/i/f0/m/c;Landroid/app/Activity;Le/a/i/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/truecaller/ads/ui/AdsSwitchView;->getNativePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ads/ui/AdsSwitchView;->e(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lcom/truecaller/ads/ui/AdsSwitchView;->b(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
