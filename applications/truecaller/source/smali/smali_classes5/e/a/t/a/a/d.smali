.class public final Le/a/t/a/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/t/a/a/o;",
        ">;",
        "Le/a/t/a/a/p;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/t/a/a/e;


# direct methods
.method public constructor <init>(Le/a/t/a/a/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/t/a/a/d;->c:Le/a/t/a/a/e;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/t/a/a/d;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/t/a/a/d;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;II)V
    .locals 0

    const-string p2, "id"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/t/a/a/d;->b:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/t/a/a/o;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/t/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t/a/a/f;

    .line 4
    iget-object v0, p0, Le/a/t/a/a/d;->b:Ljava/util/Map;

    .line 5
    iget-object v1, p2, Le/a/t/a/a/f;->a:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "gif"

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/a/t/a/a/d;->b:Ljava/util/Map;

    .line 8
    iget-object v2, p2, Le/a/t/a/a/f;->a:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 10
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "this.itemView"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const-string v0, "listener"

    .line 12
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p0, p1, Le/a/t/a/a/o;->a:Le/a/t/a/a/p;

    .line 14
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Le/a/t/a/a/o;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Le/a/t/a/a/n;

    invoke-direct {v2, p1, p2}, Le/a/t/a/a/n;-><init>(Le/a/t/a/a/o;Le/a/t/a/a/f;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 16
    :cond_1
    :goto_0
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Le/a/t/a/a/o;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 18
    iget-object v1, p2, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 19
    iget-object v1, v1, Le/a/t/a/a/c;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v0

    .line 21
    iget-object v1, p1, Le/a/t/a/a/o;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/android/truemoji/PlaceholderImageView;

    .line 22
    invoke-virtual {v0, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 23
    iget-object v0, p1, Le/a/t/a/a/o;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/PlaceholderImageView;

    .line 24
    new-instance v1, Le/a/t/a/a/m;

    invoke-direct {v1, p1, p2}, Le/a/t/a/a/m;-><init>(Le/a/t/a/a/o;Le/a/t/a/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/t/a/a/o;

    sget v0, Lcom/truecaller/android/truemoji/R$layout;->item_gif:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/a/t/a/a/d;->c:Le/a/t/a/a/e;

    invoke-direct {p2, p1, v0}, Le/a/t/a/a/o;-><init>(Landroid/view/View;Le/a/t/a/a/e;)V

    return-object p2
.end method
