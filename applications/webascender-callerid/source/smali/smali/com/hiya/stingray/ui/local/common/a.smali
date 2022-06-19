.class public final Lcom/hiya/stingray/ui/local/common/a;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/common/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/common/a$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/hiya/stingray/ui/local/common/a$a;


# instance fields
.field private l:Lcom/hiya/stingray/t/i0;

.field public m:Lcom/hiya/stingray/ui/local/common/d;

.field private n:Lcom/hiya/stingray/ui/local/common/c;

.field private o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/local/common/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/common/a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/local/common/a;->p:Lcom/hiya/stingray/ui/local/common/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method


# virtual methods
.method public N(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "directories"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    const-string v1, "context!!"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/common/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    const-string v8, "directoryAdapter"

    if-eqz v3, :cond_2

    sget v1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/common/a;->f1(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v4, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hiya/stingray/ui/local/common/f;->b(Lcom/hiya/stingray/ui/local/common/e;Landroid/content/Context;Lcom/hiya/stingray/ui/local/common/c;Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/common/n$c;ILjava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/common/c;->h(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {v8}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-static {v8}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    invoke-static {v8}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/a;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/a;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/common/a;->o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/a;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/a;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final g1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/common/a;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/common/a;->l:Lcom/hiya/stingray/t/i0;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hiya/stingray/t/i0;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "category"

    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/a;->m:Lcom/hiya/stingray/ui/local/common/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/a;->l:Lcom/hiya/stingray/t/i0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hiya/stingray/t/i0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/common/d;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "category"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "directoryPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->w0(Lcom/hiya/stingray/ui/local/common/a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00b0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    const-string v0, "CATEGORY_ITEM"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Lcom/hiya/stingray/t/i0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/a;->l:Lcom/hiya/stingray/t/i0;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/common/a;->m:Lcom/hiya/stingray/ui/local/common/d;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p3, "context!!"

    invoke-static {v0, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/hiya/stingray/ui/local/common/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p3

    :cond_1
    const-string p1, "directoryPresenter"

    .line 5
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3

    .line 6
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.hiya.stingray.model.CategoryItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/a;->Z0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/a;->g1()V

    return-void
.end method
