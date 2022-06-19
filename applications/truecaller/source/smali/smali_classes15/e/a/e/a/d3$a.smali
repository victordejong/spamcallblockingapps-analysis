.class public final Le/a/e/a/d3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/a/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    .locals 1

    const-string v0, "mView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/d3$a;->a:Landroid/view/View;

    iput p2, p0, Le/a/e/a/d3$a;->b:I

    iput p3, p0, Le/a/e/a/d3$a;->c:I

    iput p4, p0, Le/a/e/a/d3$a;->d:I

    iput p5, p0, Le/a/e/a/d3$a;->e:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/e/a/d3$a;->a:Landroid/view/View;

    iget v1, p0, Le/a/e/a/d3$a;->b:I

    int-to-float v2, v1

    iget v3, p0, Le/a/e/a/d3$a;->d:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Le/a/e/a/d3$a;->a:Landroid/view/View;

    iget v1, p0, Le/a/e/a/d3$a;->c:I

    int-to-float v2, v1

    iget v3, p0, Le/a/e/a/d3$a;->e:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
