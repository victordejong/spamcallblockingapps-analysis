.class public final Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;
.super Le/a/k/a/e/c;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/e/e;
.implements Le/a/k/a/e/l/a$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008/\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\nR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;",
        "Ln3/b/a/h;",
        "Le/a/k/a/e/e;",
        "Le/a/k/a/e/l/a$a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "Landroid/view/MenuItem;",
        "menuItem",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "",
        "Le/a/k/a/e/a;",
        "hiddenContactItems",
        "j",
        "(Ljava/util/List;)V",
        "hiddenContactItem",
        "N7",
        "(Le/a/k/a/e/a;)V",
        "p9",
        "visible",
        "n4",
        "(Z)V",
        "onDestroy",
        "Le/a/k/a/e/d;",
        "d",
        "Le/a/k/a/e/d;",
        "getPresenter",
        "()Le/a/k/a/e/d;",
        "setPresenter",
        "(Le/a/k/a/e/d;)V",
        "presenter",
        "Le/a/k/a/e/l/b;",
        "f",
        "Ls1/g;",
        "pa",
        "()Le/a/k/a/e/l/b;",
        "adapter",
        "Le/a/k/m/a;",
        "e",
        "Le/a/k/m/a;",
        "binding",
        "<init>",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/k/a/e/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/k/m/a;

.field public final f:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/k/a/e/c;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity$a;->b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->f:Ls1/g;

    return-void
.end method


# virtual methods
.method public N7(Le/a/k/a/e/a;)V
    .locals 9

    const-string v0, "hiddenContactItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->d:Le/a/k/a/e/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/k/a/e/i;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Le/a/k/a/e/h;

    invoke-direct {v6, v3, p1, v2}, Le/a/k/a/e/h;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public j(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/k/a/e/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hiddenContactItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->pa()Le/a/k/a/e/l/b;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, v1, Le/a/k/a/e/l/b;->a:Ljava/util/List;

    .line 4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public n4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->e:Le/a/k/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/k/m/a;->d:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.hiddenGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget v1, Lcom/truecaller/videocallerid/R$layout;->activity_manage_incoming_video_settings:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget v1, Lcom/truecaller/videocallerid/R$id;->hiddenContactList:I

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_6

    .line 7
    sget v1, Lcom/truecaller/videocallerid/R$id;->hiddenContactListCaption:I

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 9
    sget v1, Lcom/truecaller/videocallerid/R$id;->hiddenGroup:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/constraintlayout/widget/Group;

    if-eqz v9, :cond_6

    .line 11
    sget v1, Lcom/truecaller/videocallerid/R$id;->manageReceiveSetting:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    if-eqz v10, :cond_6

    .line 13
    sget v1, Lcom/truecaller/videocallerid/R$id;->toolbar:I

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/appcompat/widget/Toolbar;

    if-eqz v11, :cond_6

    .line 15
    new-instance v1, Le/a/k/m/a;

    move-object v6, p1

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Le/a/k/m/a;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;Landroidx/appcompat/widget/Toolbar;)V

    const-string p1, "ActivityManageIncomingVi\u2026g.inflate(layoutInflater)"

    .line 16
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->e:Le/a/k/m/a;

    const-string p1, "binding"

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, v1, Le/a/k/m/a;->a:Landroidx/core/widget/NestedScrollView;

    .line 18
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->e:Le/a/k/m/a;

    if-eqz v1, :cond_4

    iget-object v1, v1, Le/a/k/m/a;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 20
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ln3/b/a/a;->n(Z)V

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->d:Le/a/k/a/e/d;

    if-eqz v1, :cond_3

    check-cast v1, Le/a/k/a/e/i;

    invoke-virtual {v1, p0}, Le/a/k/a/e/i;->Y0(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->e:Le/a/k/m/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, Le/a/k/m/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "binding.hiddenContactList"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->pa()Le/a/k/a/e/l/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 23
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->e:Le/a/k/m/a;

    if-eqz v1, :cond_1

    iget-object p1, v1, Le/a/k/m/a;->c:Landroid/widget/TextView;

    const-string v1, "binding.hiddenContactListCaption"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v1, Lcom/truecaller/videocallerid/R$string;->vid_hidden_contact_list_caption:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    sget v4, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 26
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->pa()Le/a/k/a/e/l/b;

    move-result-object p1

    .line 29
    iput-object p0, p1, Le/a/k/a/e/l/b;->b:Le/a/k/a/e/l/a$a;

    return-void

    .line 30
    :cond_1
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_2
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p1, "presenter"

    .line 32
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->d:Le/a/k/a/e/d;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->d:Le/a/k/a/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Le/a/k/a/e/i;

    .line 3
    iget-object v0, v2, Le/a/k/a/e/i;->e:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v5, Le/a/k/a/e/f;

    invoke-direct {v5, v2, v1}, Le/a/k/a/e/f;-><init>(Le/a/k/a/e/i;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void

    :cond_1
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public p9(Le/a/k/a/e/a;)V
    .locals 9

    const-string v0, "hiddenContactItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->d:Le/a/k/a/e/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/k/a/e/i;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Le/a/k/a/e/g;

    invoke-direct {v6, v3, p1, v2}, Le/a/k/a/e/g;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final pa()Le/a/k/a/e/l/b;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/a/e/l/b;

    return-object v0
.end method
