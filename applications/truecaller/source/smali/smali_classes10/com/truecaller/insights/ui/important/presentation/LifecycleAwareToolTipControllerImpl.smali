.class public final Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/c/h/j;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\n\u0010\tR\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;",
        "Le/a/c/a/c/h/j;",
        "Le/a/c/a/c/g/d;",
        "toolTipData",
        "Ls1/s;",
        "aa",
        "(Le/a/c/a/c/g/d;)V",
        "bj",
        "onResume",
        "()V",
        "onPause",
        "",
        "a",
        "Ljava/util/List;",
        "toolTipCache",
        "b",
        "runningToolTips",
        "<init>",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a/c/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a/c/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aa(Le/a/c/a/c/g/d;)V
    .locals 1

    const-string v0, "toolTipData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bj(Le/a/c/a/c/g/d;)V
    .locals 3

    const-string v0, "toolTipData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/c/g/d;->a:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v1, "toolTipData.parent.get() ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/c/a/c/g/d;->d:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v2, "toolTipData.anchor.get() ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;-><init>(Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;Landroid/view/ViewGroup;Le/a/c/a/c/g/d;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 6
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/c/g/d;

    .line 3
    iget-object v1, v1, Le/a/c/a/c/g/d;->a:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const-string v2, "view"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parent"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Le/a/b0/a/e0/c;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v2, v4

    :cond_1
    check-cast v2, Le/a/b0/a/e0/c;

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, v2, Le/a/b0/a/e0/c;->b:Le/a/b0/a/e0/d;

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    iget-object v3, v2, Le/a/b0/a/e0/c;->a:Le/a/b0/a/e0/b;

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 13
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "parent.context"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/g;->n0(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v3

    .line 14
    iget-object v2, v2, Le/a/b0/a/e0/c;->c:Landroid/view/View;

    .line 15
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onResume()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/c/g/d;

    .line 3
    invoke-virtual {p0, v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->bj(Le/a/c/a/c/g/d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
