.class public final Le/a/b/a/b/i/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/b/a/b/i/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/b/a/b/i/e;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/a/b/i/e;Ljava/util/List;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Le/a/b/a/b/i/c;->b:Le/a/b/a/b/i/c;

    .line 2
    sget-object p2, Le/a/b/a/b/i/c;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "colorListener"

    .line 3
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "colorList"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/b/a/b/i/d;->c:Le/a/b/a/b/i/e;

    iput-object p2, p0, Le/a/b/a/b/i/d;->d:Ljava/util/List;

    .line 5
    invoke-static {p2}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 6
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    const/4 p3, 0x0

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7
    iput-object p1, p0, Le/a/b/a/b/i/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/i/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/b/a/b/i/f;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Le/a/b/a/b/i/b;

    const-string v1, "listener"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Le/a/b/a/b/i/b;

    .line 4
    iget-object v0, p0, Le/a/b/a/b/i/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget v4, p0, Le/a/b/a/b/i/d;->a:I

    if-ne v4, p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object p2, p0, Le/a/b/a/b/i/d;->c:Le/a/b/a/b/i/e;

    const-string v3, "color"

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/b/a/b/i/b;->a:Le/a/b/m/x0;

    .line 8
    iget-object v1, p1, Le/a/b/m/x0;->b:Landroidx/cardview/widget/CardView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 9
    iget-object v1, p1, Le/a/b/m/x0;->c:Landroid/widget/FrameLayout;

    const-string v3, "colorRootView"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 10
    iget-object p1, p1, Le/a/b/m/x0;->c:Landroid/widget/FrameLayout;

    new-instance v1, Le/a/b/a/b/i/a;

    invoke-direct {v1, v0, v2, p2}, Le/a/b/a/b/i/a;-><init>(Ljava/lang/String;ZLe/a/b/a/b/i/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 11
    :cond_1
    instance-of p2, p1, Le/a/b/a/b/i/h;

    if-eqz p2, :cond_3

    check-cast p1, Le/a/b/a/b/i/h;

    iget p2, p0, Le/a/b/a/b/i/d;->a:I

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object p2, p0, Le/a/b/a/b/i/d;->c:Le/a/b/a/b/i/e;

    .line 12
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Le/a/b/a/b/i/h;->a:Le/a/b/m/y0;

    .line 14
    iget-object v0, p1, Le/a/b/m/y0;->b:Landroidx/cardview/widget/CardView;

    const-string v1, "#F2F5F7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 15
    iget-object v0, p1, Le/a/b/m/y0;->c:Landroid/widget/FrameLayout;

    const-string v1, "colorDeleteRootView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 16
    iget-object p1, p1, Le/a/b/m/y0;->c:Landroid/widget/FrameLayout;

    new-instance v0, Le/a/b/a/b/i/g;

    invoke-direct {v0, v2, p2}, Le/a/b/a/b/i/g;-><init>(ZLe/a/b/a/b/i/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 5

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Missing required view with ID: "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    .line 2
    new-instance p2, Le/a/b/a/b/i/h;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3
    sget v3, Lcom/truecaller/bizmon/R$layout;->layout_biz_brand_delete_color:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$id;->colorDeleteCardView:I

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    if-eqz v2, :cond_1

    .line 6
    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 7
    sget v3, Lcom/truecaller/bizmon/R$id;->deleteIcon:I

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 9
    new-instance p1, Le/a/b/m/y0;

    invoke-direct {p1, v1, v2, v1, v4}, Le/a/b/m/y0;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    const-string v0, "LayoutBizBrandDeleteColo\u2026.context), parent, false)"

    .line 10
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/b/a/b/i/h;-><init>(Le/a/b/m/y0;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_2
    new-instance p2, Le/a/b/a/b/i/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 14
    sget v3, Lcom/truecaller/bizmon/R$layout;->layout_biz_brand_color:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$id;->colorCardView:I

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    if-eqz v2, :cond_3

    .line 17
    check-cast p1, Landroid/widget/FrameLayout;

    .line 18
    new-instance v0, Le/a/b/m/x0;

    invoke-direct {v0, p1, v2, p1}, Le/a/b/m/x0;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;)V

    const-string p1, "LayoutBizBrandColorBindi\u2026.context), parent, false)"

    .line 19
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/b/a/b/i/b;-><init>(Le/a/b/m/x0;)V

    :goto_0
    return-object p2

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
