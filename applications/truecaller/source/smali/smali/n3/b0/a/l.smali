.class public Ln3/b0/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/b0/a/k$f;

.field public final synthetic b:I

.field public final synthetic c:Ln3/b0/a/k;


# direct methods
.method public constructor <init>(Ln3/b0/a/k;Ln3/b0/a/k$f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    iput-object p2, p0, Ln3/b0/a/l;->a:Ln3/b0/a/k$f;

    iput p3, p0, Ln3/b0/a/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    iget-object v0, v0, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ln3/b0/a/l;->a:Ln3/b0/a/k$f;

    iget-boolean v1, v0, Ln3/b0/a/k$f;->k:Z

    if-nez v1, :cond_4

    iget-object v0, v0, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    iget-object v0, v0, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning(Landroidx/recyclerview/widget/RecyclerView$l$a;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    .line 5
    iget-object v1, v0, Ln3/b0/a/k;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 6
    iget-object v4, v0, Ln3/b0/a/k;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/b0/a/k$f;

    iget-boolean v4, v4, Ln3/b0/a/k$f;->l:Z

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 7
    iget-object v0, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    iget-object v0, v0, Ln3/b0/a/k;->m:Ln3/b0/a/k$d;

    iget-object v1, p0, Ln3/b0/a/l;->a:Ln3/b0/a/k$f;

    iget-object v1, v1, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    check-cast v0, Le/a/a/c/d8;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "viewHolder"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Ln3/b0/a/l;->c:Ln3/b0/a/k;

    iget-object v0, v0, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method
