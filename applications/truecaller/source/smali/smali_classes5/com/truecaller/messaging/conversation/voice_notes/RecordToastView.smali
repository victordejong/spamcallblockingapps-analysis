.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0015\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004R\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000fR%\u0010\u0016\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001cR%\u0010!\u001a\n \u0012*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0013\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019R%\u0010&\u001a\n \u0012*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0013\u001a\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;",
        "Landroid/widget/RelativeLayout;",
        "Ls1/s;",
        "f",
        "()V",
        "e",
        "c",
        "d",
        "",
        "visible",
        "setVisible",
        "(Z)V",
        "a",
        "b",
        "Landroid/animation/TimeInterpolator;",
        "Landroid/animation/TimeInterpolator;",
        "animatorInterpolator",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getTvRecordTip",
        "()Landroid/widget/TextView;",
        "tvRecordTip",
        "",
        "g",
        "I",
        "paddingHoriz",
        "Landroid/view/animation/AlphaAnimation;",
        "Landroid/view/animation/AlphaAnimation;",
        "recordAlphaAnimation",
        "Landroid/view/View;",
        "getRecordDot",
        "()Landroid/view/View;",
        "recordDot",
        "paddingVertical",
        "Landroid/widget/Chronometer;",
        "getChronometerCounter",
        "()Landroid/widget/Chronometer;",
        "chronometerCounter",
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
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Landroid/animation/TimeInterpolator;

.field public e:Landroid/view/animation/AlphaAnimation;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a03df

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->a:Ls1/g;

    const p2, 0x7f0a0df4

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->b:Ls1/g;

    const p2, 0x7f0a12ca

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->c:Ls1/g;

    .line 6
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->d:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->f:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->g:I

    const v1, 0x7f0d04f5

    .line 9
    invoke-static {p1, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f081756

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0405b4

    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    invoke-virtual {p0, v0, p2, v0, p2}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    const p1, 0x3f333333    # 0.7f

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private final getChronometerCounter()Landroid/widget/Chronometer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    return-object v0
.end method

.method private final getRecordDot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTvRecordTip()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "recordAlphaAnimation"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getRecordDot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const-string v2, "recordAlphaAnimation"

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x1f4

    .line 2
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getRecordDot()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getChronometerCounter()Landroid/widget/Chronometer;

    move-result-object v0

    const-string v1, "chronometerCounter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getChronometerCounter()Landroid/widget/Chronometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->b()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getChronometerCounter()Landroid/widget/Chronometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->a()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getTvRecordTip()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120212

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getChronometerCounter()Landroid/widget/Chronometer;

    move-result-object v0

    const-string v1, "chronometerCounter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getRecordDot()Landroid/view/View;

    move-result-object v0

    const-string v2, "recordDot"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->a()V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getTvRecordTip()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120211

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getChronometerCounter()Landroid/widget/Chronometer;

    move-result-object v0

    const-string v1, "chronometerCounter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->getRecordDot()Landroid/view/View;

    move-result-object v0

    const-string v2, "recordDot"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->b()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 3

    const-wide/16 v0, 0x96

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView$a;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView$a;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method
