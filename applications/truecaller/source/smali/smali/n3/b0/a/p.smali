.class public abstract Ln3/b0/a/p;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public final mDiffer:Ln3/b0/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b0/a/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Ln3/b0/a/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b0/a/d$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/b0/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b0/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 7
    new-instance v0, Ln3/b0/a/p$a;

    invoke-direct {v0, p0}, Ln3/b0/a/p$a;-><init>(Ln3/b0/a/p;)V

    iput-object v0, p0, Ln3/b0/a/p;->mListener:Ln3/b0/a/d$b;

    .line 8
    new-instance v1, Ln3/b0/a/d;

    new-instance v2, Ln3/b0/a/b;

    invoke-direct {v2, p0}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-direct {v1, v2, p1}, Ln3/b0/a/d;-><init>(Ln3/b0/a/q;Ln3/b0/a/c;)V

    iput-object v1, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    .line 9
    iget-object p1, v1, Ln3/b0/a/d;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ln3/b0/a/h$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b0/a/h$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ln3/b0/a/p$a;

    invoke-direct {v0, p0}, Ln3/b0/a/p$a;-><init>(Ln3/b0/a/p;)V

    iput-object v0, p0, Ln3/b0/a/p;->mListener:Ln3/b0/a/d$b;

    .line 3
    new-instance v1, Ln3/b0/a/d;

    new-instance v2, Ln3/b0/a/b;

    invoke-direct {v2, p0}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance v3, Ln3/b0/a/c$a;

    invoke-direct {v3, p1}, Ln3/b0/a/c$a;-><init>(Ln3/b0/a/h$e;)V

    .line 4
    invoke-virtual {v3}, Ln3/b0/a/c$a;->a()Ln3/b0/a/c;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln3/b0/a/d;-><init>(Ln3/b0/a/q;Ln3/b0/a/c;)V

    iput-object v1, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    .line 5
    iget-object p1, v1, Ln3/b0/a/d;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    .line 2
    iget-object v0, v0, Ln3/b0/a/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    .line 2
    iget-object v0, v0, Ln3/b0/a/d;->f:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    .line 2
    iget-object v0, v0, Ln3/b0/a/d;->f:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/b0/a/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ln3/b0/a/p;->mDiffer:Ln3/b0/a/d;

    invoke-virtual {v0, p1, p2}, Ln3/b0/a/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
