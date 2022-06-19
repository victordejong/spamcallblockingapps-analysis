.class public final Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00052\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010+\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010%R\u0016\u0010-\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010%R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u001e\u00104\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010:\u001a\u00020\u00088C@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "Ls1/s;",
        "setDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "",
        "color",
        "setBackgroundColor",
        "(I)V",
        "",
        "Le/a/y/a/g/c;",
        "items",
        "setMenuItems",
        "(Ljava/util/List;)V",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;",
        "fabActionListener",
        "setFabActionListener",
        "(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "c",
        "()V",
        "",
        "show",
        "view",
        "position",
        "b",
        "(ZLandroid/view/View;I)V",
        "visible",
        "a",
        "(Z)V",
        "h",
        "Z",
        "isLandscape",
        "Landroid/widget/ImageView;",
        "e",
        "Landroid/widget/ImageView;",
        "imageView",
        "isShowingMenu",
        "d",
        "isAnimatingMenu",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;",
        "Landroid/widget/LinearLayout;",
        "f",
        "Landroid/widget/LinearLayout;",
        "menuRoot",
        "Ljava/util/List;",
        "menuItems",
        "g",
        "Landroid/view/View;",
        "backdrop",
        "getSubMenuItemResourceId",
        "()I",
        "subMenuItemResourceId",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/y/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;

.field public c:Z

.field public d:Z

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/view/View;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getSubMenuItemResourceId()I
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->flash_attach_view_sub_menu:I

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->g:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v2, v0, v1, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v3, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$b;

    invoke-direct {v3, p0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$b;-><init>(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;Z)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 11
    invoke-static {p1, v2, v0, v4, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(ZLandroid/view/View;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p3, v4, :cond_1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$c;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$c;-><init>(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    const/16 v2, 0x32

    const/4 v3, 0x0

    const/16 v4, 0x12c

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float v2, v2

    invoke-static {p1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    mul-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    sget p1, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "view.findViewById<View>(\u2026.flashAttachSubmenuTitle)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    mul-int/2addr p3, v4

    .line 7
    div-int/lit8 p3, p3, 0x8

    int-to-long v5, p3

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 9
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-string v0, "translationY(0f)\n       \u2026rshootInterpolator(1.5f))"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v7, v4

    invoke-virtual {p3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 13
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v0, "setInterpolator(DecelerateInterpolator())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 14
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->h:Z

    if-eqz p1, :cond_4

    .line 15
    sget p1, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "icon"

    .line 16
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 19
    invoke-virtual {v1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 20
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p2, "alpha(1f)\n              \u2026DecelerateInterpolator())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 21
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v5, p3, 0x1

    sub-int/2addr p1, v5

    mul-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x4

    int-to-long v6, p1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float v2, v2

    invoke-static {p1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    int-to-float p1, v2

    .line 23
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 24
    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p3, "translationY(\n          \u2026AccelerateInterpolator())"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 25
    sget p1, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v5

    mul-int/2addr p3, v4

    div-int/lit8 p3, p3, 0x4

    int-to-long v8, p3

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p3, "alpha(0f).setInterpolato\u2026AccelerateInterpolator())"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->h:Z

    if-eqz p1, :cond_4

    .line 29
    sget p1, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    mul-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->d:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->d:Z

    .line 3
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 5
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "view"

    .line 6
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5, v4}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b(ZLandroid/view/View;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$d;

    invoke-direct {v2, v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$d;-><init>(Landroid/widget/LinearLayout;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    int-to-long v4, v0

    .line 9
    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-virtual {p0, v3}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a(Z)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v2, "animate()\n              \u2026(OvershootInterpolator())"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 15
    :cond_2
    iput-boolean v3, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    .line 16
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;->o0()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c()V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->d:Z

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->d:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_4

    .line 11
    check-cast v6, Le/a/y/a/g/c;

    .line 12
    invoke-direct {p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->getSubMenuItemResourceId()I

    move-result v8

    invoke-virtual {v2, v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 13
    sget v9, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuIcon:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 14
    sget v10, Lcom/truecaller/flashsdk/R$id;->flashAttachSubmenuTitle:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 15
    iget v11, v6, Le/a/y/a/g/c;->c:I

    .line 16
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget v10, v6, Le/a/y/a/g/c;->b:I

    .line 18
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget v10, v6, Le/a/y/a/g/c;->d:I

    .line 20
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    iget-object v10, v6, Le/a/y/a/g/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    const-string v11, "icon"

    .line 22
    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_2
    iget v10, v6, Le/a/y/a/g/c;->f:I

    if-eqz v10, :cond_3

    .line 24
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 25
    sget-object v11, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    :cond_3
    new-instance v9, Le/a/y/a/g/b;

    invoke-direct {v9, v6, p0, v2, v0}, Le/a/y/a/g/b;-><init>(Le/a/y/a/g/c;Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v6, "view"

    .line 29
    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v8, v5}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b(ZLandroid/view/View;I)V

    .line 30
    sget-object v5, Ls1/s;->a:Ls1/s;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 31
    :cond_4
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 33
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 34
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->f:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 35
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x32

    int-to-float p1, p1

    invoke-static {v6, p1}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->h:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    .line 39
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 40
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 41
    :cond_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 42
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 43
    :cond_7
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a(Z)V

    .line 45
    iput-boolean v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    .line 46
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;->q0()V

    :cond_8
    :goto_2
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$drawable;->flash_close_fab_background:I

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setFabActionListener(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;)V
    .locals 1

    const-string v0, "fabActionListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;

    return-void
.end method

.method public final setMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/y/a/g/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a:Ljava/util/List;

    return-void
.end method
