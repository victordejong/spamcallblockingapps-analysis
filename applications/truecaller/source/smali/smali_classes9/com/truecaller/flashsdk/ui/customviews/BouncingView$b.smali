.class public Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;
.super Ln3/m/a/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/flashsdk/ui/customviews/BouncingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/customviews/BouncingView;Lcom/truecaller/flashsdk/ui/customviews/BouncingView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    invoke-direct {p0}, Ln3/m/a/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;II)I
    .locals 0

    if-lez p3, :cond_1

    const/16 p1, 0xa

    if-ge p2, p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 2
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->c:Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget p1, v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->b:I

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 6
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->c:Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;

    .line 7
    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;->G5()V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;FF)V
    .locals 1

    const/high16 p2, -0x3c6a0000    # -300.0f

    cmpg-float p2, p3, p2

    const/4 p3, 0x0

    if-ltz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 3
    iget-object p2, p1, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ln3/m/a/e;->v(II)Z

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 6
    iget-object p2, p2, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p2, p3, p1}, Ln3/m/a/e;->v(II)Z

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public l(Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 2
    iget p2, p2, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->b:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
