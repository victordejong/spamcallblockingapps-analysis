.class public final Lcom/hiya/stingray/ui/local/settings/m;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/settings/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/local/settings/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/hiya/stingray/t/a1;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/w/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/p<",
            "Lcom/hiya/stingray/t/a1;",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/m;->b:Lkotlin/w/b/p;

    return-object v0
.end method

.method public d(Lcom/hiya/stingray/ui/local/settings/m$a;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/a1;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/settings/m$a;->n(Lcom/hiya/stingray/t/a1;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/local/settings/m$a;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/local/settings/m$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ting_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/hiya/stingray/ui/local/settings/m$a;-><init>(Lcom/hiya/stingray/ui/local/settings/m;Landroid/view/View;)V

    return-object p2
.end method

.method public final f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m;->a:Ljava/util/List;

    return-void
.end method

.method public final g(Lkotlin/w/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/hiya/stingray/t/a1;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m;->b:Lkotlin/w/b/p;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/local/settings/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/m;->d(Lcom/hiya/stingray/ui/local/settings/m$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/m;->e(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/local/settings/m$a;

    move-result-object p1

    return-object p1
.end method
