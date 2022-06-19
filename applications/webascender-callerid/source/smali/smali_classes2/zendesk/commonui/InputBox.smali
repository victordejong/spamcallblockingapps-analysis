.class public Lzendesk/commonui/InputBox;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/commonui/InputBox$e;
    }
.end annotation


# instance fields
.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/AnimatorSet;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroidx/cardview/widget/CardView;

.field private m:Landroid/widget/EditText;

.field private n:Lzendesk/commonui/AttachmentsIndicator;

.field private o:Landroid/widget/ImageView;

.field private p:Lzendesk/commonui/InputBox$e;

.field private q:Landroid/text/TextWatcher;

.field private r:Landroid/view/View$OnClickListener;

.field private s:F

.field private t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lzendesk/commonui/InputBox;->o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lzendesk/commonui/InputBox;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lzendesk/commonui/InputBox;)Lzendesk/commonui/InputBox$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->p:Lzendesk/commonui/InputBox$e;

    return-object p0
.end method

.method static synthetic c(Lzendesk/commonui/InputBox;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lzendesk/commonui/InputBox;)Lzendesk/commonui/AttachmentsIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    return-object p0
.end method

.method static synthetic e(Lzendesk/commonui/InputBox;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/commonui/InputBox;->n(ZZ)V

    return-void
.end method

.method static synthetic f(Lzendesk/commonui/InputBox;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->q:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic g(Lzendesk/commonui/InputBox;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->j:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic h(Lzendesk/commonui/InputBox;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/InputBox;->k:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 1
    sget v0, Lzendesk/commonui/h;->I:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lzendesk/commonui/InputBox;->l:Landroidx/cardview/widget/CardView;

    .line 2
    sget v0, Lzendesk/commonui/h;->f:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 3
    sget v0, Lzendesk/commonui/h;->e:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/commonui/AttachmentsIndicator;

    iput-object v0, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    .line 4
    sget v0, Lzendesk/commonui/h;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    return-void
.end method

.method private j()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lzendesk/commonui/i;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3
    sget v2, Lzendesk/commonui/f;->g:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    sget v3, Lzendesk/commonui/f;->l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5
    sget v4, Lzendesk/commonui/f;->m:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 6
    sget v5, Lzendesk/commonui/f;->h:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 7
    sget v6, Lzendesk/commonui/f;->n:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 8
    sget v7, Lzendesk/commonui/f;->i:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 9
    sget v8, Lzendesk/commonui/f;->k:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 10
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/commonui/InputBox;->f:Landroid/animation/AnimatorSet;

    .line 11
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/commonui/InputBox;->h:Landroid/animation/AnimatorSet;

    .line 12
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/commonui/InputBox;->g:Landroid/animation/AnimatorSet;

    .line 13
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/commonui/InputBox;->i:Landroid/animation/AnimatorSet;

    .line 14
    new-instance v8, Lf/n/a/a/c;

    invoke-direct {v8}, Lf/n/a/a/c;-><init>()V

    .line 15
    new-instance v9, Lf/n/a/a/b;

    invoke-direct {v9}, Lf/n/a/a/b;-><init>()V

    .line 16
    iget-object v10, p0, Lzendesk/commonui/InputBox;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object v10, p0, Lzendesk/commonui/InputBox;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v8, p0, Lzendesk/commonui/InputBox;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v8, p0, Lzendesk/commonui/InputBox;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iget-object v8, p0, Lzendesk/commonui/InputBox;->f:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    int-to-long v10, v1

    .line 21
    invoke-static {v9, v2, v3, v10, v11}, Lzendesk/commonui/s;->b(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v8, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 22
    invoke-static {v8, v5, v4, v10, v11}, Lzendesk/commonui/s;->c(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v8, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 23
    invoke-static {v8, v7, v6, v10, v11}, Lzendesk/commonui/s;->d(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v8, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    const/4 v9, 0x0

    .line 24
    invoke-static {v8, v9, v0, v10, v11}, Lzendesk/commonui/s;->a(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 25
    iget-object v1, p0, Lzendesk/commonui/InputBox;->g:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 26
    invoke-static {v8, v4, v5, v10, v11}, Lzendesk/commonui/s;->c(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 27
    invoke-static {v5, v6, v7, v10, v11}, Lzendesk/commonui/s;->d(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 28
    invoke-static {v5, v3, v2, v10, v11}, Lzendesk/commonui/s;->b(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 29
    invoke-static {v5, v0, v9, v10, v11}, Lzendesk/commonui/s;->a(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 30
    iget-object v1, p0, Lzendesk/commonui/InputBox;->h:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 31
    invoke-static {v5, v2, v3, v10, v11}, Lzendesk/commonui/s;->b(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 32
    invoke-static {v5, v4, v4, v10, v11}, Lzendesk/commonui/s;->c(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 33
    invoke-static {v5, v7, v6, v10, v11}, Lzendesk/commonui/s;->d(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 34
    invoke-static {v5, v9, v0, v10, v11}, Lzendesk/commonui/s;->a(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 35
    iget-object v1, p0, Lzendesk/commonui/InputBox;->i:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 36
    invoke-static {v5, v4, v4, v10, v11}, Lzendesk/commonui/s;->c(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 37
    invoke-static {v4, v6, v7, v10, v11}, Lzendesk/commonui/s;->d(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 38
    invoke-static {v4, v3, v2, v10, v11}, Lzendesk/commonui/s;->b(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    .line 39
    invoke-static {v2, v0, v9, v10, v11}, Lzendesk/commonui/s;->a(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    new-instance v1, Lzendesk/commonui/InputBox$a;

    invoke-direct {v1, p0}, Lzendesk/commonui/InputBox$a;-><init>(Lzendesk/commonui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    new-instance v1, Lzendesk/commonui/InputBox$b;

    invoke-direct {v1, p0}, Lzendesk/commonui/InputBox$b;-><init>(Lzendesk/commonui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    new-instance v1, Lzendesk/commonui/InputBox$c;

    invoke-direct {v1, p0}, Lzendesk/commonui/InputBox$c;-><init>(Lzendesk/commonui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    new-instance v1, Lzendesk/commonui/InputBox$d;

    invoke-direct {v1, p0}, Lzendesk/commonui/InputBox$d;-><init>(Lzendesk/commonui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private l(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/commonui/InputBox;->f:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lzendesk/commonui/InputBox;->j:Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lzendesk/commonui/InputBox;->g:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lzendesk/commonui/InputBox;->k:Landroid/animation/AnimatorSet;

    .line 3
    iget-object p1, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4
    invoke-direct {p0, v1}, Lzendesk/commonui/InputBox;->m(Z)V

    .line 5
    iget-object p1, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lzendesk/commonui/InputBox;->h:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lzendesk/commonui/InputBox;->j:Landroid/animation/AnimatorSet;

    .line 7
    iget-object p1, p0, Lzendesk/commonui/InputBox;->i:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lzendesk/commonui/InputBox;->k:Landroid/animation/AnimatorSet;

    .line 8
    iget-object p1, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 9
    iget-object p1, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    invoke-direct {p0, v0}, Lzendesk/commonui/InputBox;->m(Z)V

    :goto_0
    return-void
.end method

.method private m(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lzendesk/commonui/f;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    sget v2, Lzendesk/commonui/f;->h:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    iget-object v2, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    move v1, v0

    .line 5
    :cond_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6
    iget-object p1, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n(ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    sget v1, Lzendesk/commonui/d;->a:I

    sget v2, Lzendesk/commonui/e;->c:I

    .line 3
    invoke-static {v1, v0, v2}, Lzendesk/commonui/r;->c(ILandroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v1, Lzendesk/commonui/e;->g:I

    .line 4
    invoke-static {v1, v0}, Lzendesk/commonui/r;->a(ILandroid/content/Context;)I

    move-result v0

    .line 5
    :goto_0
    iget-object v1, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6
    iget-object p2, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lzendesk/commonui/InputBox;->o:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lzendesk/commonui/r;->b(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lzendesk/commonui/j;->l:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lzendesk/commonui/InputBox;->i()V

    .line 4
    invoke-direct {p0}, Lzendesk/commonui/InputBox;->k()V

    .line 5
    invoke-direct {p0}, Lzendesk/commonui/InputBox;->j()V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lzendesk/commonui/InputBox;->l(Z)V

    .line 7
    iget-object v0, p0, Lzendesk/commonui/InputBox;->l:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result v0

    iput v0, p0, Lzendesk/commonui/InputBox;->s:F

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzendesk/commonui/f;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lzendesk/commonui/InputBox;->t:F

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAttachmentsCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/commonui/InputBox;->n:Lzendesk/commonui/AttachmentsIndicator;

    invoke-virtual {v0, p1}, Lzendesk/commonui/AttachmentsIndicator;->setAttachmentsCount(I)V

    return-void
.end method

.method public setAttachmentsIndicatorClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/InputBox;->r:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lzendesk/commonui/InputBox;->l(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3
    iget-object v0, p0, Lzendesk/commonui/InputBox;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lzendesk/commonui/InputBox;->l:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    iget p1, p0, Lzendesk/commonui/InputBox;->s:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lzendesk/commonui/InputBox;->t:F

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    return-void
.end method

.method public setInputTextConsumer(Lzendesk/commonui/InputBox$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/InputBox;->p:Lzendesk/commonui/InputBox$e;

    return-void
.end method

.method public setInputTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/InputBox;->q:Landroid/text/TextWatcher;

    return-void
.end method
