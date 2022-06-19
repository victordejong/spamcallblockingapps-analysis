.class public final Le/a/l/c/a/l2;
.super Le/a/l/c/a/i;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/p1;


# instance fields
.field public final g:Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Lcom/truecaller/common/ui/ShineView;

.field public final m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/l/c/a/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    const v0, 0x7f0a0265

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;

    iput-object v0, p0, Le/a/l/c/a/l2;->g:Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;

    const v0, 0x7f0a01d3

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a1245

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/l2;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0c73

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/l2;->j:Landroid/widget/TextView;

    const v0, 0x7f0a10d3

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/l2;->k:Landroid/widget/TextView;

    const v0, 0x7f0a08b4

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/ShineView;

    iput-object v0, p0, Le/a/l/c/a/l2;->l:Lcom/truecaller/common/ui/ShineView;

    const v1, 0x7f0a04ba

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/l/c/a/l2;->m:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, p3}, Lcom/truecaller/common/ui/ShineView;->setLifecycleOwner(Ln3/v/b0;)V

    .line 10
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p3, Le/a/l/c/a/l2$a;

    invoke-direct {p3, p0, p2}, Le/a/l/c/a/l2$a;-><init>(Le/a/l/c/a/l2;Le/a/o2/m;)V

    invoke-virtual {p1, p3}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->setOnCountDownTimerStateListener(Ls1/z/b/l;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A4(Le/a/l/c/a/x2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->j:Landroid/widget/TextView;

    const-string v1, "offerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V

    return-void
.end method

.method public B2(Le/a/l/c/a/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->m:Landroid/widget/TextView;

    const-string v1, "ctaView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->O4(Landroid/widget/TextView;Le/a/l/c/a/a0;)V

    return-void
.end method

.method public F2(Le/a/l/c/a/x2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->setOfferEndLabelText(Le/a/l/c/a/x2;)V

    :cond_0
    return-void
.end method

.method public I(Le/a/l/c/a/x2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->k:Landroid/widget/TextView;

    const-string v1, "subtitleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V

    return-void
.end method

.method public J4(Le/a/l/n2/f;Le/a/l/v2/i/a/a;)V
    .locals 7

    const-string v0, "purchaseItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseButton"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->g:Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;

    invoke-virtual {v0, p2}, Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;->setPremiumCardSubscriptionButton(Le/a/l/v2/i/a/a;)V

    .line 2
    iget-object v1, p0, Le/a/l/c/a/l2;->g:Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;

    const-string p2, "buyView"

    invoke-static {v1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/l/c/a/i;->f:Le/a/o2/m;

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v3, p0

    move-object v5, p1

    .line 4
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public L()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->l:Lcom/truecaller/common/ui/ShineView;

    const-string v1, "shiningView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Le/a/l/c/a/i;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/a/g;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public U(Le/a/l/c/a/x2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->i:Landroid/widget/TextView;

    const-string v1, "titleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V

    return-void
.end method

.method public i0(Le/a/l/c/a/x;Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->g1(Le/a/l/c/a/x;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public o3(Ljava/lang/String;)V
    .locals 9

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->l:Lcom/truecaller/common/ui/ShineView;

    const-string v1, "shiningView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/z3/d;

    .line 4
    iput-object p1, v1, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v1, Le/f/a/h;->N:Z

    .line 6
    check-cast v0, Le/a/z3/d;

    const/4 v1, 0x2

    new-array v2, v1, [Le/f/a/n/m;

    .line 7
    new-instance v3, Le/f/a/n/q/d/i;

    invoke-direct {v3}, Le/f/a/n/q/d/i;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Le/f/a/n/q/d/y;

    iget-object v5, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    const-string v6, "backgroundView"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "backgroundView.context"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070501

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v5}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v3, v2, p1

    invoke-virtual {v0, v2}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-static {v2}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v2

    const v3, 0x7f08088b

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object v2

    new-array v1, v1, [Le/f/a/n/m;

    .line 10
    new-instance v3, Le/f/a/n/q/d/i;

    invoke-direct {v3}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v3, v1, v4

    .line 11
    new-instance v3, Le/f/a/n/q/d/y;

    iget-object v4, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v4}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v3, v1, p1

    .line 12
    invoke-virtual {v2, v1}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object p1

    .line 13
    iput-object p1, v0, Le/f/a/h;->L:Le/f/a/h;

    .line 14
    iget-object p1, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public r3(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/c/a/l2;->l:Lcom/truecaller/common/ui/ShineView;

    const-string v1, "shiningView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Le/f/a/n/m;

    .line 4
    new-instance v1, Le/f/a/n/q/d/i;

    invoke-direct {v1}, Le/f/a/n/q/d/i;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/f/a/n/q/d/y;

    iget-object v2, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    const-string v3, "backgroundView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "backgroundView.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070501

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Le/f/a/n/q/d/y;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/l/c/a/l2;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public t2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->f1()V

    :cond_0
    return-void
.end method
