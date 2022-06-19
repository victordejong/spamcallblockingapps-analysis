.class public final Le/a/g5/e0/u/g;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/g5/e0/u/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/p5/h0;

.field public final b:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/f/a/i;

.field public final f:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Le/a/b0/p/c;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;Ljava/lang/String;Ljava/util/List;Le/f/a/i;Ls1/z/b/l;I)V
    .locals 1

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;->TAGGER:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    const-string p6, "tagSearchType"

    .line 2
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "categories"

    invoke-static {p3, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "glideRequestManager"

    invoke-static {p4, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "listener"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/g5/e0/u/g;->b:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    iput-object p2, p0, Le/a/g5/e0/u/g;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    iput-object p4, p0, Le/a/g5/e0/u/g;->e:Le/f/a/i;

    iput-object p5, p0, Le/a/g5/e0/u/g;->f:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filteredCategories"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g5/e0/u/g;->c:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Le/a/g5/e0/u/g;->c:Ljava/lang/String;

    .line 3
    new-instance v1, Le/a/g5/e0/u/a;

    iget-object v2, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    invoke-direct {v1, v2, p2}, Le/a/g5/e0/u/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v1

    const-string v2, "DiffUtil.calculateDiff(C\u2026ies, filteredCategories))"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Ln3/b0/a/b;

    invoke-direct {p1, p0}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v1, p1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/p/c;

    .line 2
    iget-wide v0, p1, Le/a/b0/p/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/g5/e0/u/f;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Le/a/g5/e0/u/d;

    const-string v1, "listener"

    const-string v2, "category"

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Le/a/g5/e0/u/d;

    iget-object v0, p0, Le/a/g5/e0/u/g;->c:Ljava/lang/String;

    iget-object v3, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b0/p/c;

    iget-object v3, p0, Le/a/g5/e0/u/g;->f:Ls1/z/b/l;

    iget-object v4, p0, Le/a/g5/e0/u/g;->e:Le/f/a/i;

    .line 5
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "glideRequestManager"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Le/a/g5/e0/u/d;->N4()Le/a/g5/d0/c;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/c;->b:Landroid/widget/TextView;

    const-string v2, "binding.rootCategoryText"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Le/a/g5/e0/u/d;->c:Le/a/p5/h0;

    sget v5, Lcom/truecaller/tagger/R$attr;->tcx_textPrimary:I

    invoke-interface {v2, v5}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v0, p2, v1, v2}, Le/a/l4/k;->b(Ljava/lang/String;Le/a/b0/p/c;Landroid/widget/TextView;I)V

    .line 7
    iget-object v0, p2, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v0}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    invoke-virtual {p1}, Le/a/g5/e0/u/d;->N4()Le/a/g5/d0/c;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 9
    iget-object v0, p1, Le/a/g5/e0/u/d;->d:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    sget-object v1, Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;->BIZMON:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p1, Le/a/g5/e0/u/d;->c:Le/a/p5/h0;

    sget v1, Lcom/truecaller/tagger/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Le/a/g5/e0/u/d;->N4()Le/a/g5/d0/c;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/c;->a:Landroid/widget/ImageView;

    const-string v2, "binding.rootCategoryIcon"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-virtual {p1}, Le/a/g5/e0/u/d;->N4()Le/a/g5/d0/c;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_0
    iget-object p1, p1, Le/a/g5/e0/u/d;->b:Landroid/view/View;

    new-instance v0, Le/a/g5/e0/u/e;

    invoke-direct {v0, v3, p2}, Le/a/g5/e0/u/e;-><init>(Ls1/z/b/l;Le/a/b0/p/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Le/a/g5/e0/u/b;

    if-eqz v0, :cond_2

    .line 15
    check-cast p1, Le/a/g5/e0/u/b;

    iget-object v0, p0, Le/a/g5/e0/u/g;->c:Ljava/lang/String;

    iget-object v3, p0, Le/a/g5/e0/u/g;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b0/p/c;

    iget-object v3, p0, Le/a/g5/e0/u/g;->f:Ls1/z/b/l;

    .line 16
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, p1, Le/a/g5/e0/u/b;->a:Le/a/p5/x0/b;

    sget-object v2, Le/a/g5/e0/u/b;->d:[Ls1/a/l;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v1, p1, v2}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v1

    check-cast v1, Le/a/g5/d0/d;

    .line 18
    iget-object v1, v1, Le/a/g5/d0/d;->a:Landroid/widget/TextView;

    const-string v2, "binding.categoryText"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Le/a/g5/e0/u/b;->c:Le/a/p5/h0;

    sget v4, Lcom/truecaller/tagger/R$attr;->tcx_textPrimary:I

    invoke-interface {v2, v4}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v0, p2, v1, v2}, Le/a/l4/k;->b(Ljava/lang/String;Le/a/b0/p/c;Landroid/widget/TextView;I)V

    .line 19
    iget-object p1, p1, Le/a/g5/e0/u/b;->b:Landroid/view/View;

    new-instance v0, Le/a/g5/e0/u/c;

    invoke-direct {v0, v3, p2}, Le/a/g5/e0/u/c;-><init>(Ls1/z/b/l;Le/a/b0/p/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 5

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/g5/e0/u/g;->a:Le/a/p5/h0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/g5/e0/u/g;->a:Le/a/p5/h0;

    :cond_0
    const/4 v0, 0x2

    const-string v1, "themedResourceProvider"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v0, :cond_2

    .line 4
    new-instance p2, Le/a/g5/e0/u/d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    sget v4, Lcom/truecaller/tagger/R$layout;->layout_search_rootcategory:I

    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026tcategory, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g5/e0/u/g;->a:Le/a/p5/h0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/g5/e0/u/g;->b:Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;

    .line 6
    invoke-direct {p2, p1, v0, v1}, Le/a/g5/e0/u/d;-><init>(Landroid/view/View;Le/a/p5/h0;Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    new-instance p2, Le/a/g5/e0/u/b;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 10
    sget v4, Lcom/truecaller/tagger/R$layout;->layout_search_subcategory:I

    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026bcategory, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g5/e0/u/g;->a:Le/a/p5/h0;

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p2, p1, v0}, Le/a/g5/e0/u/b;-><init>(Landroid/view/View;Le/a/p5/h0;)V

    :goto_0
    return-object p2

    .line 12
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
