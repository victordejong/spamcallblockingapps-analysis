.class public final Ln3/z/d2;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/z/f2;

.field public final synthetic b:Ln3/z/c2;


# direct methods
.method public constructor <init>(Ln3/z/f2;Ln3/z/c2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/d2;->a:Ln3/z/f2;

    iput-object p2, p0, Ln3/z/d2;->b:Ln3/z/c2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/d2;->b:Ln3/z/c2;

    invoke-virtual {v0}, Ln3/z/c2;->a()V

    .line 2
    iget-object v0, p0, Ln3/z/d2;->a:Ln3/z/f2;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeInserted(II)V

    return-void
.end method
