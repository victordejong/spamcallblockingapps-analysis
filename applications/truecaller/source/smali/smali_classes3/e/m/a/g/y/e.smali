.class public Le/m/a/g/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/m/a/g/y/a;


# direct methods
.method public constructor <init>(Le/m/a/g/y/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/e;->a:Le/m/a/g/y/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/m/a/g/y/e;->a:Le/m/a/g/y/a;

    iget-object v0, v0, Le/m/a/g/y/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Le/m/a/g/y/e;->a:Le/m/a/g/y/a;

    iget-object v0, v0, Le/m/a/g/y/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
