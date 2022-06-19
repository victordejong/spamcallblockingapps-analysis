.class public Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;,
        Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;,
        Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;,
        Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;
    }
.end annotation


# static fields
.field private static D:Landroid/view/animation/Interpolator;

.field private static E:Landroid/view/animation/Interpolator;

.field private static F:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/animation/AnimatorSet;

.field private r:Landroid/animation/AnimatorSet;

.field private s:Lcom/hiya/stingray/ui/common/fab/a;

.field private t:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Lcom/hiya/stingray/ui/common/fab/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->D:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->E:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->F:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q:Landroid/animation/AnimatorSet;

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r:Landroid/animation/AnimatorSet;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->f:I

    return p0
.end method

.method static synthetic b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->g:I

    return p0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->F:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->E:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic e(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    return p0
.end method

.method static synthetic f(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->h:I

    return p0
.end method

.method static synthetic g(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->j:Z

    return p0
.end method

.method static synthetic h(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;)Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->t:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;

    return-object p1
.end method

.method static synthetic i(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic j(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic k()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->D:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private l(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xc

    .line 1
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private n(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/fab/b;->c(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->A:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;->a()V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    const v3, 0x7f0901af

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    const p1, 0x7f0901ae

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->i:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setSize(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$b;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    return-void
.end method

.method private r()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private s(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private u(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->n:I

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/common/fab/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 6
    sget-object v0, Lcom/hiya/stingray/p;->c:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x106000b

    .line 7
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->f:I

    const v0, 0x1060013

    .line 8
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->g:I

    const v0, 0x1060012

    .line 9
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->h:I

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->i:I

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->j:Z

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    const/4 v0, 0x6

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w:I

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->x:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->setupFabAnimation(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->n(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    .line 4
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w:I

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_0

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    goto/16 :goto_16

    :cond_0
    if-ne v1, v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sub-int v8, p4, p2

    .line 2
    iget-object v9, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    sub-int v9, p5, p3

    .line 3
    iget v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v:I

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    .line 4
    iget-object v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/widget/ImageButton;->layout(IIII)V

    if-eqz v1, :cond_3

    .line 5
    iget v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    sub-int v10, v8, v10

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    .line 6
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v11, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    add-int/2addr v10, v11

    .line 7
    :goto_2
    iget v11, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    sub-int/2addr v11, v6

    :goto_3
    if-ltz v11, :cond_1d

    .line 8
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9
    iget-object v13, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    if-eq v12, v13, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v10, v13

    .line 11
    :cond_5
    iget-object v13, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v7

    add-int/2addr v13, v9

    .line 12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v8, v10

    int-to-float v13, v13

    .line 13
    iget-boolean v14, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    move v14, v13

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    iget-boolean v14, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v14, :cond_7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    .line 16
    invoke-static {v14}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v13, v3, v6

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 17
    invoke-static {v14}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v15, v7, [F

    aput v13, v15, v5

    aput v4, v15, v6

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 18
    invoke-virtual {v14, v12}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d(Landroid/view/View;)V

    if-eqz v1, :cond_8

    .line 19
    iget v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    sub-int/2addr v10, v3

    goto :goto_6

    .line 20
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v10, v3

    iget v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    add-int/2addr v10, v3

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz p1, :cond_c

    .line 21
    iget-object v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/common/fab/b;->b()V

    :cond_c
    if-eqz v1, :cond_d

    sub-int v3, p5, p3

    .line 22
    iget-object v8, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 23
    :goto_8
    iget v8, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->x:I

    if-nez v8, :cond_e

    sub-int v8, p4, p2

    iget v9, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    goto :goto_9

    :cond_e
    iget v8, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    div-int/2addr v8, v7

    .line 24
    :goto_9
    iget-object v9, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    .line 25
    iget-object v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v9, v3, v11, v12}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 26
    iget v9, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    div-int/2addr v9, v7

    iget v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m:I

    add-int/2addr v9, v10

    .line 27
    iget v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->x:I

    if-nez v10, :cond_f

    sub-int v9, v8, v9

    goto :goto_a

    :cond_f
    add-int/2addr v9, v8

    :goto_a
    if-eqz v1, :cond_10

    .line 28
    iget v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    sub-int v10, v3, v10

    goto :goto_b

    :cond_10
    iget-object v10, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    .line 29
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    iget v11, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    add-int/2addr v10, v11

    .line 30
    :goto_b
    iget v11, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    sub-int/2addr v11, v6

    :goto_c
    if-ltz v11, :cond_1d

    .line 31
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 32
    iget-object v13, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    if-eq v12, v13, :cond_1c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_11

    goto/16 :goto_14

    .line 33
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v7

    sub-int v13, v8, v13

    if-eqz v1, :cond_12

    .line 34
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    .line 35
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v3, v10

    int-to-float v14, v14

    .line 36
    iget-boolean v15, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    goto :goto_d

    :cond_13
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 37
    iget-boolean v15, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v15, :cond_14

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_14
    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 38
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    .line 39
    invoke-static {v15}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 p1, v3

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v14, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 40
    invoke-static {v15}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v7, [F

    aput v14, v3, v5

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 41
    invoke-virtual {v15, v12}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d(Landroid/view/View;)V

    const v2, 0x7f0901af

    .line 42
    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 43
    iget v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->x:I

    if-nez v3, :cond_15

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v9, v3

    goto :goto_f

    .line 45
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 46
    :goto_f
    iget v15, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->x:I

    if-nez v15, :cond_16

    move v6, v3

    goto :goto_10

    :cond_16
    move v6, v9

    :goto_10
    if-nez v15, :cond_17

    move v3, v9

    .line 47
    :cond_17
    iget v15, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->n:I

    sub-int v15, v10, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v4, v15, v16

    invoke-virtual {v2, v6, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 49
    new-instance v4, Landroid/graphics/Rect;

    .line 50
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v15, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    div-int/2addr v15, v7

    sub-int v15, v10, v15

    .line 51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 52
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    iget v5, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    div-int/2addr v5, v7

    add-int/2addr v13, v5

    invoke-direct {v4, v6, v15, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    iget-object v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    new-instance v5, Landroid/view/TouchDelegate;

    invoke-direct {v5, v4, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Lcom/hiya/stingray/ui/common/fab/b;->a(Landroid/view/TouchDelegate;)V

    .line 54
    iget-boolean v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_11

    :cond_18
    move v3, v14

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    iget-boolean v3, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v3, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;

    .line 57
    invoke-static {v3}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    const/4 v6, 0x0

    const/4 v13, 0x0

    aput v6, v5, v13

    const/4 v15, 0x1

    aput v14, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 58
    invoke-static {v3}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    aput v14, v5, v13

    aput v6, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 59
    invoke-virtual {v3, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d(Landroid/view/View;)V

    goto :goto_13

    :cond_1a
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_13
    if-eqz v1, :cond_1b

    .line 60
    iget v2, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    sub-int/2addr v10, v2

    goto :goto_15

    .line 61
    :cond_1b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    iget v2, v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    add-int/2addr v10, v2

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 p1, v3

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_15
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, p1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_1d
    :goto_16
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    .line 3
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p2, v3, :cond_4

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget v7, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 9
    iget v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v:I

    goto :goto_1

    .line 10
    :cond_2
    iget v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r()Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f0901af

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r()Z

    move-result p2

    if-nez p2, :cond_6

    .line 16
    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->u:I

    if-lez v0, :cond_5

    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m:I

    add-int/2addr p1, v0

    :cond_5
    add-int v2, p2, p1

    goto :goto_3

    .line 17
    :cond_6
    iget v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v:I

    .line 18
    :goto_3
    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k:I

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_4

    .line 19
    :cond_7
    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v2, p1

    .line 20
    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l(I)I

    move-result v2

    goto :goto_4

    .line 21
    :cond_8
    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l:I

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->y:I

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v1, p1

    .line 22
    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->l(I)I

    move-result v1

    .line 23
    :goto_4
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;

    .line 3
    iget-boolean v0, p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;->f:Z

    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/fab/b;->c(Z)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->t:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;->a(F)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;

    invoke-direct {v1, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    iput-boolean v0, v1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$g;->f:Z

    return-object v1
.end method

.method public q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->z:Lcom/hiya/stingray/ui/common/fab/b;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/fab/b;->c(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->A:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;->b()V

    :cond_0
    return-void
.end method

.method public setAddButtonColorNormal(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->g:I

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setAddButtonColorPressed(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->h:I

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setAddButtonPlusColor(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s(I)I

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->f:I

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/fab/a;->setPlusColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->A:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;

    return-void
.end method

.method public setupFabAnimation(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f01001f

    .line 1
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->B:Landroid/view/animation/Animation;

    const v0, 0x7f01001e

    .line 2
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->C:Landroid/view/animation/Animation;

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$c;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p:Z

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    return v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p:Z

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->s:Lcom/hiya/stingray/ui/common/fab/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->B:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->q()V

    :goto_0
    return-void
.end method
