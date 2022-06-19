.class public final Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->h(JLs1/u/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

.field public final synthetic b:Ls1/u/g;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Ls1/u/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/u/g;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iput-object p2, p0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;->b:Ls1/u/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;->b:Ls1/u/g;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ls1/u/g;->a()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$b;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->getDismissListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_1
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
