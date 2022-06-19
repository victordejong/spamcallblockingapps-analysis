.class public Le/a/e/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/CallMeBackActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/CallMeBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/ui/CallMeBackActivity;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    .line 5
    iget-object v1, v1, Lcom/truecaller/ui/CallMeBackActivity;->b:Landroid/view/View;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    iget-object v1, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    .line 8
    iget-object v1, v1, Lcom/truecaller/ui/CallMeBackActivity;->h:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    .line 9
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    .line 11
    iget-object v0, v0, Lcom/truecaller/ui/CallMeBackActivity;->h:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    iget-object v0, p0, Le/a/e/r0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    .line 14
    iget-object v0, v0, Lcom/truecaller/ui/CallMeBackActivity;->b:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v3
.end method
