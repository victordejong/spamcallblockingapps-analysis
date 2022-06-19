.class public final Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/utils/viewbinding/ViewBindingProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClearOnDestroyLifecycleObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;",
        "Ln3/v/a0;",
        "Ln3/v/b0;",
        "owner",
        "Ls1/s;",
        "onDestroy",
        "(Ln3/v/b0;)V",
        "<init>",
        "(Lcom/truecaller/utils/viewbinding/ViewBindingProperty;)V",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public constructor <init>(Lcom/truecaller/utils/viewbinding/ViewBindingProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy(Ln3/v/b0;)V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    check-cast p1, Ln3/v/c0;

    const-string v0, "removeObserver"

    .line 2
    invoke-virtual {p1, v0}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->c:Landroid/os/Handler;

    sget-object p1, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->d:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;

    .line 5
    sget-object p1, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->c:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a;

    invoke-direct {v0, p0}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a;-><init>(Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
