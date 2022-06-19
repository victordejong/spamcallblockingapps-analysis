.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->a:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->a:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->b:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    check-cast p1, Ln3/v/c0;

    const-string p2, "removeObserver"

    .line 4
    invoke-virtual {p1, p2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
