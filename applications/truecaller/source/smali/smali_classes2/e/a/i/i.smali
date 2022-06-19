.class public final Le/a/i/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/google/android/gms/ads/nativead/MediaView;

.field public final synthetic c:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

.field public final synthetic d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Landroidx/constraintlayout/widget/ConstraintLayout;F)V
    .locals 0

    iput-object p1, p0, Le/a/i/i;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/i/i;->b:Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object p3, p0, Le/a/i/i;->c:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    iput-object p4, p0, Le/a/i/i;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput p5, p0, Le/a/i/i;->e:F

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/i/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/i/i;->c:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Le/a/i/i;->b:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Le/a/i/i;->b:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/ads/R$dimen;->ads_mega_image_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3ff33333    # 1.9f

    const v3, 0x3fe66666    # 1.8f

    .line 4
    new-instance v4, Ln3/i/c/d;

    invoke-direct {v4}, Ln3/i/c/d;-><init>()V

    .line 5
    iget-object v5, p0, Le/a/i/i;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5}, Ln3/i/c/d;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 6
    iget v5, p0, Le/a/i/i;->e:F

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    cmpl-float v5, v1, v6

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 7
    :goto_1
    iget-object v5, p0, Le/a/i/i;->b:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getId()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x3e8

    int-to-float v7, v7

    cmpl-float v8, v0, v2

    if-lez v8, :cond_3

    move v0, v3

    :cond_3
    invoke-static {v1, v0, v2}, Ls1/d0/j;->c(FFF)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    const-string v1, ":1000"

    invoke-static {v6, v0, v1}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v4, v5}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object v1

    iget-object v1, v1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iput-object v0, v1, Ln3/i/c/d$b;->w:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Le/a/i/i;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Ln3/i/c/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
