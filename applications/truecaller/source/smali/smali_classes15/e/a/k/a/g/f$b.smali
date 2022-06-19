.class public final Le/a/k/a/g/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/g/f;->w8(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/f$b;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k/a/g/f$b;->a:Le/a/k/a/g/f;

    .line 2
    sget-object v1, Le/a/k/a/g/f;->r:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/k/a/g/f;->QA()Le/a/k/m/k;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/k;->f:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 8
    new-instance v2, Le/a/k/a/g/h;

    invoke-direct {v2, v0}, Le/a/k/a/g/h;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string v1, "binding.focusRingImageVi\u2026           .start()\n    }"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
