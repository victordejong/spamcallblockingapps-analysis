.class public abstract Ln3/y/e/f;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/b0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/f$b;
    }
.end annotation


# instance fields
.field public a:Landroid/view/accessibility/CaptioningManager;

.field public b:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field public c:Ln3/y/e/a;

.field public d:Ln3/y/e/b0$b$a;

.field public e:Ln3/y/e/f$b;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    new-instance p2, Ln3/y/e/f$a;

    invoke-direct {p2, p0}, Ln3/y/e/f$a;-><init>(Ln3/y/e/f;)V

    iput-object p2, p0, Ln3/y/e/f;->b:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const-string p2, "captioning"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    iput-object p2, p0, Ln3/y/e/f;->a:Landroid/view/accessibility/CaptioningManager;

    .line 5
    new-instance p2, Ln3/y/e/a;

    iget-object p3, p0, Ln3/y/e/f;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p3}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p3

    invoke-direct {p2, p3}, Ln3/y/e/a;-><init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iput-object p2, p0, Ln3/y/e/f;->c:Ln3/y/e/a;

    .line 6
    iget-object p2, p0, Ln3/y/e/f;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    .line 7
    invoke-virtual {p0, p1}, Ln3/y/e/f;->b(Landroid/content/Context;)Ln3/y/e/f$b;

    move-result-object p1

    iput-object p1, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    .line 8
    iget-object p3, p0, Ln3/y/e/f;->c:Ln3/y/e/a;

    invoke-interface {p1, p3}, Ln3/y/e/f$b;->a(Ln3/y/e/a;)V

    .line 9
    iget-object p1, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    invoke-interface {p1, p2}, Ln3/y/e/f$b;->b(F)V

    .line 10
    iget-object p1, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/content/Context;)Ln3/y/e/f$b;
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Ln3/y/e/f;->f:Z

    if-eq v1, v0, :cond_2

    .line 3
    iput-boolean v0, p0, Ln3/y/e/f;->f:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/y/e/f;->a:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Ln3/y/e/f;->b:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/e/f;->a:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Ln3/y/e/f;->b:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Ln3/y/e/f;->c()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Ln3/y/e/f;->c()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method
