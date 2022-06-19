.class public final Le/a/a/c/b/m;
.super Le/m/a/g/e/e;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/b/o;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public d:Le/a/a/c/b/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/a/d/a/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/a/d/a/h;

.field public final g:Lcom/truecaller/messaging/data/types/Conversation;

.field public final h:I

.field public final i:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;ILs1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "I",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object p1, p0, Le/a/a/c/b/m;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iput p2, p0, Le/a/a/c/b/m;->h:I

    iput-object p3, p0, Le/a/a/c/b/m;->i:Ls1/z/b/l;

    const p1, 0x7f0a0e8a

    .line 2
    invoke-static {p0, p1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/b/m;->a:Ls1/g;

    const p1, 0x7f0a026f

    .line 3
    invoke-static {p0, p1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/b/m;->b:Ls1/g;

    const p1, 0x7f0a130f

    .line 4
    invoke-static {p0, p1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/b/m;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public final OA()Le/a/a/c/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/b/m;->d:Le/a/a/c/b/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public gh(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/b/m;->e:Le/a/a/d/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    iput-object p1, v0, Le/a/a/d/a/e;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget-object p1, p0, Le/a/a/c/b/m;->f:Le/a/a/d/a/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p1, "groupMembersAdapter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "groupMembersPresenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public l5(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/b/m;->i:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const v0, 0x7f13021c

    .line 2
    invoke-virtual {p0, p1, v0}, Ln3/r/a/k;->setStyle(II)V

    .line 3
    new-instance p1, Le/a/a/c/b/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/c/b/m;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget v2, p0, Le/a/a/c/b/m;->h:I

    invoke-direct {p1, v0, v1, v2}, Le/a/a/c/b/f;-><init>(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Le/a/a/c/b/f;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    const-class v1, Le/a/j2;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    new-instance v1, Le/a/a/c/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/a/c/b/c;-><init>(Le/a/a/c/b/f;Le/a/j2;Le/a/a/c/b/c$a;)V

    .line 9
    iget-object p1, v1, Le/a/a/c/b/c;->H:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/b/n;

    .line 10
    iput-object p1, p0, Le/a/a/c/b/m;->d:Le/a/a/c/b/n;

    .line 11
    iget-object p1, v1, Le/a/a/c/b/c;->J:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/d/a/e;

    .line 12
    iput-object p1, p0, Le/a/a/c/b/m;->e:Le/a/a/d/a/e;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0093

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onDestroyView()V

    .line 2
    iget-object v0, p0, Le/a/a/c/b/m;->d:Le/a/a/c/b/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/m/a/g/e/d;

    invoke-virtual {p1}, Le/m/a/g/e/d;->e()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "(dialog as BottomSheetDialog).behavior"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 3
    iget-object p1, p0, Le/a/a/c/b/m;->d:Le/a/a/c/b/n;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Le/a/a/d/a/h;

    iget-object v0, p0, Le/a/a/c/b/m;->e:Le/a/a/d/a/e;

    if-eqz v0, :cond_1

    invoke-direct {p1, v0}, Le/a/a/d/a/h;-><init>(Le/a/a/d/a/e;)V

    iput-object p1, p0, Le/a/a/c/b/m;->f:Le/a/a/d/a/h;

    .line 5
    new-instance v0, Le/a/a/c/b/m$a;

    invoke-direct {v0, p0}, Le/a/a/c/b/m$a;-><init>(Le/a/a/c/b/m;)V

    .line 6
    iput-object v0, p1, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    .line 7
    iget-object p1, p0, Le/a/a/c/b/m;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvMembers"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/b/m;->f:Le/a/a/d/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 9
    iget-object p1, p0, Le/a/a/c/b/m;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ui/view/TintedImageView;

    .line 10
    new-instance p2, Le/a/a/c/b/m$b;

    invoke-direct {p2, p0}, Le/a/a/c/b/m$b;-><init>(Le/a/a/c/b/m;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Le/a/a/c/b/m;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 12
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 13
    iget-object p1, p0, Le/a/a/c/b/m;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p2, "txtSearch"

    .line 14
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/a/c/b/m$c;

    invoke-direct {p2, p0}, Le/a/a/c/b/m$c;-><init>(Le/a/a/c/b/m;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    return-void

    :cond_0
    const-string p1, "groupMembersAdapter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "groupMembersPresenter"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "presenter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public s()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
