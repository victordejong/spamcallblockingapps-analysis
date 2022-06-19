.class public Le/a/e/a/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/a/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/a/e2$a;->a:Landroid/view/View;

    .line 3
    iput p2, p0, Le/a/e/a/e2$a;->b:I

    .line 4
    iput p3, p0, Le/a/e/a/e2$a;->c:I

    .line 5
    iput p4, p0, Le/a/e/a/e2$a;->d:I

    .line 6
    iput p5, p0, Le/a/e/a/e2$a;->e:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/e/a/e2$a;->a:Landroid/view/View;

    iget v1, p0, Le/a/e/a/e2$a;->b:I

    int-to-float v2, v1

    iget v3, p0, Le/a/e/a/e2$a;->d:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Le/a/e/a/e2$a;->a:Landroid/view/View;

    iget v1, p0, Le/a/e/a/e2$a;->c:I

    int-to-float v2, v1

    iget v3, p0, Le/a/e/a/e2$a;->e:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
