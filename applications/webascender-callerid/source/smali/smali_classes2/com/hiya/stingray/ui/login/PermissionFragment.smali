.class public Lcom/hiya/stingray/ui/login/PermissionFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field private l:Z

.field m:Lcom/hiya/stingray/ui/login/o;

.field n:Lcom/hiya/stingray/manager/x3;

.field o:Lcom/hiya/stingray/manager/e1;

.field startBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->l:Z

    return-void
.end method

.method private e0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "permission_accepted"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic f1(Lcom/hiya/stingray/ui/login/PermissionFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/PermissionFragment;->l1(Z)V

    return-void
.end method

.method static synthetic g1(Lcom/hiya/stingray/ui/login/PermissionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/PermissionFragment;->e0()V

    return-void
.end method

.method static synthetic h1(Lcom/hiya/stingray/ui/login/PermissionFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->l:Z

    return p1
.end method

.method public static i1(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/login/PermissionFragment;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j1(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->o:Lcom/hiya/stingray/manager/e1;

    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "contacts_permission_explained_ok"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "contacts_permission_explained"

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "onboard_action"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->m:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->m:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1773

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/PermissionFragment;->e0()V

    :cond_0
    return-void
.end method

.method private l1(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "required_permission_allow"

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    goto :goto_0

    :cond_0
    const-string p1, "required_permission_deny"

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->o:Lcom/hiya/stingray/manager/e1;

    const-string v1, "contacts_permission_explained"

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method


# virtual methods
.method public synthetic k1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/PermissionFragment;->j1(Landroid/view/View;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->startBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hiya/stingray/ui/login/g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/login/g;-><init>(Lcom/hiya/stingray/ui/login/PermissionFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->s(Lcom/hiya/stingray/ui/login/PermissionFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->m:Lcom/hiya/stingray/ui/login/o;

    new-instance v5, Lcom/hiya/stingray/ui/login/PermissionFragment$a;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/login/PermissionFragment$a;-><init>(Lcom/hiya/stingray/ui/login/PermissionFragment;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->o:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "contacts_permission_explained"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 5
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f110263

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/login/PermissionFragment;->m:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
