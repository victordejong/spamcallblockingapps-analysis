.class public final Le/a/e/c/m2;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c/m2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/e/c/m2$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/e/c/l2;


# direct methods
.method public constructor <init>(Le/a/e/c/l2;)V
    .locals 1

    const-string v0, "pictureListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/e/c/m2;->b:Le/a/e/c/l2;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/e/c/m2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/m2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/e/c/m2$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e/c/m2;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "picture"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/e/c/m2$a;->N4()Le/a/m3/c1;

    move-result-object p1

    .line 6
    iget-object v0, p1, Le/a/m3/c1;->a:Landroid/widget/ImageView;

    const-string v1, "pictureImageView"

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

    const v0, 0x7f0801cc

    .line 10
    invoke-virtual {p2, v0}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object p2

    .line 12
    iget-object p1, p1, Le/a/m3/c1;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d04bb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/e/c/m2$a;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Le/a/e/c/m2$a;-><init>(Le/a/e/c/m2;Landroid/view/View;)V

    return-object p2
.end method
