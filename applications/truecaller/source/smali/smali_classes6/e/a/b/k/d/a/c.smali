.class public final Le/a/b/k/d/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/o/f/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/o/f/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/b/o/f/c/h;

.field public final d:Le/a/b/o/f/c/d;

.field public final e:Le/a/b/k/d/a/d;


# direct methods
.method public constructor <init>(Le/a/b/o/f/c/h;Le/a/b/o/f/c/d;Le/a/b/k/d/a/d;)V
    .locals 1

    const-string v0, "districtPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "districtIndexPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/b/k/d/a/c;->c:Le/a/b/o/f/c/h;

    iput-object p2, p0, Le/a/b/k/d/a/c;->d:Le/a/b/o/f/c/d;

    iput-object p3, p0, Le/a/b/k/d/a/c;->e:Le/a/b/k/d/a/d;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b/k/d/a/c;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b/k/d/a/c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Le/a/b/k/d/a/c$a;

    invoke-direct {v0, p0}, Le/a/b/k/d/a/c$a;-><init>(Le/a/b/k/d/a/c;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/k/d/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/k/d/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/o/f/c/b;

    .line 2
    iget-object p1, p1, Le/a/b/o/f/c/b;->a:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const-string p1, "type"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/k/d/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b/o/f/c/b;

    invoke-virtual {p2}, Le/a/b/o/f/c/b;->a()Le/a/b/k/b/b/b;

    move-result-object p2

    .line 2
    instance-of v0, p1, Le/a/b/o/f/c/f;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/b/k/d/a/c;->d:Le/a/b/o/f/c/d;

    check-cast p1, Le/a/b/o/f/c/e;

    .line 4
    iget-object p2, p2, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "districtIndexView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1, p2}, Le/a/b/o/f/c/e;->s3(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Le/a/b/o/f/c/j;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/b/k/d/a/c;->c:Le/a/b/o/f/c/h;

    move-object v1, p1

    check-cast v1, Le/a/b/o/f/c/i;

    .line 9
    iget-object v2, p2, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    .line 10
    iget v3, p2, Le/a/b/k/b/b/b;->c:I

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Le/a/b/o/f/c/h;->a(Le/a/b/o/f/c/i;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le/a/b/k/d/a/c$b;

    invoke-direct {v0, p0, p2}, Le/a/b/k/d/a/c$b;-><init>(Le/a/b/k/d/a/c;Le/a/b/k/b/b/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1
    sget-object v1, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_INDEX:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Le/a/b/o/f/c/f;

    sget v2, Lcom/truecaller/bizmon/R$layout;->item_district_list_index:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "mInflater.inflate(R.layo\u2026ist_index, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/b/o/f/c/f;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    const/4 v2, 0x1

    const-string v3, "mInflater.inflate(R.layo\u2026rict_list, parent, false)"

    if-ne p2, v2, :cond_1

    .line 4
    new-instance p2, Le/a/b/o/f/c/j;

    sget v2, Lcom/truecaller/bizmon/R$layout;->item_district_list:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/b/o/f/c/j;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Le/a/b/o/f/c/j;

    sget v2, Lcom/truecaller/bizmon/R$layout;->item_district_list:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/b/o/f/c/j;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
