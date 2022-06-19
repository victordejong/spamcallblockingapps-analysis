.class public final Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;Lkotlin/a0/b;Lkotlin/w/b/a;Lkotlin/w/b/a;)Lkotlin/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/b0;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/a0/b<",
            "TVM;>;",
            "Lkotlin/w/b/a<",
            "+",
            "Landroidx/lifecycle/f0;",
            ">;",
            "Lkotlin/w/b/a<",
            "+",
            "Landroidx/lifecycle/d0$b;",
            ">;)",
            "Lkotlin/g<",
            "TVM;>;"
        }
    .end annotation

    const-string v0, "$this$createViewModelLazy"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroidx/fragment/app/d0$a;

    invoke-direct {p3, p0}, Landroidx/fragment/app/d0$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    :goto_0
    new-instance p0, Landroidx/lifecycle/c0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/c0;-><init>(Lkotlin/a0/b;Lkotlin/w/b/a;Lkotlin/w/b/a;)V

    return-object p0
.end method
