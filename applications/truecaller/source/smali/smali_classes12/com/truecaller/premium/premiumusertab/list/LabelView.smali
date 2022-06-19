.class public final Lcom/truecaller/premium/premiumusertab/list/LabelView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0014\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00040\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R%\u0010\u001e\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR%\u0010#\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"R%\u0010(\u001a\n \u0019*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001b\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/premium/premiumusertab/list/LabelView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/l/c/a/q;",
        "label",
        "Ls1/s;",
        "setLabel",
        "(Le/a/l/c/a/q;)V",
        "Le/a/l/c/a/x;",
        "countDownTextSpec",
        "",
        "timeInFuture",
        "g1",
        "(Le/a/l/c/a/x;Ljava/lang/Long;)V",
        "Le/a/l/c/a/x2;",
        "offerEndLabel",
        "setOfferEndLabelText",
        "(Le/a/l/c/a/x2;)V",
        "Lkotlin/Function1;",
        "Le/a/l/v2/f/b;",
        "onCountDownTimerStateListener",
        "setOnCountDownTimerStateListener",
        "(Ls1/z/b/l;)V",
        "f1",
        "()V",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "u",
        "Ls1/g;",
        "getTextView",
        "()Landroid/widget/TextView;",
        "textView",
        "Lcom/truecaller/premium/ui/countdown/CountDownTextView;",
        "v",
        "getTimerView",
        "()Lcom/truecaller/premium/ui/countdown/CountDownTextView;",
        "timerView",
        "Landroid/widget/ImageView;",
        "t",
        "getIconView",
        "()Landroid/widget/ImageView;",
        "iconView",
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
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a096b

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->t:Ls1/g;

    const p2, 0x7f0a1179

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->u:Ls1/g;

    const p2, 0x7f0a1237

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->v:Ls1/g;

    const p2, 0x7f0d036b

    .line 6
    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x10

    .line 7
    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p2

    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p1

    invoke-virtual {p0, p2, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Le/a/l/c/a/q;

    const p2, 0x7f0805d4

    const v0, 0x7f0405a1

    const-string v1, "premium required"

    invoke-direct {p1, p2, v1, v0}, Le/a/l/c/a/q;-><init>(ILjava/lang/String;I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->setLabel(Le/a/l/c/a/q;)V

    :cond_0
    return-void
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/premiumusertab/list/LabelView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    return-object v0
.end method


# virtual methods
.method public final f1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->z:J

    return-void
.end method

.method public final g1(Le/a/l/c/a/x;Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    const-string v1, "timerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const-string v3, "iconView"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    .line 4
    iget v1, p1, Le/a/l/c/a/x;->a:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->setTimerTextColor(I)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    .line 7
    iget p1, p1, Le/a/l/c/a/x;->b:I

    .line 8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 9
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 12
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->h1(J)V

    :cond_2
    return-void
.end method

.method public final setLabel(Le/a/l/c/a/q;)V
    .locals 4

    const-string v0, "label"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    const-string v1, "timerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    iget v1, p1, Le/a/l/c/a/q;->a:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v3, p1, Le/a/l/c/a/q;->c:I

    .line 7
    invoke-static {v1, v3}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "textView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Le/a/l/c/a/q;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget p1, p1, Le/a/l/c/a/q;->c:I

    .line 13
    invoke-static {v1, p1}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v0, 0x7f08013a

    .line 16
    invoke-static {p1, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setOfferEndLabelText(Le/a/l/c/a/x2;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "textView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Le/a/l/c/a/x2;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 5
    iget p1, p1, Le/a/l/c/a/x2;->b:I

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final setOnCountDownTimerStateListener(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/v2/f/b;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCountDownTimerStateListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/premiumusertab/list/LabelView;->getTimerView()Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->setOnCountDownTimerStateListener(Ls1/z/b/l;)V

    return-void
.end method
