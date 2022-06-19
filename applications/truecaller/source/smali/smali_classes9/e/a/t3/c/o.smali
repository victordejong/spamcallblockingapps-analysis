.class public final Le/a/t3/c/o;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/t3/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/v0<",
            "Le/a/t3/c/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/v0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/v0<",
            "Le/a/t3/c/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/t3/c/o;->a:Le/a/v0;

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/o;->a:Le/a/v0;

    invoke-interface {v0}, Le/a/v0;->Kb()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t3/c/o;->a:Le/a/v0;

    invoke-interface {v0, p1}, Le/a/v0;->gc(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/o;->a:Le/a/v0;

    invoke-interface {v0, p1}, Le/a/v0;->Za(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t3/c/a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/t3/c/o;->a:Le/a/v0;

    invoke-interface {v0, p1, p2}, Le/a/v0;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0162

    const-string v1, "inflateView(parent, viewType)"

    if-eq p2, v0, :cond_2

    const v0, 0x7f0d0165

    if-eq p2, v0, :cond_1

    const v0, 0x7f0d0167

    if-eq p2, v0, :cond_0

    .line 2
    new-instance v0, Le/a/t3/c/w;

    invoke-virtual {p0, p1, p2}, Le/a/t3/c/o;->e(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/t3/c/w;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/a/t3/c/u;

    invoke-virtual {p0, p1, p2}, Le/a/t3/c/o;->e(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/t3/c/u;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Le/a/t3/c/s;

    invoke-virtual {p0, p1, p2}, Le/a/t3/c/o;->e(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/t3/c/s;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Le/a/t3/c/c;

    invoke-virtual {p0, p1, p2}, Le/a/t3/c/o;->e(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/t3/c/c;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0
.end method
