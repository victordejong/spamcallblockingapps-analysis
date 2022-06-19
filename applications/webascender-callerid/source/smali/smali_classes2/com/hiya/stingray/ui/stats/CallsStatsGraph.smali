.class public final Lcom/hiya/stingray/ui/stats/CallsStatsGraph;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final f:Lg/e/a/a/c/e;

.field private final g:Ljava/text/SimpleDateFormat;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lg/e/a/a/c/e;

    invoke-direct {p2, p1}, Lg/e/a/a/c/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->f:Lg/e/a/a/c/e;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->g:Ljava/text/SimpleDateFormat;

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

    move-result-object v1

    const-string v2, "lineChart.description"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/e/a/a/d/b;->g(Z)V

    .line 7
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getLegend()Lg/e/a/a/d/e;

    move-result-object v1

    const-string v2, "lineChart.legend"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/e/a/a/d/b;->g(Z)V

    .line 8
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisRight()Lg/e/a/a/d/i;

    move-result-object v1

    const-string v2, "lineChart.axisRight"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/e/a/a/d/b;->g(Z)V

    .line 9
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    const-string v2, "lineChart.axisLeft"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lg/e/a/a/d/a;->E(F)V

    .line 10
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lg/e/a/a/d/i;->f0(F)V

    .line 11
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lg/e/a/a/d/i;->g0(F)V

    .line 12
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lg/e/a/a/d/a;->I(F)V

    .line 13
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hiya/stingray/util/o;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f06003e

    goto :goto_0

    :cond_0
    const v5, 0x7f06003d

    :goto_0
    invoke-static {p1, v5}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lg/e/a/a/d/a;->J(I)V

    .line 14
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lg/e/a/a/d/a;->K(F)V

    .line 15
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/e/a/a/d/a;->G(Z)V

    .line 16
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f060040

    invoke-static {p1, v4}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lg/e/a/a/d/b;->h(I)V

    .line 17
    invoke-virtual {p2}, Lg/e/a/a/c/b;->getAxisLeft()Lg/e/a/a/d/i;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$a;

    invoke-direct {v2}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$a;-><init>()V

    invoke-virtual {v1, v2}, Lg/e/a/a/d/a;->P(Lg/e/a/a/f/e;)V

    .line 18
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v1

    const-string v2, "lineChart.xAxis"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lg/e/a/a/d/a;->E(F)V

    .line 19
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x1d

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lg/e/a/a/d/a;->D(F)V

    .line 20
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    invoke-virtual {v1, v3}, Lg/e/a/a/d/h;->T(Lg/e/a/a/d/h$a;)V

    .line 21
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/e/a/a/d/a;->H(Z)V

    .line 22
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lg/e/a/a/d/b;->h(I)V

    .line 23
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object p1

    const/4 v1, 0x5

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lg/e/a/a/d/a;->M(IZ)V

    .line 24
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/e/a/a/d/a;->F(Z)V

    .line 25
    invoke-virtual {p2}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$b;-><init>(Lcom/hiya/stingray/ui/stats/CallsStatsGraph;)V

    invoke-virtual {p1, p2}, Lg/e/a/a/d/a;->P(Lg/e/a/a/f/e;)V

    .line 26
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/stats/CallsStatsGraph;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->g:Ljava/text/SimpleDateFormat;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->f:Lg/e/a/a/c/e;

    sget-object v1, Lg/e/a/a/a/b;->a:Lg/e/a/a/a/b$d;

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1}, Lg/e/a/a/c/c;->f(ILg/e/a/a/a/b$d;)V

    return-void
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->h:Ljava/util/List;

    return-object v0
.end method

.method public final setData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->h:Ljava/util/List;

    const/16 v0, 0x1e

    .line 2
    invoke-static {p1, v0}, Lkotlin/s/k;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 6
    new-instance v7, Lg/e/a/a/e/i;

    int-to-float v8, v0

    int-to-float v3, v3

    sub-float/2addr v8, v3

    int-to-float v3, v5

    sub-float/2addr v8, v3

    int-to-float v3, v4

    invoke-direct {v7, v8, v3}, Lg/e/a/a/e/i;-><init>(FF)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/s/k;->p()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$c;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$c;-><init>()V

    invoke-static {v1, p1}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance v0, Lg/e/a/a/e/k;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lg/e/a/a/e/k;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Lg/e/a/a/e/e;->u0(Z)V

    .line 12
    sget-object p1, Lg/e/a/a/e/k$a;->HORIZONTAL_BEZIER:Lg/e/a/a/e/k$a;

    invoke-virtual {v0, p1}, Lg/e/a/a/e/k;->V0(Lg/e/a/a/e/k$a;)V

    .line 13
    invoke-virtual {v0, v2}, Lg/e/a/a/e/k;->T0(Z)V

    .line 14
    invoke-virtual {v0, v2}, Lg/e/a/a/e/k;->U0(Z)V

    .line 15
    invoke-virtual {v0, v5}, Lg/e/a/a/e/l;->Q0(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hiya/stingray/util/o;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, -0x1000000

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {v0, p1}, Lg/e/a/a/e/e;->H0(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {v0, p1}, Lg/e/a/a/e/l;->S0(F)V

    .line 18
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f06003f

    invoke-static {v6, v7}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f06003c

    invoke-static {v6, v1}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v1

    aput v1, v4, v5

    .line 21
    invoke-direct {p1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, p1}, Lg/e/a/a/e/l;->R0(Landroid/graphics/drawable/Drawable;)V

    .line 22
    new-instance p1, Lg/e/a/a/e/j;

    new-array v1, v5, [Lg/e/a/a/h/b/e;

    aput-object v0, v1, v2

    invoke-direct {p1, v1}, Lg/e/a/a/e/j;-><init>([Lg/e/a/a/h/b/e;)V

    .line 23
    invoke-virtual {p1, v2}, Lg/e/a/a/e/g;->t(Z)V

    .line 24
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->f:Lg/e/a/a/c/e;

    invoke-virtual {v0, p1}, Lg/e/a/a/c/c;->setData(Lg/e/a/a/e/g;)V

    .line 25
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->f:Lg/e/a/a/c/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
