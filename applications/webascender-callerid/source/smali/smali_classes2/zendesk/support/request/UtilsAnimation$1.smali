.class final Lzendesk/support/request/UtilsAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/UtilsAnimation;->topPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final paddingBottom:I

.field final paddingLeft:I

.field final paddingRight:I

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/UtilsAnimation$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lzendesk/support/request/UtilsAnimation$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingLeft:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingRight:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingBottom:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lzendesk/support/request/UtilsAnimation$1;->val$view:Landroid/view/View;

    iget v0, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingLeft:I

    iget-object v1, p0, Lzendesk/support/request/UtilsAnimation$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingRight:I

    iget v3, p0, Lzendesk/support/request/UtilsAnimation$1;->paddingBottom:I

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
