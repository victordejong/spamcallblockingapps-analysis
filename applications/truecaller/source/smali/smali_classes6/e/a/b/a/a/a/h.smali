.class public final Le/a/b/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/b/l/q;

    .line 2
    instance-of v0, p1, Le/a/b/l/q$c;

    const-string v1, "binding.pbLoading"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 4
    sget-object v4, Le/a/b/a/a/a/d;->m:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 7
    iget-object p1, p1, Le/a/b/l/q;->a:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getImageUrls()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 11
    iget-object p1, p1, Le/a/b/a/a/a/d;->d:Le/a/b/a/a/a/d$c;

    if-eqz p1, :cond_17

    .line 12
    invoke-interface {p1}, Le/a/b/a/a/a/d$c;->U0()V

    goto/16 :goto_9

    .line 13
    :cond_1
    iget-object v0, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 14
    iget-object v0, v0, Le/a/b/a/a/a/d;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 17
    :goto_2
    iget-object v4, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 18
    iget-object v4, v4, Le/a/b/a/a/a/d;->g:Ljava/util/List;

    .line 19
    invoke-static {p1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_11

    if-le v0, v1, :cond_4

    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v3

    .line 20
    :goto_3
    iget-object v4, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 21
    iput-object p1, v4, Le/a/b/a/a/a/d;->g:Ljava/util/List;

    .line 22
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v6

    const-string v7, "footerList"

    if-nez p1, :cond_5

    .line 23
    iget-object v4, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto/16 :goto_4

    .line 24
    :cond_5
    iget-object v8, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 25
    iget-object v8, v4, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T>"

    if-nez v8, :cond_8

    .line 26
    new-instance v8, Le/a/b/a/b/j/c;

    new-array v10, v3, [Ljava/lang/String;

    .line 27
    invoke-interface {p1, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 28
    iget-object v9, v4, Le/a/b/a/a/a/d;->i:Ls1/g;

    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/f/a/i;

    .line 29
    new-instance v11, Le/a/b/a/a/a/e;

    invoke-direct {v11, v4}, Le/a/b/a/a/a/e;-><init>(Le/a/b/a/a/a/d;)V

    sget-object v12, Le/a/b/a/a/a/f;->b:Le/a/b/a/a/a/f;

    invoke-direct {v8, v10, v9, v11, v12}, Le/a/b/a/b/j/c;-><init>([Ljava/lang/String;Le/f/a/i;Ls1/z/b/l;Ls1/z/b/l;)V

    iput-object v8, v4, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    .line 30
    iget-object v8, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v8

    instance-of v9, v8, Ln3/b0/a/x;

    if-nez v9, :cond_6

    move-object v8, v2

    :cond_6
    check-cast v8, Ln3/b0/a/x;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v3}, Ln3/b0/a/x;->setSupportsChangeAnimations(Z)V

    .line 31
    :cond_7
    iget-object v8, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 32
    iget-object v8, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v4, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 33
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->QA()Le/a/b/a/a/c/c;

    move-result-object v4

    iget-object v6, v6, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6}, Ln3/b0/a/y;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_4

    :cond_8
    new-array v4, v3, [Ljava/lang/String;

    .line 34
    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 35
    invoke-virtual {v8, v4}, Le/a/b/a/b/j/c;->g([Ljava/lang/String;)V

    .line 36
    :goto_4
    iget-object v4, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    const-string v6, "binding.imageList"

    if-nez p1, :cond_9

    .line 37
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v4

    iget-object v4, v4, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto/16 :goto_5

    .line 38
    :cond_9
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v7

    iget-object v7, v7, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 39
    iget-object v6, v4, Le/a/b/a/a/a/d;->f:Le/a/b/a/a/a/k0/a;

    if-nez v6, :cond_a

    .line 40
    new-instance v5, Le/a/b/a/a/a/k0/a;

    .line 41
    iget-object v6, v4, Le/a/b/a/a/a/d;->i:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/f/a/i;

    .line 42
    invoke-direct {v5, p1, v6}, Le/a/b/a/a/a/k0/a;-><init>(Ljava/util/List;Le/f/a/i;)V

    iput-object v5, v4, Le/a/b/a/a/a/d;->f:Le/a/b/a/a/a/k0/a;

    .line 43
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v5

    .line 44
    iget-object v6, v5, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v7, "imageList"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 45
    iget-object v6, v5, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v4, Le/a/b/a/a/a/d;->f:Le/a/b/a/a/a/k0/a;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 46
    invoke-virtual {v4}, Le/a/b/a/a/a/d;->SA()Ln3/b0/a/v;

    move-result-object v6

    iget-object v8, v5, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v8}, Ln3/b0/a/y;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 47
    iget-object v6, v5, Le/a/b/m/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Le/a/b/a/a/a/d;->SA()Ln3/b0/a/v;

    move-result-object v7

    new-instance v8, Le/a/b/a/a/a/g;

    invoke-direct {v8, v5, v4}, Le/a/b/a/a/a/g;-><init>(Le/a/b/m/n0;Le/a/b/a/a/a/d;)V

    const-string v4, "$this$setOnSnapPositionChange"

    .line 48
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "snapHelper"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onSnapPositionChange"

    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v4, Le/a/b/a/a/c/b;

    invoke-direct {v4, v6, v7, v8}, Le/a/b/a/a/c/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ln3/b0/a/y;Ls1/z/b/l;)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    goto :goto_5

    :cond_a
    const-string v4, "newImageUrls"

    .line 50
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v4, Le/a/b/a/a/a/k0/b;

    iget-object v7, v6, Le/a/b/a/a/a/k0/a;->a:Ljava/util/List;

    invoke-direct {v4, v7, p1}, Le/a/b/a/a/a/k0/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 52
    invoke-static {v4, v5}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v4

    const-string v5, "DiffUtil.calculateDiff(B\u2026imageUrls, newImageUrls))"

    .line 53
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, v6, Le/a/b/a/a/a/k0/a;->a:Ljava/util/List;

    .line 55
    new-instance v5, Ln3/b0/a/b;

    invoke-direct {v5, v6}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v4, v5}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    .line 56
    :goto_5
    iget-object v4, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_selected_index"

    if-eqz v4, :cond_b

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6

    :cond_b
    move-object v4, v2

    :goto_6
    const/4 v6, -0x1

    if-eqz v4, :cond_c

    .line 57
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_c

    .line 58
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Le/a/b/a/a/a/d;->TA(I)V

    .line 60
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    if-eqz p1, :cond_d

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    :cond_d
    if-eqz v0, :cond_e

    .line 62
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 63
    iget-object p1, p1, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    if-eqz p1, :cond_e

    .line 64
    iget-object p1, p1, Le/a/b/a/b/j/c;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    .line 65
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p1, v1, :cond_e

    move v3, p1

    .line 66
    :cond_e
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 67
    iget-object v0, p1, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    if-eqz v0, :cond_f

    .line 68
    iget-object v2, v0, Le/a/b/a/b/j/c;->a:Ljava/lang/Integer;

    .line 69
    :cond_f
    invoke-virtual {p1, v3}, Le/a/b/a/a/a/d;->TA(I)V

    if-nez v2, :cond_10

    goto :goto_7

    .line 70
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_11

    .line 71
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 72
    iget-object p1, p1, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    if-eqz p1, :cond_11

    .line 73
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 74
    :cond_11
    :goto_7
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 75
    invoke-virtual {p1}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v0

    .line 76
    iget-object v1, p1, Le/a/b/a/a/a/d;->g:Ljava/util/List;

    const-string v2, "addMoreInfo"

    const-string v3, "addBkg"

    const-string v4, "addImage"

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    iget-object p1, p1, Le/a/b/a/a/a/d;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_12

    .line 78
    iget-object p1, v0, Le/a/b/m/n0;->b:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 79
    iget-object p1, v0, Le/a/b/m/n0;->a:Landroid/view/View;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 80
    iget-object p1, v0, Le/a/b/m/n0;->c:Landroid/widget/TextView;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    goto/16 :goto_9

    .line 81
    :cond_12
    iget-object p1, v0, Le/a/b/m/n0;->b:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 82
    iget-object p1, v0, Le/a/b/m/n0;->a:Landroid/view/View;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 83
    iget-object p1, v0, Le/a/b/m/n0;->c:Landroid/widget/TextView;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_9

    .line 84
    :cond_13
    instance-of v0, p1, Le/a/b/l/q$a;

    if-eqz v0, :cond_16

    .line 85
    iget-object v0, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 86
    sget-object v4, Le/a/b/a/a/a/d;->m:[Ls1/a/l;

    .line 87
    invoke-virtual {v0}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v0

    .line 88
    iget-object v0, v0, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "Error: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    iget-object v4, p1, Le/a/b/l/q;->b:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object v2, v4

    goto :goto_8

    .line 91
    :cond_14
    check-cast p1, Le/a/b/l/q$a;

    .line 92
    iget-object p1, p1, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_15

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v2, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_15
    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 94
    :cond_16
    instance-of p1, p1, Le/a/b/l/q$b;

    if-eqz p1, :cond_17

    .line 95
    iget-object p1, p0, Le/a/b/a/a/a/h;->a:Le/a/b/a/a/a/d;

    .line 96
    sget-object v0, Le/a/b/a/a/a/d;->m:[Ls1/a/l;

    .line 97
    invoke-virtual {p1}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object p1

    .line 98
    iget-object p1, p1, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    :cond_17
    :goto_9
    return-void
.end method
