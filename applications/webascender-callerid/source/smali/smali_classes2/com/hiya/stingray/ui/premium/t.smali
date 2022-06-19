.class public final Lcom/hiya/stingray/ui/premium/t;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private final b:Landroid/content/Context;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;

.field private final d:Landroid/widget/ScrollView;

.field private final e:Landroid/view/View;

.field private final f:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/t;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/hiya/stingray/ui/premium/t;->d:Landroid/widget/ScrollView;

    iput-object p4, p0, Lcom/hiya/stingray/ui/premium/t;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/hiya/stingray/ui/premium/t;->f:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$t;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/t;->c()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->d:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->e:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/t;->a:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->f:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 9
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/t;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setElevation(F)V

    .line 10
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/t;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/t;->c()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/t;->c()V

    return-void
.end method
