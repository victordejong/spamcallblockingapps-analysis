.class public final Le/a/b/a/b/j/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/b/a/b/j/i;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public final c:Le/f/a/i;

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Le/f/a/i;Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Le/f/a/i;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageUrls"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAddListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    iput-object p2, p0, Le/a/b/a/b/j/c;->c:Le/f/a/i;

    iput-object p3, p0, Le/a/b/a/b/j/c;->d:Ls1/z/b/l;

    iput-object p4, p0, Le/a/b/a/b/j/c;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/c;->a:Ljava/lang/Integer;

    .line 2
    iput-object p1, p0, Le/a/b/a/b/j/c;->a:Ljava/lang/Integer;

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final g([Ljava/lang/String;)V
    .locals 2

    const-string v0, "images"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b/a/b/j/h;

    iget-object v1, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Le/a/b/a/b/j/h;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v0

    const-string v1, "DiffUtil.calculateDiff(I\u2026lback(imageUrls, images))"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    .line 5
    new-instance p1, Ln3/b0/a/b;

    invoke-direct {p1, p0}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0, p1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 10

    .line 1
    check-cast p1, Le/a/b/a/b/j/i;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Le/a/b/a/b/j/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/b/a/b/j/c;->b:[Ljava/lang/String;

    aget-object v4, v0, p2

    if-eqz v4, :cond_3

    check-cast p1, Le/a/b/a/b/j/g;

    iget-object v5, p0, Le/a/b/a/b/j/c;->d:Ls1/z/b/l;

    iget-object v3, p0, Le/a/b/a/b/j/c;->c:Le/f/a/i;

    iget-object v0, p0, Le/a/b/a/b/j/c;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "imageUrl"

    .line 4
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onClickListener"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestManager"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/b/a/b/j/g;->a:Le/a/b/m/e1;

    .line 6
    invoke-virtual {v3, v4}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v1

    iget-object v2, p1, Le/a/b/m/e1;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 7
    iget-object v1, p1, Le/a/b/m/e1;->b:Landroid/widget/ImageView;

    const-string v2, "image"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v8, p1, Le/a/b/m/e1;->b:Landroid/widget/ImageView;

    new-instance v9, Le/a/b/a/b/j/f;

    move-object v1, v9

    move-object v2, p1

    move v6, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Le/a/b/a/b/j/f;-><init>(Le/a/b/m/e1;Le/f/a/i;Ljava/lang/String;Ls1/z/b/l;II)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "selectionView"

    if-ne v0, p2, :cond_1

    .line 9
    iget-object p1, p1, Le/a/b/m/e1;->c:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p1, Le/a/b/m/e1;->c:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_2
    instance-of v0, p1, Le/a/b/a/b/j/b;

    if-eqz v0, :cond_3

    check-cast p1, Le/a/b/a/b/j/b;

    iget-object v0, p0, Le/a/b/a/b/j/c;->e:Ls1/z/b/l;

    const-string v1, "onAddListener"

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Le/a/b/a/b/j/b;->a:Le/a/b/m/w0;

    iget-object p1, p1, Le/a/b/m/w0;->b:Landroid/widget/Button;

    new-instance v1, Le/a/b/a/b/j/a;

    invoke-direct {v1, v0, p2}, Le/a/b/a/b/j/a;-><init>(Ls1/z/b/l;I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Missing required view with ID: "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    .line 2
    new-instance p2, Le/a/b/a/b/j/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3
    sget v3, Lcom/truecaller/bizmon/R$layout;->layout_add_image_box:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$id;->btnAdd:I

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 6
    new-instance v0, Le/a/b/m/w0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v2}, Le/a/b/m/w0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;)V

    const-string p1, "LayoutAddImageBoxBinding\u2026.context), parent, false)"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/b/a/b/j/b;-><init>(Le/a/b/m/w0;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_1
    new-instance p2, Le/a/b/a/b/j/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 11
    sget v3, Lcom/truecaller/bizmon/R$layout;->layout_image_box:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    sget v1, Lcom/truecaller/bizmon/R$id;->image:I

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 14
    sget v1, Lcom/truecaller/bizmon/R$id;->selectionView:I

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 16
    new-instance v0, Le/a/b/m/e1;

    check-cast p1, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p1, v2, v3}, Le/a/b/m/e1;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/view/View;)V

    const-string p1, "LayoutImageBoxBinding.in\u2026.context), parent, false)"

    .line 17
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/b/a/b/j/g;-><init>(Le/a/b/m/e1;)V

    :goto_0
    return-object p2

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
