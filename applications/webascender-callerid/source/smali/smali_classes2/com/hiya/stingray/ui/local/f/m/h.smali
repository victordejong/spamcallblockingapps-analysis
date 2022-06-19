.class public final Lcom/hiya/stingray/ui/local/f/m/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/f/m/h$c;,
        Lcom/hiya/stingray/ui/local/f/m/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hiya/stingray/ui/local/f/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/ui/local/f/m/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hiya/stingray/ui/local/f/m/h<",
            "-TT;>.b;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/hiya/stingray/ui/local/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hiya/stingray/ui/local/f/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/local/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/ui/local/f/a<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "sectionListProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h;->c:Lcom/hiya/stingray/ui/local/f/a;

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/f/m/h$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/f/m/h$a;-><init>(Lcom/hiya/stingray/ui/local/f/m/h;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/f/a;->i(Lcom/hiya/stingray/ui/local/f/m/f;)V

    .line 3
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/h$b;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/h$b;-><init>(Lcom/hiya/stingray/ui/local/f/m/h;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h;->a:Lcom/hiya/stingray/ui/local/f/m/h$b;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h;->b:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic e(Lcom/hiya/stingray/ui/local/f/m/h;)Lcom/hiya/stingray/ui/local/f/m/h$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/h;->a:Lcom/hiya/stingray/ui/local/f/m/h$b;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/ui/local/f/m/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/h;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "holder.itemView.recyclerView"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/f/m/h;->a:Lcom/hiya/stingray/ui/local/f/m/h$b;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/common/p;

    .line 4
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v4, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "holder.itemView.context"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 6
    invoke-direct {v0, v3, v4}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    .line 8
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h;->c:Lcom/hiya/stingray/ui/local/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/a;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/local/f/m/h$c;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026yclerview, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/f/m/h$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final g()Lcom/hiya/stingray/ui/local/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h;->c:Lcom/hiya/stingray/ui/local/f/a;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h;->c:Lcom/hiya/stingray/ui/local/f/a;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v0

    return v0
.end method
