.class public Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/aftercall/AfterCallPromotionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 5
    iget-object v1, v1, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 6
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    iget-object v1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 8
    iget-object v1, v1, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    aput v6, v2, v4

    aput v0, v2, v5

    .line 9
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 11
    iget-object v0, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 14
    iget-object v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-wide v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->g:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 16
    iget-object v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    iget-object v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    iget-wide v2, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->g:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 18
    :cond_1
    iget-wide v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->h:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->ua()V

    :cond_2
    :goto_0
    return v4
.end method
