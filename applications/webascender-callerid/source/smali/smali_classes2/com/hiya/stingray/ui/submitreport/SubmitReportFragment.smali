.class public Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/submitreport/j$b;


# instance fields
.field categoryNameTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032e
    .end annotation
.end field

.field comments:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field o:Lcom/hiya/stingray/ui/submitreport/j;

.field p:Lcom/hiya/stingray/manager/e1;

.field submitReport:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c7
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090409
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method static synthetic f1(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)Lcom/hiya/stingray/t/c1;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->g1()Lcom/hiya/stingray/t/c1;

    move-result-object p0

    return-object p0
.end method

.method private g1()Lcom/hiya/stingray/t/c1;
    .locals 4

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->k()Ljava/util/Locale;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->n:Ljava/lang/String;

    iget v2, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->m:I

    iget-object v3, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/hiya/stingray/util/p;->j(Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)Lcom/hiya/stingray/t/c1;

    move-result-object v0

    return-object v0
.end method

.method public static h1(Ljava/lang/String;Lcom/hiya/stingray/t/b1;)Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SUBMIT_REPORT_FRAGMENT_PHONE"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SUBMIT_REPORT_FRAGMENT_CATEGORY_CAT"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private i1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f110422

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/hiya/stingray/util/e0;->r(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;-><init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public e0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->l(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "SUBMIT_REPORT_FRAGMENT_CATEGORY_CAT"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/b1;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/hiya/stingray/t/b1;->b()I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->m:I

    const-string v0, "SUBMIT_REPORT_FRAGMENT_PHONE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c008d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->o:Lcom/hiya/stingray/ui/submitreport/j;

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/submitreport/j;->C(Lcom/hiya/stingray/ui/submitreport/j$b;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->i1()V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->submitReport:Landroid/widget/Button;

    new-instance p3, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;-><init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->l:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 7
    iget-object p3, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->categoryNameTv:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->p:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "report_caller"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "add_comment"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->x(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
