.class public final Le/a/b/b/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/b/b/c/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b/b/c/t;


# direct methods
.method public constructor <init>(Le/a/b/b/c/t;)V
    .locals 1

    const-string v0, "pictureListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/c;->b:Le/a/b/b/c/t;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/b/b/c/c$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "picture"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/a/b/b/c/c$a;->N4()Le/a/b/m/c0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/c0;->a:Landroid/widget/ImageView;

    const-string v1, "binding.pictureImageView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 8
    check-cast v0, Le/a/z3/d;

    .line 9
    invoke-virtual {v0}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Le/a/b/b/c/c$a;->N4()Le/a/b/m/c0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/c0;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    move-result-object p1

    const-string p2, "GlideApp.with(binding.pi\u2026binding.pictureImageView)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Le/a/b/b/c/c$a;->N4()Le/a/b/m/c0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/c0;->a:Landroid/widget/ImageView;

    sget p2, Lcom/truecaller/bizmon/R$drawable;->business_profile_ic_add_picture_gray:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/bizmon/R$layout;->business_profile_row_picture:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/b/b/c/c$a;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Le/a/b/b/c/c$a;-><init>(Le/a/b/b/c/c;Landroid/view/View;)V

    return-object p2
.end method
