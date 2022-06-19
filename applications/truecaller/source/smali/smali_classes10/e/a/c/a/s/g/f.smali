.class public final Le/a/c/a/s/g/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0008R\u0018\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R%\u0010\u0019\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\r\u0010\u0018R%\u0010\u001b\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0018RH\u0010$\u001a(\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001cj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Le/a/c/a/s/g/f;",
        "T",
        "Landroid/widget/FrameLayout;",
        "metadata",
        "Ls1/s;",
        "setMetadata",
        "(Ljava/lang/Object;)V",
        "e",
        "()V",
        "",
        "text",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getMetadata",
        "()Ljava/lang/Object;",
        "d",
        "b",
        "Ljava/lang/Object;",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "c",
        "Ls1/g;",
        "()Landroid/widget/TextView;",
        "title",
        "getSelectedTitle",
        "selectedTitle",
        "Lkotlin/Function2;",
        "Lcom/truecaller/insights/ui/widget/chip/onTagSelected;",
        "a",
        "Ls1/z/b/p;",
        "getOnTagSelected",
        "()Ls1/z/b/p;",
        "setOnTagSelected",
        "(Ls1/z/b/p;)V",
        "onTagSelected",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-TT;-",
            "Le/a/c/a/s/g/f<",
            "TT;>;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Ls1/g;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/insights/ui/R$id;->title:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/c/a/s/g/f;->c:Ls1/g;

    .line 4
    sget p2, Lcom/truecaller/insights/ui/R$id;->selectedTitle:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/c/a/s/g/f;->d:Ls1/g;

    .line 5
    invoke-static {p1}, Le/a/c/p/a;->B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    sget p2, Lcom/truecaller/insights/ui/R$layout;->layout_tcx_tag_chip:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 8
    new-instance p1, Le/a/c/a/s/g/d;

    invoke-direct {p1, p0}, Le/a/c/a/s/g/d;-><init>(Le/a/c/a/s/g/f;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p1, Le/a/c/a/s/g/e;

    invoke-direct {p1, p0}, Le/a/c/a/s/g/e;-><init>(Le/a/c/a/s/g/f;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static final synthetic a(Le/a/c/a/s/g/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Le/a/c/a/s/g/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Le/a/c/a/s/g/f;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "selectedTitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 4
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-double v4, v0

    int-to-double v6, v3

    .line 5
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 6
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v2, v4, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void
.end method

.method private final getSelectedTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/c/a/s/g/f;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/c/a/s/g/f;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "selectedTitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 4
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-double v2, v0

    int-to-double v4, v1

    .line 5
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 6
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-string v1, "anim"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/c/a/s/g/f$a;

    invoke-direct {v1, p0}, Le/a/c/a/s/g/f$a;-><init>(Le/a/c/a/s/g/f;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/c/a/s/g/f;->d()V

    .line 2
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final getMetadata()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOnTagSelected()Ls1/z/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/p<",
            "TT;",
            "Le/a/c/a/s/g/f<",
            "TT;>;",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/f;->a:Ls1/z/b/p;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setMetadata(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/s/g/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public final setOnTagSelected(Ls1/z/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-TT;-",
            "Le/a/c/a/s/g/f<",
            "TT;>;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/s/g/f;->a:Ls1/z/b/p;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Le/a/c/a/s/g/f;->getSelectedTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "selectedTitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
