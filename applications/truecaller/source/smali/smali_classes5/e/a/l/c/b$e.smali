.class public final Le/a/l/c/b$e;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/ViewGroup;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/c/b$e;->b:I

    iput-object p2, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/l/c/b$e;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "parent"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/l/c/a/v2;

    const v3, 0x7f0d0366

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/v2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 4
    :pswitch_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/a/l/c/a/c3;

    const v3, 0x7f0d0369

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/c3;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 7
    :pswitch_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 8
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Le/a/l/c/a/c;

    const v3, 0x7f0d035c

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/c;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 10
    :pswitch_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Le/a/l/c/a/h3;

    const v3, 0x7f0d036a

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/h3;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 13
    :pswitch_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Le/a/l/c/a/j0;

    const v3, 0x7f0d0360

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/j0;-><init>(Landroid/view/View;Ln3/v/b0;)V

    return-object v0

    .line 16
    :pswitch_5
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Le/a/l/c/a/f0;

    const v3, 0x7f0d035e

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    iget-object v2, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v2, Le/a/l/c/b;

    invoke-direct {v0, p1, v1, v2}, Le/a/l/c/a/f0;-><init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V

    return-object v0

    .line 19
    :pswitch_6
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Le/a/l/c/a/l2;

    const v3, 0x7f0d0364

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    iget-object v2, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v2, Le/a/l/c/b;

    invoke-direct {v0, p1, v1, v2}, Le/a/l/c/a/l2;-><init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V

    return-object v0

    .line 22
    :pswitch_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Le/a/l/c/a/b;

    const v3, 0x7f0d035f

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    iget-object v2, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v2, Le/a/l/c/b;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v2}, Le/a/l/c/a/b;-><init>(Landroid/view/View;Le/a/o2/m;Landroidx/fragment/app/FragmentManager;)V

    return-object v0

    .line 25
    :pswitch_8
    check-cast p1, Landroid/view/ViewGroup;

    .line 26
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Le/a/l/c/a/l0;

    const v3, 0x7f0d0361

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/l/c/b$e;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/b;

    invoke-static {v1}, Le/a/l/c/b;->QA(Le/a/l/c/b;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/l/c/a/l0;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
