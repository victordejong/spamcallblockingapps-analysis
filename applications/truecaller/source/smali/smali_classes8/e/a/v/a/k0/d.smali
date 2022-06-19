.class public final Le/a/v/a/k0/d;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/s0/a;
.implements Le/a/v/a/k0/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u00020\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Le/a/v/a/k0/d;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/v/a/s0/a;",
        "Le/a/v/a/k0/b;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "K",
        "onDetachedFromWindow",
        "Lcom/truecaller/premium/PremiumLaunchContext;",
        "launchContext",
        "D0",
        "(Lcom/truecaller/premium/PremiumLaunchContext;)V",
        "Le/a/v/k/n;",
        "t",
        "Le/a/v/k/n;",
        "getBinding",
        "()Le/a/v/k/n;",
        "binding",
        "Le/a/l/a2;",
        "v",
        "Le/a/l/a2;",
        "getPremiumScreenNavigator",
        "()Le/a/l/a2;",
        "setPremiumScreenNavigator",
        "(Le/a/l/a2;)V",
        "premiumScreenNavigator",
        "Le/a/v/a/k0/a;",
        "u",
        "Le/a/v/a/k0/a;",
        "getPresenter",
        "()Le/a/v/a/k0/a;",
        "setPresenter",
        "(Le/a/v/a/k0/a;)V",
        "presenter",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Le/a/v/k/n;

.field public u:Le/a/v/a/k0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public v:Le/a/l/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    :cond_1
    const-string p5, "context"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget p3, Lcom/truecaller/details_view/R$layout;->view_private_number_paywall:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/details_view/R$id;->premiumButtons:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    if-eqz p3, :cond_2

    .line 7
    sget p2, Lcom/truecaller/details_view/R$id;->view:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 9
    sget p2, Lcom/truecaller/details_view/R$id;->viewPremiumOffering:I

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    if-eqz p5, :cond_2

    .line 11
    new-instance p2, Le/a/v/k/n;

    invoke-direct {p2, p0, p3, p4, p5}, Le/a/v/k/n;-><init>(Landroid/view/View;Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;Landroid/view/View;Landroid/widget/TextView;)V

    const-string p3, "ViewPrivateNumberPaywall\u2026ater.from(context), this)"

    .line 12
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/v/a/k0/d;->t:Le/a/v/k/n;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/v/l/b;

    invoke-interface {p2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p2

    invoke-interface {p2, p0}, Le/a/v/l/a;->r(Le/a/v/a/k0/d;)V

    .line 14
    sget p2, Lcom/truecaller/details_view/R$drawable;->background_outlined_view:I

    .line 15
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public D0(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 3

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/k0/d;->v:Le/a/l/a2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void

    :cond_0
    const-string p1, "premiumScreenNavigator"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public K()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/k0/d;->t:Le/a/v/k/n;

    iget-object v0, v0, Le/a/v/k/n;->c:Landroid/widget/TextView;

    new-instance v1, Le/a/v/a/k0/d$a;

    invoke-direct {v1, p0}, Le/a/v/a/k0/d$a;-><init>(Le/a/v/a/k0/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public K0(Le/a/v/a/s;)V
    .locals 2

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/k0/d;->u:Le/a/v/a/k0/a;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/v/a/k0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/k0/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/v/a/k0/b;->K()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getBinding()Le/a/v/k/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/k0/d;->t:Le/a/v/k/n;

    return-object v0
.end method

.method public final getPremiumScreenNavigator()Le/a/l/a2;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/k0/d;->v:Le/a/l/a2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumScreenNavigator"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPresenter()Le/a/v/a/k0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/k0/d;->u:Le/a/v/a/k0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/k0/d;->u:Le/a/v/a/k0/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/k0/d;->u:Le/a/v/a/k0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setPremiumScreenNavigator(Le/a/l/a2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/k0/d;->v:Le/a/l/a2;

    return-void
.end method

.method public final setPresenter(Le/a/v/a/k0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/k0/d;->u:Le/a/v/a/k0/a;

    return-void
.end method
