.class public final Le/a/a/m/w;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/t1;


# instance fields
.field public final a:Lcom/truecaller/common/ui/banner/BannerViewX;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/m/w;->b:Landroid/view/View;

    const-string v0, "ItemEvent.ACTION_OPEN_PREMIUM"

    const-string v1, "ItemEvent.ACTION_DISMISS_PREMIUM"

    .line 2
    invoke-static {p1, p2, p0, v0, v1}, Le/a/c/p/a;->q(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/common/ui/banner/BannerViewX;

    move-result-object p1

    iput-object p1, p0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    return-void
.end method


# virtual methods
.method public H3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImageResource(I)V

    return-void
.end method

.method public I3(Ljava/lang/String;I)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImageResource(I)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/m/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3
    iget-object v0, p0, Le/a/a/m/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 4
    iget-object v0, p0, Le/a/a/m/w;->b:Landroid/view/View;

    invoke-static {v0}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 6
    check-cast v0, Le/a/z3/d;

    .line 7
    invoke-virtual {v0, p2}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object p1

    .line 10
    new-instance p2, Le/a/a/m/w$a;

    move-object v3, p2

    move-object v4, p0

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Le/a/a/m/w$a;-><init>(Le/a/a/m/w;IIII)V

    invoke-virtual {p1, p2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setTitle(Ljava/lang/String;)V

    return-void
.end method
