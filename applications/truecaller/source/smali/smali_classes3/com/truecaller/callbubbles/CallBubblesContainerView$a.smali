.class public final Lcom/truecaller/callbubbles/CallBubblesContainerView$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callbubbles/CallBubblesContainerView;->m(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->b:I

    iput-object p2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v2}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v2}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    move v1, v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v3}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 8
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->g(Lcom/truecaller/callbubbles/CallBubblesContainerView;)F

    move-result v0

    sub-float/2addr v1, v0

    goto :goto_2

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->f(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->g(Lcom/truecaller/callbubbles/CallBubblesContainerView;)F

    move-result v1

    add-float/2addr v1, v0

    .line 10
    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
