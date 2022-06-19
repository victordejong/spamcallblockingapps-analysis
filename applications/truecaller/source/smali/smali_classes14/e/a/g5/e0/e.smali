.class public final Le/a/g5/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/g5/d0/a;

.field public final synthetic b:Lcom/truecaller/tagger/tagPicker/TaggerActivity;


# direct methods
.method public constructor <init>(Le/a/g5/d0/a;Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/e;->a:Le/a/g5/d0/a;

    iput-object p2, p0, Le/a/g5/e0/e;->b:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g5/e0/e;->a:Le/a/g5/d0/a;

    iget-object v0, v0, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v1, "fragmentContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    iget-object v2, p0, Le/a/g5/e0/e;->a:Le/a/g5/d0/a;

    iget-object v2, v2, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/g5/e0/e;->b:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-virtual {v1}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v1, p0, Le/a/g5/e0/e;->b:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 6
    iget-object v1, v1, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
