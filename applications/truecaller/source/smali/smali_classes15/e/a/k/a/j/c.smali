.class public final Le/a/k/a/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Le/a/k/a/j/f;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Le/a/k/a/j/f;Landroid/transition/Slide;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/c;->a:Landroid/widget/PopupWindow;

    iput-object p2, p0, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    iget-object v0, v0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v1, p0, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    iget-object v1, v1, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    iget-object v1, v1, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    .line 3
    new-instance v2, Ls1/z/c/z;

    invoke-direct {v2}, Ls1/z/c/z;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Ls1/z/c/z;->a:F

    .line 4
    iget-object v3, p0, Le/a/k/a/j/c;->a:Landroid/widget/PopupWindow;

    new-instance v4, Le/a/k/a/j/c$a;

    invoke-direct {v4, p0, v2, v1, v0}, Le/a/k/a/j/c$a;-><init>(Le/a/k/a/j/c;Ls1/z/c/z;FF)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
