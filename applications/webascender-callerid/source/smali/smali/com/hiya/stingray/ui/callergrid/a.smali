.class public final Lcom/hiya/stingray/ui/callergrid/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/callergrid/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/t/v0;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/callergrid/a$a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/callergrid/a$a;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->d:Lkotlin/w/b/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/a;->c:Lkotlin/w/b/p;

    invoke-direct {p2, p1, v0, v1}, Lcom/hiya/stingray/ui/callergrid/a$a;-><init>(Landroid/view/View;Lkotlin/w/b/a;Lkotlin/w/b/p;)V

    return-object p2
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->a:Z

    return-void
.end method

.method public final e(Lkotlin/w/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/p<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/t/v0;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->c:Lkotlin/w/b/p;

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final g(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->d:Lkotlin/w/b/a;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/callergrid/a$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/a;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/g0;

    invoke-virtual {p1, v0, v1, p2}, Lcom/hiya/stingray/ui/callergrid/a$a;->p(Landroid/content/Context;ILcom/hiya/stingray/t/g0;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/callergrid/a;->c(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/callergrid/a$a;

    move-result-object p1

    return-object p1
.end method
