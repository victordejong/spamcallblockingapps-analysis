.class public Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/a0;
.implements Lcom/hiya/stingray/ui/userfeedback/h;
.implements Lcom/hiya/stingray/ui/userfeedback/c;
.implements Lcom/hiya/stingray/ui/userfeedback/d;


# instance fields
.field private A:Lcom/hiya/stingray/ui/contactdetails/d0;

.field private B:Ljava/lang/Boolean;

.field appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007a
    .end annotation
.end field

.field callButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e3
    .end annotation
.end field

.field callerStatusView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090120
    .end annotation
.end field

.field headerView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field

.field l:Lcom/hiya/stingray/ui/contactdetails/x;

.field linearLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e7
    .end annotation
.end field

.field m:Lcom/hiya/stingray/ui/contactdetails/u;

.field n:Lcom/hiya/stingray/t/i1/t0;

.field o:Lcom/hiya/stingray/ui/userfeedback/g;

.field p:Lcom/hiya/stingray/ui/userfeedback/f;

.field q:Lcom/hiya/stingray/util/a0;

.field r:Lcom/hiya/stingray/ui/contactdetails/v;

.field s:Lcom/hiya/stingray/ui/login/o;

.field t:Lcom/hiya/stingray/manager/u3;

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090124
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field toolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044f
    .end annotation
.end field

.field u:Lcom/hiya/stingray/manager/u2;

.field v:Lcom/squareup/picasso/Picasso;

.field private w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

.field private x:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

.field private y:Lcom/hiya/stingray/ui/contactdetails/z;

.field private z:Lcom/hiya/stingray/t/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->B:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    return-object p0
.end method

.method static synthetic g1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    return-object p0
.end method

.method static synthetic h1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->x:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    return-object p0
.end method

.method static synthetic i1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    return-object p0
.end method

.method private synthetic j1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic l1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/x;->p()V

    return-void
.end method

.method public static n1(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CALL_LOG_ITEM"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout$e;)V

    return-void
.end method


# virtual methods
.method public F0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public H0([Lcom/hiya/stingray/ui/contactdetails/e0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->m:Lcom/hiya/stingray/ui/contactdetails/u;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/hiya/stingray/ui/contactdetails/u;->c(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;[Lcom/hiya/stingray/ui/contactdetails/e0;Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->m:Lcom/hiya/stingray/ui/contactdetails/u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public O(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->a(Z)V

    return-void
.end method

.method public Q(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->x:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->r(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->B:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public R(ZLcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->e(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->f(Z)V

    return-void
.end method

.method public R0(Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->x(Lcom/hiya/stingray/ui/contactdetails/d0;)V

    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->o:Lcom/hiya/stingray/ui/userfeedback/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/userfeedback/g;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public V(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->A(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->a(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    return-void
.end method

.method public V0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->o:Lcom/hiya/stingray/ui/userfeedback/g;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/userfeedback/g;->x(Ljava/lang/String;)V

    return-void
.end method

.method public X0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0, p1, v1, v2}, Lcom/hiya/stingray/ui/contactdetails/z;->F(ZLandroidx/appcompat/widget/Toolbar;Lcom/hiya/stingray/t/d0;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->blockButton:Landroid/widget/TextView;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110405

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->Y(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    return-void
.end method

.method public synthetic k1()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->j1()V

    return-void
.end method

.method public synthetic m1(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public o0(Lcom/hiya/stingray/ui/userfeedback/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->p:Lcom/hiya/stingray/ui/userfeedback/f;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0, p1, v1, p0}, Lcom/hiya/stingray/ui/userfeedback/f;->a(Lcom/hiya/stingray/ui/userfeedback/a;Lcom/hiya/stingray/t/d0;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/hiya/stingray/ui/contactdetails/z;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    iget-object v4, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    iget-object v5, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    iget-object v6, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->q:Lcom/hiya/stingray/util/a0;

    iget-object v7, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->u:Lcom/hiya/stingray/manager/u2;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/ui/contactdetails/z;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/ui/contactdetails/v;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/u2;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/z;->E(Landroidx/appcompat/widget/Toolbar;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/a;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/z;->B(Lcom/hiya/stingray/ui/contactdetails/z$b;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/contactdetails/z;->z(Lcom/hiya/stingray/ui/userfeedback/c;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->o1()V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2}, Lcom/hiya/stingray/ui/contactdetails/z;->y(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/LinearLayout;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/contactdetails/x;->R(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-class v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/e0;->d(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const p1, 0x7f090305

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f090124

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f090123

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0900e3

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f090120

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->o(Ljava/util/List;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/a;->Y(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALL_LOG_ITEM"

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    :goto_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing CallLogItem."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callerStatusView:Landroid/view/ViewGroup;

    invoke-direct {p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->headerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->t:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->v:Lcom/squareup/picasso/Picasso;

    invoke-direct {p2, p3, v1, v2}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;-><init>(Landroid/view/View;Ljava/lang/Boolean;Lcom/squareup/picasso/Picasso;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->x:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->m:Lcom/hiya/stingray/ui/contactdetails/u;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p2, p3}, Lcom/hiya/stingray/ui/contactdetails/x;->x(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 9
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/contactdetails/x;->N()V

    .line 10
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->o:Lcom/hiya/stingray/ui/userfeedback/g;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, v0, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->Q(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V

    .line 12
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p2, v0, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->e(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->w:Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;

    iget-object p2, p2, Lcom/hiya/stingray/ui/contactdetails/ContactDetailCallerStatusView;->reportButton:Landroid/widget/TextView;

    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->s:Lcom/hiya/stingray/ui/login/o;

    new-instance v5, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

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
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/x;->p()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/v;->u(Lcom/hiya/stingray/t/d0;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->y:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/z;->u(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->B:Ljava/lang/Boolean;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->u:Lcom/hiya/stingray/manager/u2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/manager/u2$b;->SPAM_REPORT:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/u2;->k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->A:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eqz v1, :cond_0

    const-string v1, "CALL_LOG_ITEM"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public q(Lcom/hiya/stingray/t/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    return-void
.end method

.method public s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->z:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->u1(Ljava/lang/String;Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/b;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/common/g;->s1(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
