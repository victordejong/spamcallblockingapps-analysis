.class Lzendesk/belvedere/m;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/m$f;
    }
.end annotation


# instance fields
.field private final a:Lzendesk/belvedere/k;

.field private final b:Lzendesk/belvedere/f;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lzendesk/belvedere/o;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lzendesk/belvedere/FloatingActionMenu;

.field private j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Landroidx/appcompat/widget/Toolbar;

.field private l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/e;Lzendesk/belvedere/b$c;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p2, v0, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    invoke-direct {p0, p2}, Lzendesk/belvedere/m;->o(Landroid/view/View;)V

    .line 8
    iput-object p1, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    .line 9
    new-instance p1, Lzendesk/belvedere/f;

    invoke-direct {p1}, Lzendesk/belvedere/f;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    .line 10
    invoke-virtual {p3}, Lzendesk/belvedere/e;->d1()Lzendesk/belvedere/o;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/m;->d:Lzendesk/belvedere/o;

    .line 11
    invoke-virtual {p4}, Lzendesk/belvedere/b$c;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/m;->c:Ljava/util/List;

    .line 12
    new-instance p1, Lzendesk/belvedere/h;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Lzendesk/belvedere/h;-><init>(Landroid/content/Context;Lzendesk/belvedere/b$c;)V

    .line 13
    new-instance p2, Lzendesk/belvedere/k;

    invoke-direct {p2, p1, p0, p3}, Lzendesk/belvedere/k;-><init>(Lzendesk/belvedere/i;Lzendesk/belvedere/j;Lzendesk/belvedere/e;)V

    iput-object p2, p0, Lzendesk/belvedere/m;->a:Lzendesk/belvedere/k;

    .line 14
    invoke-virtual {p2}, Lzendesk/belvedere/k;->f()V

    return-void
.end method

.method static synthetic i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic j(Lzendesk/belvedere/m;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lzendesk/belvedere/m;)Lzendesk/belvedere/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/m;->d:Lzendesk/belvedere/o;

    return-object p0
.end method

.method static synthetic l(Lzendesk/belvedere/m;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic m(Lzendesk/belvedere/m;)Lzendesk/belvedere/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/m;->a:Lzendesk/belvedere/k;

    return-object p0
.end method

.method static synthetic n(Lzendesk/belvedere/m;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/belvedere/m;->u(F)V

    return-void
.end method

.method private o(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lzendesk/belvedere/a0/f;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    .line 2
    sget v0, Lzendesk/belvedere/a0/f;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/m;->f:Landroid/view/View;

    .line 3
    sget v0, Lzendesk/belvedere/a0/f;->h:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    sget v0, Lzendesk/belvedere/a0/f;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    .line 5
    sget v0, Lzendesk/belvedere/a0/f;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/m;->g:Landroid/view/View;

    .line 6
    sget v0, Lzendesk/belvedere/a0/f;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/m;->h:Landroid/view/View;

    .line 7
    sget v0, Lzendesk/belvedere/a0/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/FloatingActionMenu;

    iput-object p1, p0, Lzendesk/belvedere/m;->i:Lzendesk/belvedere/FloatingActionMenu;

    return-void
.end method

.method private p(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/belvedere/a0/d;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lf/h/l/t;->r0(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    new-instance v1, Lzendesk/belvedere/m$b;

    invoke-direct {v1, p0}, Lzendesk/belvedere/m$b;-><init>(Lzendesk/belvedere/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/belvedere/z;->e(Landroid/view/View;Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lzendesk/belvedere/m;->d:Lzendesk/belvedere/o;

    invoke-virtual {v3}, Lzendesk/belvedere/o;->getKeyboardHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I(I)V

    .line 6
    iget-object p1, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 7
    iget-object p1, p0, Lzendesk/belvedere/m;->d:Lzendesk/belvedere/o;

    new-instance v2, Lzendesk/belvedere/m$c;

    invoke-direct {v2, p0}, Lzendesk/belvedere/m$c;-><init>(Lzendesk/belvedere/m;)V

    invoke-virtual {p1, v2}, Lzendesk/belvedere/o;->setKeyboardHeightListener(Lzendesk/belvedere/o$d;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(Z)V

    .line 9
    iget-object p1, p0, Lzendesk/belvedere/m;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 10
    iget-object p1, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    invoke-static {p1}, Lzendesk/belvedere/o;->k(Landroid/app/Activity;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 12
    iget-object p1, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private q(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->f:Landroid/view/View;

    new-instance v1, Lzendesk/belvedere/m$d;

    invoke-direct {v1, p0, p2, p1}, Lzendesk/belvedere/m$d;-><init>(Lzendesk/belvedere/m;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private r(Lzendesk/belvedere/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/g;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 3
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 6
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheQuality(I)V

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/g;

    invoke-direct {v0}, Landroidx/recyclerview/widget/g;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u;->setSupportsChangeAnimations(Z)V

    .line 9
    iget-object v1, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 10
    iget-object v0, p0, Lzendesk/belvedere/m;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method private s(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lzendesk/belvedere/a0/e;->e:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lzendesk/belvedere/a0/i;->m:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 3
    iget-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lzendesk/belvedere/m$a;

    invoke-direct {v1, p0, p1}, Lzendesk/belvedere/m$a;-><init>(Lzendesk/belvedere/m;Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lzendesk/belvedere/m;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lzendesk/belvedere/m;->g:Landroid/view/View;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lzendesk/belvedere/m$f;

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lzendesk/belvedere/m$f;-><init>(Lzendesk/belvedere/m;ZLzendesk/belvedere/m$a;)V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    :cond_1
    return-void
.end method

.method static t(Landroid/app/Activity;Landroid/view/ViewGroup;Lzendesk/belvedere/e;Lzendesk/belvedere/b$c;)Lzendesk/belvedere/m;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/h;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lzendesk/belvedere/m;

    invoke-direct {v1, p0, v0, p2, p3}, Lzendesk/belvedere/m;-><init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/e;Lzendesk/belvedere/b$c;)V

    const/16 p0, 0x30

    .line 3
    invoke-virtual {v1, p1, p0, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v1
.end method

.method private u(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/belvedere/a0/b;->b:I

    invoke-static {v1, v2}, Lzendesk/belvedere/z;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 6
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v1, Lzendesk/belvedere/m$e;

    invoke-direct {v1, p0, v4, v0}, Lzendesk/belvedere/m$e;-><init>(Lzendesk/belvedere/m;Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    :goto_1
    const/16 v0, 0x17

    if-lt v5, v0, :cond_4

    .line 11
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    const/16 p1, 0x2000

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_4

    const/16 v3, 0x2f

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    invoke-direct {p0, v0}, Lzendesk/belvedere/m;->r(Lzendesk/belvedere/f;)V

    .line 2
    invoke-direct {p0, p1}, Lzendesk/belvedere/m;->s(Z)V

    .line 3
    invoke-direct {p0, p1}, Lzendesk/belvedere/m;->p(Z)V

    .line 4
    iget-object p1, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    iget-object v0, p0, Lzendesk/belvedere/m;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lzendesk/belvedere/m;->q(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;ZZLzendesk/belvedere/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;ZZ",
            "Lzendesk/belvedere/f$b;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lzendesk/belvedere/m;->d:Lzendesk/belvedere/o;

    invoke-virtual {p3}, Lzendesk/belvedere/o;->getInputTrap()Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p3}, Lzendesk/belvedere/o;->o(Landroid/widget/EditText;)V

    .line 2
    :cond_0
    iget-object p3, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 v0, -0x1

    .line 3
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_1

    .line 5
    iget-object p3, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    invoke-static {p5}, Lzendesk/belvedere/g;->a(Lzendesk/belvedere/f$b;)Lzendesk/belvedere/g$c;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzendesk/belvedere/f;->c(Lzendesk/belvedere/g$b;)V

    .line 6
    :cond_1
    iget-object p3, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    iget-object p4, p0, Lzendesk/belvedere/m;->e:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, p5, p4}, Lzendesk/belvedere/g;->b(Ljava/util/List;Lzendesk/belvedere/f$b;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lzendesk/belvedere/f;->d(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    invoke-virtual {p1, p2}, Lzendesk/belvedere/f;->e(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lzendesk/belvedere/m;->b:Lzendesk/belvedere/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lzendesk/belvedere/m;->u(F)V

    .line 3
    iget-object v0, p0, Lzendesk/belvedere/m;->a:Lzendesk/belvedere/k;

    invoke-virtual {v0}, Lzendesk/belvedere/k;->e()V

    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->i:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lzendesk/belvedere/a0/e;->g:I

    sget v2, Lzendesk/belvedere/a0/f;->a:I

    sget v3, Lzendesk/belvedere/a0/i;->c:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lzendesk/belvedere/FloatingActionMenu;->b(IIILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public f(Lzendesk/belvedere/q;Lzendesk/belvedere/e;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lzendesk/belvedere/q;->f(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public g(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->m:Landroid/app/Activity;

    sget v1, Lzendesk/belvedere/a0/i;->f:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%s (%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/m;->k:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lzendesk/belvedere/a0/i;->f:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m;->i:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lzendesk/belvedere/a0/e;->f:I

    sget v2, Lzendesk/belvedere/a0/f;->b:I

    sget v3, Lzendesk/belvedere/a0/i;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lzendesk/belvedere/FloatingActionMenu;->b(IIILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
