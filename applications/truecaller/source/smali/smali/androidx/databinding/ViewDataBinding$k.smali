.class public Landroidx/databinding/ViewDataBinding$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;
.implements Landroidx/databinding/ViewDataBinding$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0;",
        "Landroidx/databinding/ViewDataBinding$l<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Ln3/v/b0;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$o;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$o;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$l;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    return-void
.end method


# virtual methods
.method public b(Ln3/v/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    .line 2
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$o;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$k;->b:Ln3/v/b0;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 7
    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->b:Ln3/v/b0;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->b:Ln3/v/b0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    :cond_0
    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$o;->a()Z

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    iget v1, p1, Landroidx/databinding/ViewDataBinding$o;->b:I

    .line 5
    iget-object p1, p1, Landroidx/databinding/ViewDataBinding$o;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    :cond_1
    return-void
.end method
