.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field final synthetic f:Landroidx/lifecycle/i;

.field final synthetic g:Lkotlinx/coroutines/b1;


# virtual methods
.method public final c(Landroidx/lifecycle/n;Landroidx/lifecycle/h$b;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/h$c;

    move-result-object p2

    sget-object v1, Landroidx/lifecycle/h$c;->DESTROYED:Landroidx/lifecycle/h$c;

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    .line 2
    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/h$c;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->f:Landroidx/lifecycle/i;

    invoke-static {p2}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/i;)Landroidx/lifecycle/h$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->f:Landroidx/lifecycle/i;

    invoke-static {p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/i;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/c;->a()V

    throw v2

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->f:Landroidx/lifecycle/i;

    invoke-static {p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/i;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/c;->b()V

    throw v2

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->f:Landroidx/lifecycle/i;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->g:Lkotlinx/coroutines/b1;

    const/4 v0, 0x1

    .line 6
    invoke-static {p2, v2, v0, v2}, Lkotlinx/coroutines/b1$a;->a(Lkotlinx/coroutines/b1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/i;->c()V

    throw v2
.end method
