.class public final Le/a/k/a/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

.field public final synthetic b:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/widget/PopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/a/j/h;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iput-object p2, p0, Le/a/k/a/j/h;->b:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k/a/j/h;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Le/a/k/a/j/h;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->getDismissListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
