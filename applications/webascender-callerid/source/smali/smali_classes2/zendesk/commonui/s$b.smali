.class final Lzendesk/commonui/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/s;->a(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/s$b;->d:Landroid/view/View;

    iput-object p2, p0, Lzendesk/commonui/s$b;->e:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lzendesk/commonui/s$b;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lzendesk/commonui/s$b;->b:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lzendesk/commonui/s$b;->c:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lzendesk/commonui/s$b;->d:Landroid/view/View;

    iget v0, p0, Lzendesk/commonui/s$b;->a:I

    iget v1, p0, Lzendesk/commonui/s$b;->c:I

    iget v2, p0, Lzendesk/commonui/s$b;->b:I

    iget-object v3, p0, Lzendesk/commonui/s$b;->e:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
