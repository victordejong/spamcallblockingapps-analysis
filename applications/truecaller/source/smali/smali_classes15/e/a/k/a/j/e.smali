.class public final Le/a/k/a/j/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

.field public final synthetic b:Le/a/k/a/j/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Le/a/k/a/j/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/e;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iput-object p2, p0, Le/a/k/a/j/e;->b:Le/a/k/a/j/f;

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string p3, "e1"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "e2"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 p2, 0x64

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/k/a/j/e;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iget-object p2, p0, Le/a/k/a/j/e;->b:Le/a/k/a/j/f;

    iget-object p2, p2, Le/a/k/a/j/f;->b:Landroid/widget/PopupWindow;

    const-wide/16 p3, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->g(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/widget/PopupWindow;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
