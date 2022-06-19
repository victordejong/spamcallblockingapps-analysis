.class public final Lcom/hiya/stingray/ui/CallPickerDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/calllog/v$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/CallPickerDialog$a;
    }
.end annotation


# static fields
.field public static final C:Lcom/hiya/stingray/ui/CallPickerDialog$a;


# instance fields
.field private A:Lcom/hiya/stingray/t/n0;

.field private B:Ljava/util/HashMap;

.field public callPickerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field

.field public z:Lcom/hiya/stingray/ui/calllog/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/CallPickerDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/CallPickerDialog$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/CallPickerDialog;->C:Lcom/hiya/stingray/ui/CallPickerDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method public static final u1(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/CallPickerDialog;->C:Lcom/hiya/stingray/ui/CallPickerDialog$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/hiya/stingray/ui/CallPickerDialog$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->c1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->z(Lcom/hiya/stingray/ui/CallPickerDialog;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "call_picker_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/n0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hiya/stingray/t/n0;->b()Lcom/hiya/stingray/t/n0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string v0, "IdentityData.empty().build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->A:Lcom/hiya/stingray/t/n0;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->z:Lcom/hiya/stingray/ui/calllog/v;

    const-string v1, "callPickerAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const-string v3, "identityData"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/calllog/v;->k(Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->z:Lcom/hiya/stingray/ui/calllog/v;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->A:Lcom/hiya/stingray/t/n0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    sget-object v3, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/calllog/v;->j(Z)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->z:Lcom/hiya/stingray/ui/calllog/v;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/calllog/v;->i(Lcom/hiya/stingray/ui/calllog/v$b;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->z:Lcom/hiya/stingray/ui/calllog/v;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "analytics_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hiya/stingray/util/g0/c;

    :cond_2
    invoke-virtual {p1, v2}, Lcom/hiya/stingray/ui/calllog/v;->h(Lcom/hiya/stingray/util/g0/c;)V

    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_7
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c008f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->callPickerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "callPickerRecyclerView"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->callPickerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->z:Lcom/hiya/stingray/ui/calllog/v;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->callPickerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    new-instance v2, Lcom/hiya/stingray/ui/common/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->callPickerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {p3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "callPickerAdapter"

    .line 8
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {p3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    invoke-static {p3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/g;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/CallPickerDialog;->t1()V

    return-void
.end method

.method public t1()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/CallPickerDialog;->B:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
