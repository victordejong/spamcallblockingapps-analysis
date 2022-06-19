.class public final Le/a/k0/n/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k0/n/b/h$a;,
        Le/a/k0/n/b/h$b;
    }
.end annotation


# static fields
.field public static e:Le/a/k0/n/b/h;


# instance fields
.field public a:Le/a/k0/n/b/g;

.field public b:Landroid/view/WindowManager;

.field public c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

.field public d:Le/a/k0/n/b/h$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p1}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/k0/n/b/h;->d:Le/a/k0/n/b/h$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k0/n/b/h$b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/k0/n/b/g;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, p1}, Le/a/k0/n/b/h;->a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    .line 5
    iget-boolean v2, v0, Le/a/k0/n/b/g;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6
    iput-boolean v3, v0, Le/a/k0/n/b/g;->d:Z

    .line 7
    sget v2, Lcom/truecaller/callrecording/R$animator;->bubble_trash_shown_magnetism_animator:I

    invoke-virtual {v0, v2}, Le/a/k0/n/b/g;->a(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    .line 9
    iget-boolean v2, v0, Le/a/k0/n/b/g;->f:Z

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v4, 0x46

    .line 11
    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 12
    iput-boolean v3, v0, Le/a/k0/n/b/g;->f:Z

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    .line 17
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p1}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 19
    invoke-virtual {p1}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 20
    iget-object v0, p0, Le/a/k0/n/b/h;->b:Landroid/view/WindowManager;

    invoke-virtual {p1}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    .line 22
    iget-boolean v0, p1, Le/a/k0/n/b/g;->d:Z

    if-eqz v0, :cond_4

    .line 23
    iput-boolean v1, p1, Le/a/k0/n/b/g;->d:Z

    .line 24
    sget v0, Lcom/truecaller/callrecording/R$animator;->bubble_trash_hide_magnetism_animator:I

    invoke-virtual {p1, v0}, Le/a/k0/n/b/g;->a(I)V

    .line 25
    :cond_4
    iput-boolean v1, p1, Le/a/k0/n/b/g;->f:Z

    :cond_5
    :goto_0
    return-void
.end method
