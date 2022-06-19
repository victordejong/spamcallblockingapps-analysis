.class public final Le/a/f3/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/f3/x;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/k/i/e;

.field public c:I

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    new-instance v0, Ln3/k/i/e;

    invoke-direct {v0, p1, p0}, Ln3/k/i/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Le/a/f3/a;->b:Ln3/k/i/e;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/f3/a;->c:I

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

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 3
    iget v0, p0, Le/a/f3/a;->c:I

    if-eq v0, p1, :cond_1

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_2

    new-instance p2, Le/a/f3/x$c;

    invoke-direct {p2, p3, p4}, Le/a/f3/x$c;-><init>(FF)V

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_0

    sget-object v0, Le/a/f3/x$d;->a:Le/a/f3/x$d;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Le/a/f3/x$e;->a:Le/a/f3/x$e;

    const-string v1, "view"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New motion event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/f3/a;->b:Ln3/k/i/e;

    .line 3
    iget-object p1, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p1, Ln3/k/i/e$b;

    .line 4
    iget-object p1, p1, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 7
    iget p2, p0, Le/a/f3/a;->c:I

    if-eq p2, p1, :cond_2

    return v2

    .line 8
    :cond_2
    iput v4, p0, Le/a/f3/a;->c:I

    .line 9
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 11
    iget v0, p0, Le/a/f3/a;->c:I

    if-eq v0, p1, :cond_4

    return v2

    .line 12
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 15
    iget p2, p0, Le/a/f3/a;->d:F

    sub-float p2, v0, p2

    .line 16
    iget v1, p0, Le/a/f3/a;->e:F

    sub-float v1, p1, v1

    .line 17
    iput v0, p0, Le/a/f3/a;->d:F

    .line 18
    iput p1, p0, Le/a/f3/a;->e:F

    .line 19
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_8

    new-instance v0, Le/a/f3/x$b;

    invoke-direct {v0, p2, v1}, Le/a/f3/x$b;-><init>(FF)V

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    return v2

    .line 20
    :cond_6
    iput v4, p0, Le/a/f3/a;->c:I

    .line 21
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Le/a/f3/a;->c:I

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Le/a/f3/a;->d:F

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Le/a/f3/a;->e:F

    .line 26
    iget-object p1, p0, Le/a/f3/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_8

    sget-object p2, Le/a/f3/x$a;->a:Le/a/f3/x$a;

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_8
    :goto_0
    return v2
.end method
