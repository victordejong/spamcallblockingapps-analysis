.class public Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/customblock/picker/h;


# instance fields
.field l:Lcom/hiya/stingray/ui/customblock/picker/g;

.field m:Lcom/hiya/stingray/manager/e1;

.field n:Lcom/hiya/stingray/ui/customblock/e;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method private synthetic f1(Lcom/hiya/stingray/t/k0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "block_from_contacts"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "saved_contact"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "add_to_block_list"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    sget-object v1, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CONTACTS:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_from_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_contact_name_item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->b()Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "block_contact_phone_list_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const/16 v1, 0x2329

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic h1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get contact click event"

    .line 1
    invoke-static {p0, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public D0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/k0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->n:Lcom/hiya/stingray/ui/customblock/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/customblock/e;->n(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->n:Lcom/hiya/stingray/ui/customblock/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic g1(Lcom/hiya/stingray/t/k0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->f1(Lcom/hiya/stingray/t/k0;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->n:Lcom/hiya/stingray/ui/customblock/e;

    sget-object v0, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CONTACTS:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/customblock/e;->k(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->n:Lcom/hiya/stingray/ui/customblock/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/customblock/e;->c()Lcom/hiya/stingray/ui/common/n;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-static {v0, p1, v1}, Lcom/hiya/stingray/util/f0;->b(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;I)Lcom/hiya/stingray/ui/common/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->n:Lcom/hiya/stingray/ui/customblock/e;

    .line 10
    invoke-virtual {v0}, Lcom/hiya/stingray/ui/customblock/e;->e()Li/c/b0/b/v;

    move-result-object v0

    .line 11
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 12
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/customblock/picker/a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/picker/a;-><init>(Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;)V

    sget-object v2, Lcom/hiya/stingray/ui/customblock/picker/b;->f:Lcom/hiya/stingray/ui/customblock/picker/b;

    .line 13
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->b(Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->l:Lcom/hiya/stingray/ui/customblock/picker/g;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->l:Lcom/hiya/stingray/ui/customblock/picker/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/customblock/picker/g;->t()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->b(Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c008f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;->m:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "add_to_block_list"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "from_contacts"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
