.class public final Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001J\'\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR%\u0010\u0012\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R%\u0010\u0016\u001a\n \r*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u000f\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001a\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR%\u0010\"\u001a\n \r*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u000f\u001a\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001c\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;",
        "Landroid/widget/FrameLayout;",
        "",
        "res",
        "Lkotlin/Function0;",
        "Ls1/s;",
        "onAnimationEndListener",
        "e",
        "(ILs1/z/b/a;)V",
        "",
        "f",
        "()F",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "c",
        "Ls1/g;",
        "getEmojiView",
        "()Landroid/view/View;",
        "emojiView",
        "Lnl/dionsegijn/konfetti/KonfettiView;",
        "getKonfetti",
        "()Lnl/dionsegijn/konfetti/KonfettiView;",
        "konfetti",
        "",
        "getConfettiColors",
        "()[I",
        "confettiColors",
        "b",
        "F",
        "spacing",
        "Landroid/widget/ImageView;",
        "d",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "imageView",
        "a",
        "bottomMargin",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "context"

    .line 1
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07047a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->a:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 4
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->b:F

    const p2, 0x7f0a069b

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c:Ls1/g;

    const p2, 0x7f0a09b5

    .line 6
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->d:Ls1/g;

    const p2, 0x7f0a0ab6

    .line 7
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->e:Ls1/g;

    .line 8
    new-instance p2, Le/a/a/c/m8/c;

    invoke-direct {p2, p1}, Le/a/a/c/m8/c;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->f:Ls1/g;

    const p2, 0x7f0d04c0

    .line 9
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getConfettiColors()[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getEmojiView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getKonfetti()Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getKonfetti()Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v0

    const-string v1, "konfetti"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/a/a/c/m8/d;

    invoke-direct {v1, v0, p0}, Le/a/a/c/m8/d;-><init>(Landroid/view/View;Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final getConfettiColors()[I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private final getEmojiView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getKonfetti()Lnl/dionsegijn/konfetti/KonfettiView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/dionsegijn/konfetti/KonfettiView;

    return-object v0
.end method


# virtual methods
.method public final e(ILs1/z/b/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getEmojiView()Landroid/view/View;

    move-result-object p1

    const-string v0, "emojiView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->f()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "background"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getEmojiView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x4

    new-array v0, p1, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    .line 6
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getEmojiView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    const-string v7, "translationY"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v6, "enterAnimation()"

    .line 7
    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-array v6, v5, [I

    const/16 v8, 0x4c

    aput v8, v6, v1

    const-string v8, "alpha"

    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v6, "ofInt(background, \"alpha\", BACKGROUND_ALPHA_MAX)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v3, v5

    .line 9
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/Animator;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v9, 0xaf

    .line 10
    invoke-virtual {v4, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    aput-object v4, v0, v1

    new-array v3, v5, [I

    aput v1, v3, v1

    .line 11
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-string v4, "this"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x320

    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v6, "animateDelay(800)"

    .line 12
    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v0, v5

    new-array v3, v2, [Landroid/animation/Animator;

    .line 13
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->getEmojiView()Landroid/view/View;

    move-result-object v6

    new-array v9, v5, [F

    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->f()F

    move-result v10

    aput v10, v9, v1

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v7, "exitAnimation()"

    .line 14
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v3, v1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-array v7, v5, [I

    aput v1, v7, v1

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v7, "ofInt(background, \"alpha\", BACKGROUND_ALPHA_MIN)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v3, v5

    .line 16
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/Animator;

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v7, 0x96

    .line 17
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 18
    new-instance v3, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$a;

    invoke-direct {v3, p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$a;-><init>(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    aput-object v6, v0, v2

    new-array v2, v5, [I

    aput v1, v2, v1

    .line 19
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v2, "animateDelay(300)"

    .line 20
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 21
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 22
    new-instance p1, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;

    invoke-direct {p1, p0, p2}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;-><init>(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;Ls1/z/b/a;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$c;

    invoke-direct {p2, p0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$c;-><init>(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->a:F

    iget v1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->b:F

    add-float/2addr v0, v1

    return v0
.end method
