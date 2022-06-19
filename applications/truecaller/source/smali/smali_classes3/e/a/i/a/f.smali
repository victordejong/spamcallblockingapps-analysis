.class public final Le/a/i/a/f;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R%\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\t0\t8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR%\u0010\u0013\u001a\n \n*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012R%\u0010\u0018\u001a\n \n*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0016\u0010\u0017R%\u0010\u001b\u001a\n \n*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u001a\u0010\u0017R%\u0010\u001e\u001a\n \n*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000b\u001a\u0004\u0008\u001d\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Le/a/i/a/f;",
        "Landroid/widget/FrameLayout;",
        "Le/a/i/f0/n/d;",
        "ad",
        "Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;",
        "ctaStyle",
        "Ls1/s;",
        "a",
        "(Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V",
        "Lcom/truecaller/ads/ui/CtaButtonX;",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getAdCtaText",
        "()Lcom/truecaller/ads/ui/CtaButtonX;",
        "adCtaText",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "e",
        "getAdTitle",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "adTitle",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "b",
        "getAdIcon",
        "()Landroidx/appcompat/widget/AppCompatImageView;",
        "adIcon",
        "c",
        "getAdLargeGraphic",
        "adLargeGraphic",
        "d",
        "getAdText",
        "adText",
        "Landroid/content/Context;",
        "context",
        "Le/a/i/g;",
        "layout",
        "<init>",
        "(Landroid/content/Context;Le/a/i/g;)V",
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

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lcom/truecaller/ads/R$id;->adCtaText:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/f;->a:Ls1/g;

    .line 3
    sget v0, Lcom/truecaller/ads/R$id;->adIcon:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/f;->b:Ls1/g;

    .line 4
    sget v0, Lcom/truecaller/ads/R$id;->adLargeGraphic:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/f;->c:Ls1/g;

    .line 5
    sget v0, Lcom/truecaller/ads/R$id;->adText:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/f;->d:Ls1/g;

    .line 6
    sget v0, Lcom/truecaller/ads/R$id;->adTitle:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/f;->e:Ls1/g;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-interface {p2}, Le/a/i/g;->getHouseLayout()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getAdCtaText()Lcom/truecaller/ads/ui/CtaButtonX;
    .locals 1

    iget-object v0, p0, Le/a/i/a/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/ui/CtaButtonX;

    return-object v0
.end method

.method private final getAdIcon()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Le/a/i/a/f;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getAdLargeGraphic()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Le/a/i/a/f;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getAdText()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Le/a/i/a/f;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private final getAdTitle()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Le/a/i/a/f;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method


# virtual methods
.method public final a(Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/a/f$b;

    invoke-direct {v0, p0, p1}, Le/a/i/a/f$b;-><init>(Le/a/i/a/f;Le/a/i/f0/n/d;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-direct {p0}, Le/a/i/a/f;->getAdTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Le/a/i/f0/n/d;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Le/a/i/a/f;->getAdText()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p1, Le/a/i/f0/n/d;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-direct {p0}, Le/a/i/a/f;->getAdCtaText()Lcom/truecaller/ads/ui/CtaButtonX;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p1, Le/a/i/f0/n/d;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 11
    iget v1, p2, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->a:I

    iget v2, p2, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/ads/ui/CtaButtonX;->a(II)V

    .line 12
    :cond_2
    new-instance v1, Le/a/i/a/f$a;

    invoke-direct {v1, v0, p1, p2}, Le/a/i/a/f$a;-><init>(Lcom/truecaller/ads/ui/CtaButtonX;Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/ads/ui/CtaButtonX;->setOnClickListener(Ls1/z/b/a;)V

    .line 13
    :cond_3
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object p2

    check-cast p2, Le/a/z3/e;

    const-string v0, "GlideApp.with(this)"

    .line 14
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0}, Le/a/i/a/f;->getAdIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v1, p1, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 21
    :cond_4
    iget-object v0, p1, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 22
    invoke-direct {p0}, Le/a/i/a/f;->getAdLargeGraphic()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 23
    iget-object p1, p1, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    .line 24
    invoke-virtual {p2, p1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_5
    return-void
.end method
