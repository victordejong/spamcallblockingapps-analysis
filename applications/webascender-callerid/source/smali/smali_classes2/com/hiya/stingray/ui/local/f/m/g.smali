.class public final Lcom/hiya/stingray/ui/local/f/m/g;
.super Lcom/hiya/stingray/ui/local/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/local/f/b<",
        "Lkotlin/l<",
        "+",
        "Lcom/hiya/stingray/t/h1/d;",
        "+",
        "Lcom/hiya/stingray/t/h1/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/b;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/g;->c:Lcom/hiya/stingray/manager/e1;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/m/g;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/l;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/f/m/g;->g(Landroidx/recyclerview/widget/RecyclerView$d0;Lkotlin/l;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/local/f/n/m;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b4

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026il_rating, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/m;-><init>(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/g;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/m;->o(Lcom/hiya/stingray/manager/e1;)V

    return-object p2
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$d0;Lkotlin/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pair"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/local/f/n/l;

    .line 2
    invoke-virtual {p2}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->b()Lcom/hiya/stingray/t/h1/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p2}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->b()Lcom/hiya/stingray/t/h1/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-virtual {p2}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->b()Lcom/hiya/stingray/t/h1/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/local/f/n/l;->b(Lcom/hiya/stingray/t/h1/a;)V

    .line 4
    invoke-virtual {p2}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p2}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Lcom/hiya/stingray/t/h1/c;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/h1/c;->d()Lcom/hiya/stingray/t/h1/h;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hiya/stingray/ui/local/f/n/l;->j(Lcom/hiya/stingray/t/h1/h;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_2
    return-void

    .line 6
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/hiya/stingray/ui/local/f/m/g;->b:Z

    .line 7
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/b;->e()V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/m/g;->b:Z

    return v0
.end method
