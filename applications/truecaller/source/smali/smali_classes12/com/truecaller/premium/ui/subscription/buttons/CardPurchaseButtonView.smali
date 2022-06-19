.class public final Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R%\u0010\u0019\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0015R%\u0010\u001c\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0015R%\u0010!\u001a\n \u0011*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0013\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "price",
        "Ls1/s;",
        "setStrikeThroughPrice",
        "(Ljava/lang/String;)V",
        "setPrice",
        "profit",
        "setProfit",
        "subtext",
        "setSubText",
        "Le/a/l/v2/i/a/a;",
        "purchaseButton",
        "setPremiumCardSubscriptionButton",
        "(Le/a/l/v2/i/a/a;)V",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "u",
        "Ls1/g;",
        "getPriceTextView",
        "()Landroid/widget/TextView;",
        "priceTextView",
        "w",
        "getSubTextView",
        "subTextView",
        "t",
        "getStrikeThroughPriceTextView",
        "strikeThroughPriceTextView",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "v",
        "getProfitTextView",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "profitTextView",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p1, Lcom/truecaller/premium/R$id;->strikeThroughPrice:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->t:Ls1/g;

    .line 4
    sget p1, Lcom/truecaller/premium/R$id;->price:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->u:Ls1/g;

    .line 5
    sget p1, Lcom/truecaller/premium/R$id;->profit:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->v:Ls1/g;

    .line 6
    sget p1, Lcom/truecaller/premium/R$id;->subtext:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->w:Ls1/g;

    .line 7
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget p1, Lcom/truecaller/premium/R$layout;->layout_premium_tab_card_subscription_button:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 9
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->getStrikeThroughPriceTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-void
.end method

.method private final getPriceTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getProfitTextView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private final getStrikeThroughPriceTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSubTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final setPrice(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->getPriceTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method private final setProfit(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->getProfitTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method private final setStrikeThroughPrice(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->getStrikeThroughPriceTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method private final setSubText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->getSubTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final setPremiumCardSubscriptionButton(Le/a/l/v2/i/a/a;)V
    .locals 1

    const-string v0, "purchaseButton"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/l/v2/i/a/a;->a:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->setStrikeThroughPrice(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/l/v2/i/a/a;->b:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->setPrice(Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/l/v2/i/a/a;->c:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->setProfit(Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/a/l/v2/i/a/a;->d:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v0}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->setSubText(Ljava/lang/String;)V

    .line 9
    iget p1, p1, Le/a/l/v2/i/a/a;->e:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method
