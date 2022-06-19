.class public final Le/a/k/a/e/l/b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/k/a/e/l/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/k/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/k/a/e/l/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iput-object v0, p0, Le/a/k/a/e/l/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/e/l/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/k/a/e/l/a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/k/a/e/l/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/k/a/e/a;

    const-string v0, "hiddenContactItem"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/k/a/e/l/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/m/n;

    .line 6
    iget-object v1, v0, Le/a/k/m/n;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 7
    iget-object v2, p1, Le/a/k/a/e/l/a;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/a/b/a;

    .line 8
    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 9
    iget-object v1, p1, Le/a/k/a/e/l/a;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/a/b/a;

    .line 10
    iget-object v2, p2, Le/a/k/a/e/a;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 11
    invoke-static {v1, v2, v3, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Le/a/k/m/n;->c:Landroid/widget/TextView;

    const-string v2, "contactName"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, p2, Le/a/k/a/e/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p2, Le/a/k/a/e/a;->b:Ljava/lang/String;

    .line 15
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, v0, Le/a/k/m/n;->b:Landroid/widget/ImageView;

    new-instance v2, Ls;

    invoke-direct {v2, v3, p1, p2}, Ls;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, v0, Le/a/k/m/n;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    new-instance v1, Ls;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Ls;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/k/a/e/l/a;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/videocallerid/R$layout;->item_view_video_caller_id_hidden_contact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026n_contact, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/k/a/e/l/b;->b:Le/a/k/a/e/l/a$a;

    .line 5
    invoke-direct {p2, p1, v0}, Le/a/k/a/e/l/a;-><init>(Landroid/view/View;Le/a/k/a/e/l/a$a;)V

    return-object p2
.end method
