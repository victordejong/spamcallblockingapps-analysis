.class public Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:F

.field public c:F

.field public d:J

.field public final synthetic e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget v2, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->b:F

    iget-object v3, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    invoke-virtual {v3}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 4
    iget v3, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->c:F

    iget-object v4, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    invoke-virtual {v4}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 5
    iget-object v4, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->e:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 6
    sget v5, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->q:I

    .line 7
    invoke-virtual {v4}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v2, v6

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    invoke-virtual {v4}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    iget-object v2, v4, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->m:Landroid/view/WindowManager;

    invoke-virtual {v4}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
