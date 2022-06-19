.class public abstract Le/m/a/g/n/i$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Le/m/a/g/n/i;


# direct methods
.method public constructor <init>(Le/m/a/g/n/i;Le/m/a/g/n/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/n/i$h;->d:Le/m/a/g/n/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/n/i$h;->d:Le/m/a/g/n/i;

    iget v0, p0, Le/m/a/g/n/i$h;->c:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Le/m/a/g/n/i;->x(F)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/m/a/g/n/i$h;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/m/a/g/n/i$h;->a:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/g/n/i$h;->d:Le/m/a/g/n/i;

    iget-object v0, v0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget v0, v0, Le/m/a/g/u/h$b;->o:F

    .line 4
    :goto_0
    iput v0, p0, Le/m/a/g/n/i$h;->b:F

    .line 5
    invoke-virtual {p0}, Le/m/a/g/n/i$h;->a()F

    move-result v0

    iput v0, p0, Le/m/a/g/n/i$h;->c:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/m/a/g/n/i$h;->a:Z

    .line 7
    :cond_1
    iget-object v0, p0, Le/m/a/g/n/i$h;->d:Le/m/a/g/n/i;

    iget v1, p0, Le/m/a/g/n/i$h;->b:F

    iget v2, p0, Le/m/a/g/n/i$h;->c:F

    sub-float/2addr v2, v1

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 9
    invoke-virtual {v0, p1}, Le/m/a/g/n/i;->x(F)V

    return-void
.end method
