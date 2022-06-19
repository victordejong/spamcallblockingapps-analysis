.class public final Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR#\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        "Lcom/truecaller/calling/dialer/DialpadState;",
        "newDialpadState",
        "Ls1/s;",
        "r",
        "(Lcom/truecaller/calling/dialer/DialpadState;)V",
        "Landroid/util/SparseIntArray;",
        "u",
        "Landroid/util/SparseIntArray;",
        "colors",
        "s",
        "Lcom/truecaller/calling/dialer/DialpadState;",
        "currentDialpadState",
        "Landroid/util/SparseArray;",
        "Landroid/graphics/drawable/Drawable;",
        "v",
        "Ls1/g;",
        "getDrawables",
        "()Landroid/util/SparseArray;",
        "drawables",
        "",
        "t",
        "getAnimationDuration",
        "()J",
        "animationDuration",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public s:Lcom/truecaller/calling/dialer/DialpadState;

.field public final t:Ls1/g;

.field public final u:Landroid/util/SparseIntArray;

.field public final v:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p1, Lcom/truecaller/calling/dialer/DialpadState;->DIALPAD_DOWN:Lcom/truecaller/calling/dialer/DialpadState;

    iput-object p1, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    .line 4
    new-instance p2, Le/a/h/b/e/e/d;

    invoke-direct {p2, p0}, Le/a/h/b/e/e/d;-><init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->t:Ls1/g;

    .line 5
    new-instance p2, Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v2

    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lcom/truecaller/calling/dialer/DialpadState;->NUMBER_ENTERED:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v0}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v0

    invoke-static {v2, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    iput-object p2, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->u:Landroid/util/SparseIntArray;

    .line 9
    new-instance v0, Le/a/h/b/e/e/e;

    invoke-direct {v0, p0}, Le/a/h/b/e/e/e;-><init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->v:Ls1/g;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, -0x1

    .line 11
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final getAnimationDuration()J
    .locals 2

    iget-object v0, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public final r(Lcom/truecaller/calling/dialer/DialpadState;)V
    .locals 6

    const-string v0, "newDialpadState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->getDrawables()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    if-eq p1, v0, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getScale()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getScale()F

    move-result v0

    new-array v4, v3, [F

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getScaleX()F

    move-result v5

    aput v5, v4, v2

    aput v0, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->getAnimationDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v4, Le/a/h/b/e/e/c;

    invoke-direct {v4, p0}, Le/a/h/b/e/e/c;-><init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v0

    iget-object v4, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v4}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getColorAttr()I

    move-result v0

    .line 12
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 14
    iget-object v2, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 15
    invoke-static {v4, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 16
    new-instance v1, Le/a/h/b/e/e/b;

    invoke-direct {v1, p0}, Le/a/h/b/e/e/b;-><init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v0

    iget-object v1, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->getDrawables()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_3
    iput-object p1, p0, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->s:Lcom/truecaller/calling/dialer/DialpadState;

    :cond_4
    return-void
.end method
