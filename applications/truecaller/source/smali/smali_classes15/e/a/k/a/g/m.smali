.class public final Le/a/k/a/g/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/a/g/m;->a:Le/a/k/a/g/f;

    iput-object p2, p0, Le/a/k/a/g/m;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k/a/g/m;->a:Le/a/k/a/g/f;

    invoke-virtual {p1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p1

    iget-object p2, p0, Le/a/k/a/g/m;->b:Landroid/content/Context;

    const-string p3, "$this$pxToDp"

    .line 2
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "resources"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p4, p2

    .line 4
    check-cast p1, Le/a/k/a/g/y;

    const/high16 p2, 0x42f00000    # 120.0f

    div-float/2addr p4, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p4, p2

    .line 5
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object p1

    invoke-interface {p1, p4}, Le/a/k/c/h;->g(F)V

    const/4 p1, 0x1

    return p1
.end method
