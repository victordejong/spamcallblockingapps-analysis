.class public final Le/a/b0/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/avatar/AvatarXView$c;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/avatar/AvatarXView$c;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/b/e;->a:Lcom/truecaller/common/ui/avatar/AvatarXView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/b0/a/b/e;->a:Lcom/truecaller/common/ui/avatar/AvatarXView$c;

    iget-object p1, p1, Lcom/truecaller/common/ui/avatar/AvatarXView$c;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 2
    iget v0, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->q:F

    .line 3
    iget-boolean v1, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->s:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 4
    iput v0, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->q:F

    .line 5
    iget v0, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->r:F

    if-eqz v1, :cond_1

    const/4 v2, -0x4

    :cond_1
    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 6
    iput v0, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->r:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    :cond_2
    xor-int/lit8 v0, v1, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->s:Z

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
