.class public Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;
.implements Ln3/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field public final a:Ln3/v/u;

.field public final b:Ln3/a/b;

.field public c:Ln3/a/a;

.field public final synthetic d:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Ln3/v/u;Ln3/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Ln3/v/u;

    .line 3
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Ln3/a/b;

    .line 4
    invoke-virtual {p2, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 1

    .line 1
    sget-object p1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Ln3/a/b;

    .line 3
    iget-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$a;

    invoke-direct {v0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$a;-><init>(Landroidx/activity/OnBackPressedDispatcher;Ln3/a/b;)V

    .line 5
    invoke-virtual {p2, v0}, Ln3/a/b;->addCancellable(Ln3/a/a;)V

    .line 6
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ln3/a/a;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    if-ne p2, p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ln3/a/a;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Ln3/a/a;->cancel()V

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    if-ne p2, p1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Ln3/v/u;

    check-cast v0, Ln3/v/c0;

    const-string v1, "removeObserver"

    .line 2
    invoke-virtual {v0, v1}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {v0, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Ln3/a/b;

    invoke-virtual {v0, p0}, Ln3/a/b;->removeCancellable(Ln3/a/a;)V

    .line 5
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ln3/a/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ln3/a/a;->cancel()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ln3/a/a;

    :cond_0
    return-void
.end method
