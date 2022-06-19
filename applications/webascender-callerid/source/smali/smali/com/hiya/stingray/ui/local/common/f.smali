.class public final Lcom/hiya/stingray/ui/local/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/ui/local/common/e;Landroid/content/Context;Lcom/hiya/stingray/ui/local/common/c;Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/common/n$c;)V
    .locals 7

    const-string v0, "$this$setup"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adapter"

    invoke-static {p2, p0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "recyclerView"

    invoke-static {p3, p0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/hiya/stingray/ui/local/common/f$a;

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/common/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/local/common/c;->g(Lkotlin/w/b/l;)V

    .line 2
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const p0, 0x7f0700ea

    if-eqz p4, :cond_0

    .line 3
    new-instance v6, Lcom/hiya/stingray/ui/common/n;

    const v2, 0x7f06019a

    const v3, 0x7f0c00c0

    const v4, 0x7f0903bb

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/hiya/stingray/ui/common/n$c;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 4
    invoke-static {p2}, Lkotlin/s/k;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v6, p0}, Lcom/hiya/stingray/util/f0;->b(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;I)Lcom/hiya/stingray/ui/common/o;

    move-result-object p0

    .line 6
    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    invoke-virtual {p3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p4, Lcom/hiya/stingray/ui/common/p;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 10
    invoke-direct {p4, p1, p0}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/hiya/stingray/ui/local/common/e;Landroid/content/Context;Lcom/hiya/stingray/ui/local/common/c;Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/common/n$c;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/local/common/f;->a(Lcom/hiya/stingray/ui/local/common/e;Landroid/content/Context;Lcom/hiya/stingray/ui/local/common/c;Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/common/n$c;)V

    return-void
.end method
