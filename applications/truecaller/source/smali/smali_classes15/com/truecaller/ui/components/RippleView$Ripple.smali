.class public Lcom/truecaller/ui/components/RippleView$Ripple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ripple"
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroid/animation/ObjectAnimator;

.field public final synthetic c:Lcom/truecaller/ui/components/RippleView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/RippleView;IF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/RippleView$Ripple;->c:Lcom/truecaller/ui/components/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/truecaller/ui/components/RippleView$Ripple;->a:F

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_0

    const-string p3, "time"

    invoke-static {p0, p3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/RippleView$Ripple;->b:Landroid/animation/ObjectAnimator;

    int-to-long p2, p2

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 p2, 0x7d0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, -0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x7d0
    .end array-data
.end method


# virtual methods
.method public setTime(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/16 v0, 0x384

    if-le p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/components/RippleView$Ripple;->c:Lcom/truecaller/ui/components/RippleView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/ui/components/RippleView$Ripple;->c:Lcom/truecaller/ui/components/RippleView;

    .line 3
    sget v0, Lcom/truecaller/ui/components/RippleView;->b:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method
