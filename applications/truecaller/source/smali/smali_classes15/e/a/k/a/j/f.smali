.class public final Le/a/k/a/j/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/PopupWindow;

.field public final synthetic c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ls1/z/b/a;

.field public final synthetic f:Le/a/k/a/j/a$a;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/view/View;Ls1/z/b/a;Le/a/k/a/j/a$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/f;->b:Landroid/widget/PopupWindow;

    iput-object p2, p0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iput-object p3, p0, Le/a/k/a/j/f;->d:Landroid/view/View;

    iput-object p4, p0, Le/a/k/a/j/f;->e:Ls1/z/b/a;

    iput-object p5, p0, Le/a/k/a/j/f;->f:Le/a/k/a/j/a$a;

    iput-object p6, p0, Le/a/k/a/j/f;->g:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroid/transition/Slide;

    invoke-direct {v0}, Landroid/transition/Slide;-><init>()V

    const-wide/16 v1, 0x190

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/transition/Slide;->setDuration(J)Landroid/transition/Transition;

    const/16 v1, 0x50

    .line 3
    invoke-virtual {v0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 4
    iget-object v1, p0, Le/a/k/a/j/f;->b:Landroid/widget/PopupWindow;

    .line 5
    iget-object v2, p0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Le/a/k/a/j/c;

    invoke-direct {v3, v1, p0, v0}, Le/a/k/a/j/c;-><init>(Landroid/widget/PopupWindow;Le/a/k/a/j/f;Landroid/transition/Slide;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    new-instance v2, Le/a/k/a/j/d;

    invoke-direct {v2, p0, v0}, Le/a/k/a/j/d;-><init>(Le/a/k/a/j/f;Landroid/transition/Slide;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 9
    iget-object v0, p0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iget-object v2, p0, Le/a/k/a/j/f;->f:Le/a/k/a/j/a$a;

    .line 10
    iget-wide v2, v2, Le/a/k/a/j/a$a;->c:J

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->g(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/widget/PopupWindow;J)V

    .line 12
    iget-object v0, p0, Le/a/k/a/j/f;->d:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 13
    iget-object v0, p0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    .line 14
    new-instance v1, Ln3/k/i/e;

    .line 15
    iget-object v2, p0, Le/a/k/a/j/f;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 16
    new-instance v3, Le/a/k/a/j/e;

    invoke-direct {v3, v0, p0}, Le/a/k/a/j/e;-><init>(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Le/a/k/a/j/f;)V

    .line 17
    invoke-direct {v1, v2, v3}, Ln3/k/i/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    iput-object v1, v0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->h:Ln3/k/i/e;

    .line 19
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
