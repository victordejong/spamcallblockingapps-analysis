.class public final Lcom/hiya/stingray/ui/local/f/j;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/hiya/stingray/ui/local/f/m/e;

.field public b:Lcom/hiya/stingray/t/h1/d;

.field private c:Lcom/hiya/stingray/t/h1/c;

.field private d:[Lcom/hiya/stingray/ui/local/f/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hiya/stingray/ui/local/f/f;

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->d:[Lcom/hiya/stingray/ui/local/f/f;

    return-void
.end method


# virtual methods
.method public final c(Lcom/hiya/stingray/t/h1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/j;->c:Lcom/hiya/stingray/t/h1/c;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final d(Lcom/hiya/stingray/t/h1/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    return-void
.end method

.method public final e(Lcom/hiya/stingray/ui/local/f/m/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    return-void
.end method

.method public final f([Lcom/hiya/stingray/ui/local/f/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/j;->d:[Lcom/hiya/stingray/ui/local/f/f;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->d:[Lcom/hiya/stingray/ui/local/f/f;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->d:[Lcom/hiya/stingray/ui/local/f/f;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/local/f/f;->values()[Lcom/hiya/stingray/ui/local/f/f;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    aget-object p2, p2, v0

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/local/f/i;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "item"

    const-string v2, "presenterProvider"

    const/4 v3, 0x0

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/hiya/stingray/ui/local/f/m/e;->f()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/ui/local/f/h;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/hiya/stingray/ui/local/f/m/e;->a()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object p2

    .line 9
    new-instance v0, Lkotlin/l;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/j;->c:Lcom/hiya/stingray/t/h1/c;

    invoke-direct {v0, v2, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/ui/local/f/h;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_6
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/hiya/stingray/ui/local/f/m/e;->b()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object p2

    .line 14
    new-instance v0, Lkotlin/l;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/j;->c:Lcom/hiya/stingray/t/h1/c;

    invoke-direct {v0, v2, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/ui/local/f/h;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_7
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_8
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/hiya/stingray/ui/local/f/m/e;->j()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object p2

    .line 19
    new-instance v0, Lkotlin/l;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/j;->c:Lcom/hiya/stingray/t/h1/c;

    invoke-direct {v0, v2, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/ui/local/f/h;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_a
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_b
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_c
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz p2, :cond_e

    invoke-interface {p2}, Lcom/hiya/stingray/ui/local/f/m/e;->k()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->b:Lcom/hiya/stingray/t/h1/d;

    if-eqz v0, :cond_d

    .line 25
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/ui/local/f/h;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 26
    :cond_d
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 27
    :cond_e
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/local/f/f;->values()[Lcom/hiya/stingray/ui/local/f/f;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/hiya/stingray/ui/local/f/i;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "presenterProvider"

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/e;->f()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/e;->a()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/e;->b()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/e;->j()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_8
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/j;->a:Lcom/hiya/stingray/ui/local/f/m/e;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/e;->k()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_9
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method
