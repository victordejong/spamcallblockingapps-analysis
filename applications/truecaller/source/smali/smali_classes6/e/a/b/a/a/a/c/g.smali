.class public final Le/a/b/a/a/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/c/c;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/g;->a:Le/a/b/a/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Ls1/k;

    .line 2
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v2, "categoryList"

    const-string v3, "categoryGrid"

    const-string v4, "noResult"

    const-string v5, "noResultIcon"

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/b/a/a/a/c/g;->a:Le/a/b/a/a/a/c/c;

    .line 5
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    sget-object v6, Le/a/b/a/a/a/c/c;->i:[Ls1/a/l;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    .line 10
    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->OA()Le/a/b/m/s0;

    move-result-object v7

    .line 11
    iget-object v8, v7, Le/a/b/m/s0;->d:Landroid/widget/ImageView;

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 12
    iget-object v5, v7, Le/a/b/m/s0;->c:Landroid/widget/TextView;

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 13
    iget-object v4, v7, Le/a/b/m/s0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, v6, 0x1

    invoke-static {v4, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 14
    iget-object v3, v7, Le/a/b/m/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    if-nez v6, :cond_5

    .line 15
    iget-object v2, v0, Le/a/b/a/a/a/c/c;->d:Le/a/b/a/c/a/c0/b;

    if-eqz v2, :cond_2

    const-string v0, "filteredCategories"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Le/a/g5/e0/u/a;

    iget-object v3, v2, Le/a/b/a/c/a/c0/b;->b:Ljava/util/List;

    invoke-direct {v0, v3, p1}, Le/a/g5/e0/u/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 18
    invoke-static {v0, v1}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v0

    const-string v1, "DiffUtil.calculateDiff(C\u2026ies, filteredCategories))"

    .line 19
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, v2, Le/a/b/a/c/a/c0/b;->b:Ljava/util/List;

    .line 21
    new-instance p1, Ln3/b0/a/b;

    invoke-direct {p1, v2}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0, p1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    goto/16 :goto_2

    .line 22
    :cond_2
    new-instance v1, Le/a/b/a/c/a/c0/b;

    new-instance v2, Le/a/b/a/a/a/c/d;

    invoke-direct {v2, v0}, Le/a/b/a/a/a/c/d;-><init>(Le/a/b/a/a/a/c/c;)V

    invoke-direct {v1, p1, v2}, Le/a/b/a/c/a/c0/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    iput-object v1, v0, Le/a/b/a/a/a/c/c;->d:Le/a/b/a/c/a/c0/b;

    .line 23
    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->OA()Le/a/b/m/s0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/s0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.categoryGrid"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/a/b/a/a/a/c/c;->d:Le/a/b/a/c/a/c0/b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Le/a/b/a/a/a/c/g;->a:Le/a/b/a/a/a/c/c;

    .line 25
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 26
    move-object v9, p1

    check-cast v9, Ljava/util/List;

    .line 27
    sget-object p1, Le/a/b/a/a/a/c/c;->i:[Ls1/a/l;

    .line 28
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 30
    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->OA()Le/a/b/m/s0;

    move-result-object v1

    .line 31
    iget-object v6, v1, Le/a/b/m/s0;->d:Landroid/widget/ImageView;

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 32
    iget-object v5, v1, Le/a/b/m/s0;->c:Landroid/widget/TextView;

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 33
    iget-object v4, v1, Le/a/b/m/s0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 34
    iget-object v1, v1, Le/a/b/m/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-nez p1, :cond_5

    .line 35
    iget-object p1, v0, Le/a/b/a/a/a/c/c;->e:Le/a/g5/e0/u/g;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Le/a/g5/e0/u/g;->e(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 36
    :cond_4
    new-instance p1, Le/a/g5/e0/u/g;

    sget-object v7, Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;->BIZMON:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    .line 37
    iget-object v1, v0, Le/a/b/a/a/a/c/c;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/f/a/i;

    .line 38
    new-instance v11, Le/a/b/a/a/a/c/e;

    invoke-direct {v11, v0}, Le/a/b/a/a/a/c/e;-><init>(Le/a/b/a/a/a/c/c;)V

    const/4 v12, 0x2

    const/4 v8, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Le/a/g5/e0/u/g;-><init>(Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;Ljava/lang/String;Ljava/util/List;Le/f/a/i;Ls1/z/b/l;I)V

    iput-object p1, v0, Le/a/b/a/a/a/c/c;->e:Le/a/g5/e0/u/g;

    .line 39
    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->OA()Le/a/b/m/s0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.categoryList"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/a/b/a/a/a/c/c;->e:Le/a/g5/e0/u/g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_5
    :goto_2
    return-void
.end method
