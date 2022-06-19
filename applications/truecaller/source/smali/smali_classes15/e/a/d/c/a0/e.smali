.class public final Le/a/d/c/a0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/d/s/c;

.field public final synthetic c:Le/a/d/c/a0/b;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/d/s/c;Le/a/d/c/a0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/e;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/d/c/a0/e;->b:Le/a/d/s/c;

    iput-object p3, p0, Le/a/d/c/a0/e;->c:Le/a/d/c/a0/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/c/a0/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/d/c/a0/e;->b:Le/a/d/s/c;

    iget-object v0, v0, Le/a/d/s/c;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/a/d/c/a0/e;->c:Le/a/d/c/a0/b;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/e/a2;->p(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
