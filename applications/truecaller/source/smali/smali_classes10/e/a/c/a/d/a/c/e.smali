.class public final Le/a/c/a/d/a/c/e;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Le/a/c/a/l/a;",
        "Le/a/c/a/d/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/d/a/c/d;


# direct methods
.method public constructor <init>(Le/a/c/a/d/a/c/d;)V
    .locals 1

    const-string v0, "onFilterDismissedListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/d/a/c/a;

    invoke-direct {v0}, Le/a/c/a/d/a/c/a;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/d/a/c/e;->a:Le/a/c/a/d/a/c/d;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/c/a/d/a/c/c;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Le/a/c/a/l/a;

    iget-object v0, p0, Le/a/c/a/d/a/c/e;->a:Le/a/c/a/d/a/c/d;

    const-string v1, "accountUiModel"

    .line 4
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clickListener"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/c/a/d/a/c/c;->a:Le/a/c/a/g/a1;

    .line 6
    iget-object v1, p1, Le/a/c/a/g/a1;->b:Landroid/widget/TextView;

    const-string v2, "filterName"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p2, Le/a/c/a/l/a;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Le/a/c/a/g/a1;->a:Landroid/widget/LinearLayout;

    .line 10
    new-instance v1, Le/a/c/a/d/a/c/b;

    invoke-direct {v1, p2, v0}, Le/a/c/a/d/a/c/b;-><init>(Le/a/c/a/l/a;Le/a/c/a/d/a/c/d;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/c/a/d/a/c/c;

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_dismissable_chip:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    sget p2, Lcom/truecaller/insights/ui/R$id;->filterName:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 8
    new-instance p2, Le/a/c/a/g/a1;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1, v1}, Le/a/c/a/g/a1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-string p1, "LayoutDismissableChipBin\u2026.context), parent, false)"

    .line 9
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, p2}, Le/a/c/a/d/a/c/c;-><init>(Le/a/c/a/g/a1;)V

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
