.class public final Le/a/g/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;

.field public final synthetic b:Lcom/truecaller/ads/ui/AdsSwitchView;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;Lcom/truecaller/ads/ui/AdsSwitchView;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/d;->a:Le/a/g/a/a/a;

    iput-object p2, p0, Le/a/g/a/a/d;->b:Lcom/truecaller/ads/ui/AdsSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g/a/a/d;->b:Lcom/truecaller/ads/ui/AdsSwitchView;

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/g/a/a/d;->b:Lcom/truecaller/ads/ui/AdsSwitchView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/g/a/a/d;->a:Le/a/g/a/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/truecaller/acs/R$id;->mainContainer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/g/a/a/d;->b:Lcom/truecaller/ads/ui/AdsSwitchView;

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5
    iget-object v1, p0, Le/a/g/a/a/d;->b:Lcom/truecaller/ads/ui/AdsSwitchView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
