.class public final Lcom/hiya/stingray/ui/stats/CallsStatsPie;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final f:Lg/e/a/a/c/f;

.field private final g:Landroid/view/View;

.field private h:Lcom/hiya/stingray/ui/stats/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lg/e/a/a/c/f;

    invoke-direct {p2, p1}, Lg/e/a/a/c/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->f:Lg/e/a/a/c/f;

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->g:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lg/e/a/a/c/c;->setTouchEnabled(Z)V

    .line 6
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getDescription()Lg/e/a/a/d/c;

    move-result-object v2

    const-string v3, "pieChart.description"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lg/e/a/a/d/b;->g(Z)V

    .line 7
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getLegend()Lg/e/a/a/d/e;

    move-result-object v2

    const-string v3, "pieChart.legend"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lg/e/a/a/d/b;->g(Z)V

    .line 8
    invoke-virtual {p2, v0}, Lg/e/a/a/c/f;->setDrawSlicesUnderHole(Z)V

    const/high16 v2, 0x42840000    # 66.0f

    .line 9
    invoke-virtual {p2, v2}, Lg/e/a/a/c/f;->setHoleRadius(F)V

    .line 10
    invoke-virtual {p2, v0}, Lg/e/a/a/c/f;->setTransparentCircleAlpha(I)V

    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Lg/e/a/a/c/f;->setHoleColor(I)V

    .line 12
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance p1, Lcom/hiya/stingray/ui/stats/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/hiya/stingray/ui/stats/c$a;-><init>(Ljava/util/List;IIIILjava/util/List;ILkotlin/w/c/g;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->h:Lcom/hiya/stingray/ui/stats/c$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->f:Lg/e/a/a/c/f;

    sget-object v1, Lg/e/a/a/a/b;->a:Lg/e/a/a/a/b$d;

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1}, Lg/e/a/a/c/c;->f(ILg/e/a/a/a/b$d;)V

    return-void
.end method

.method public final getData()Lcom/hiya/stingray/ui/stats/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->h:Lcom/hiya/stingray/ui/stats/c$a;

    return-object v0
.end method

.method public final setData(Lcom/hiya/stingray/ui/stats/c$a;)V
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->h:Lcom/hiya/stingray/ui/stats/c$a;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 6
    new-instance v8, Lg/e/a/a/e/p;

    int-to-float v7, v7

    invoke-direct {v8, v7}, Lg/e/a/a/e/p;-><init>(F)V

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Lg/e/a/a/e/o;

    const-string v7, ""

    invoke-direct {v6, v1, v7}, Lg/e/a/a/e/o;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->g:Landroid/view/View;

    const-string v7, "totalLayout"

    invoke-static {v1, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lcom/hiya/stingray/o;->B4:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v7, "totalLayout.totalCallsNumber"

    invoke-static {v1, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->e0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v6, v3}, Lg/e/a/a/e/e;->J0(Z)V

    .line 9
    invoke-virtual {v6, v3}, Lg/e/a/a/e/e;->u0(Z)V

    new-array p1, v0, [I

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f060150

    invoke-static {v0, v7}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f060177

    invoke-static {v0, v3}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v4

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0600f3

    invoke-static {v0, v3}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v5

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060041

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v2

    .line 14
    invoke-virtual {v6, p1}, Lg/e/a/a/e/e;->I0([I)V

    .line 15
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->f:Lg/e/a/a/c/f;

    new-instance v0, Lg/e/a/a/e/n;

    invoke-direct {v0, v6}, Lg/e/a/a/e/n;-><init>(Lg/e/a/a/h/b/h;)V

    invoke-virtual {p1, v0}, Lg/e/a/a/c/c;->setData(Lg/e/a/a/e/g;)V

    .line 16
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->f:Lg/e/a/a/c/f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
