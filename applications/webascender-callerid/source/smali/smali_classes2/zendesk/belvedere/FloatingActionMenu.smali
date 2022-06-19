.class public Lzendesk/belvedere/FloatingActionMenu;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/FloatingActionMenu$c;
    }
.end annotation


# instance fields
.field private f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private g:Landroid/view/LayoutInflater;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/h/k/c<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Lzendesk/belvedere/FloatingActionMenu$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lzendesk/belvedere/FloatingActionMenu$b;

    invoke-direct {p2, p0}, Lzendesk/belvedere/FloatingActionMenu$b;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->m:Lzendesk/belvedere/FloatingActionMenu$c;

    .line 3
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lzendesk/belvedere/FloatingActionMenu;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    return-object p0
.end method

.method private c(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-static {v0, p2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lzendesk/belvedere/a0/h;->a:I

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lzendesk/belvedere/a0/f;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->g:Landroid/view/LayoutInflater;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 9
    sget v0, Lzendesk/belvedere/a0/g;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzendesk/belvedere/FloatingActionMenu;->j:I

    .line 10
    sget v0, Lzendesk/belvedere/a0/g;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FloatingActionMenu;->k:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzendesk/belvedere/a0/g;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FloatingActionMenu;->l:I

    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->k:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lf/h/l/t;->d(Landroid/view/View;)Lf/h/l/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/h/l/x;->d(F)Lf/h/l/x;

    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->j:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lf/h/l/x;->e(J)Lf/h/l/x;

    invoke-virtual {v0}, Lf/h/l/x;->k()V

    return-void
.end method

.method private f(Z)V
    .locals 7

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/h/k/c;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lzendesk/belvedere/a0/a;->b:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 4
    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 5
    iget-object v5, v3, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 6
    iget-object v3, v3, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget v3, p0, Lzendesk/belvedere/FloatingActionMenu;->l:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iget-object v3, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 9
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/k/c;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lzendesk/belvedere/a0/a;->a:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 12
    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 13
    new-instance v5, Lzendesk/belvedere/FloatingActionMenu$a;

    invoke-direct {v5, p0, p1}, Lzendesk/belvedere/FloatingActionMenu$a;-><init>(Lzendesk/belvedere/FloatingActionMenu;Lf/h/k/c;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    iget-object p1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->l:I

    int-to-long v5, p1

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, -0x1

    move-object p1, v4

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->m:Lzendesk/belvedere/FloatingActionMenu$c;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public b(IIILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->g:Landroid/view/LayoutInflater;

    sget v1, Lzendesk/belvedere/a0/h;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v1, Lzendesk/belvedere/a0/c;->b:I

    invoke-direct {p0, p1, v1}, Lzendesk/belvedere/FloatingActionMenu;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setId(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-static {v0, p4}, Lf/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h/k/c;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 8
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget p4, Lzendesk/belvedere/a0/c;->a:I

    invoke-direct {p0, p1, p4}, Lzendesk/belvedere/FloatingActionMenu;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/k/c;

    iget-object p1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 12
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 13
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget p2, Lzendesk/belvedere/a0/e;->a:I

    sget p3, Lzendesk/belvedere/a0/c;->a:I

    invoke-direct {p0, p2, p3}, Lzendesk/belvedere/FloatingActionMenu;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzendesk/belvedere/a0/i;->b:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 16
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/k/c;

    .line 3
    iget-object v0, p1, Lf/h/k/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->i:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->i:Z

    .line 5
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->f(Z)V

    .line 6
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->i:Z

    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->e(Z)V

    .line 7
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->i:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/i;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/i;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
