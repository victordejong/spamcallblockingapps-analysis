.class public final Le/a/a/j/d;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/j/d;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const-string v0, "detector"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/j/d;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 2
    iget-object v3, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 3
    iget-object v4, v3, Le/a/a/j/f;->c:Landroid/view/View;

    invoke-static {v4}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget-object v3, v3, Le/a/a/j/f;->d:Landroid/view/View;

    invoke-static {v3}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget v3, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    .line 5
    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k(FFFF)Ls1/k;

    move-result-object v1

    .line 6
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 10
    iget v4, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    add-float/2addr v4, v3

    iput v4, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 11
    iget v3, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    add-float/2addr v3, v1

    iput v3, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 12
    iput v2, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->d:F

    .line 13
    iput p1, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e:F

    .line 14
    :goto_2
    iget-object p1, p0, Le/a/a/j/d;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return v5
.end method
