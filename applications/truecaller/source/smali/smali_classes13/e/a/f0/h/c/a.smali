.class public final Le/a/f0/h/c/a;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f0/h/c/a$b;,
        Le/a/f0/h/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Le/a/f0/h/a/a;",
        "Le/a/f0/h/c/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Le/a/f0/h/a/a;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/f0/h/a/a;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onMenuItemClick"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f0/h/c/a$a;

    invoke-direct {v0}, Le/a/f0/h/c/a$a;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/f0/h/c/a;->a:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/f0/h/c/a$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/f0/h/a/a;

    if-eqz p2, :cond_0

    const-string v0, "item"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p2, Le/a/f0/h/a/a;->b:I

    .line 6
    iget-object v1, p1, Le/a/f0/h/c/a$b;->a:Le/a/f0/e/a;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/f0/e/a;->c(Ljava/lang/CharSequence;)V

    .line 7
    iget v0, p2, Le/a/f0/h/a/a;->c:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Le/a/f0/h/c/a$b;->a:Le/a/f0/e/a;

    invoke-virtual {v1, v0}, Le/a/f0/e/a;->a(Ljava/lang/Integer;)V

    .line 9
    iget-object v0, p1, Le/a/f0/h/c/a$b;->a:Le/a/f0/e/a;

    new-instance v1, Le/a/f0/h/c/b;

    invoke-direct {v1, p1, p2}, Le/a/f0/h/c/b;-><init>(Le/a/f0/h/c/a$b;Le/a/f0/h/a/a;)V

    invoke-virtual {v0, v1}, Le/a/f0/e/a;->b(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Le/a/f0/e/a;->f:I

    .line 3
    sget-object v0, Ln3/n/g;->a:Ln3/n/d;

    .line 4
    sget v0, Lcom/truecaller/social_media/R$layout;->layout_social_media_item:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, v2, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Le/a/f0/e/a;

    .line 5
    new-instance p2, Le/a/f0/h/c/a$b;

    const-string v0, "layout"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/f0/h/c/a;->a:Ls1/z/b/l;

    invoke-direct {p2, p1, v0}, Le/a/f0/h/c/a$b;-><init>(Le/a/f0/e/a;Ls1/z/b/l;)V

    return-object p2
.end method
