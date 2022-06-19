.class public Landroidx/databinding/ViewDataBinding$q;
.super Ln3/n/i$a;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/n/i$a;",
        "Landroidx/databinding/ViewDataBinding$l<",
        "Ln3/n/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$o<",
            "Ln3/n/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/n/i$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$o;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$o;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$l;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    return-void
.end method


# virtual methods
.method public b(Ln3/v/b0;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ln3/n/i;

    .line 2
    invoke-interface {p1, p0}, Ln3/n/i;->removeOnPropertyChangedCallback(Ln3/n/i$a;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ln3/n/i;

    .line 2
    invoke-interface {p1, p0}, Ln3/n/i;->addOnPropertyChangedCallback(Ln3/n/i$a;)V

    return-void
.end method

.method public e(Ln3/n/i;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$o;->a()Z

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    .line 5
    iget-object v2, v0, Landroidx/databinding/ViewDataBinding$o;->c:Ljava/lang/Object;

    .line 6
    check-cast v2, Ln3/n/i;

    if-eq v2, p1, :cond_2

    return-void

    .line 7
    :cond_2
    iget v0, v0, Landroidx/databinding/ViewDataBinding$o;->b:I

    invoke-static {v1, v0, p1, p2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    return-void
.end method
