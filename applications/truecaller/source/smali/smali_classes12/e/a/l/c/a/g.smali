.class public abstract Le/a/l/c/a/g;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/z1;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

.field public final c:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/l/c/a/g;->c:Le/a/o2/m;

    const p2, 0x7f0a0ab8

    .line 2
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/l/c/a/g;->a:Ls1/g;

    const p2, 0x7f0a0c2f

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    iput-object p1, p0, Le/a/l/c/a/g;->b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Le/a/l/c/a/g$a;

    invoke-direct {p2, p0}, Le/a/l/c/a/g$a;-><init>(Le/a/l/c/a/g;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->setOnDismissClick(Ls1/z/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;
    .locals 1

    iget-object v0, p0, Le/a/l/c/a/g;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/premiumusertab/list/LabelView;

    return-object v0
.end method

.method public a0(Le/a/l/c/a/q;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/l/c/a/g;->N4()Lcom/truecaller/premium/premiumusertab/list/LabelView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->setLabel(Le/a/l/c/a/q;)V

    .line 3
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_3

    const/4 p1, 0x0

    :cond_3
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_4
    return-void
.end method

.method public l3(Le/a/l/v2/i/b/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p1, Le/a/l/v2/i/b/a;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/l/c/a/g;->b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Le/a/l/c/a/g;->b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p1, Le/a/l/v2/i/b/a;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Le/a/l/v2/i/b/a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->setDescription(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public t2()V
    .locals 0

    return-void
.end method
